--class define--------------------------------------------------------
local C_disUI = require("src.app.base.ui.disUI")
local c_main_battle = class("c_main_battle", C_disUI)


--ui create------------------------------------------
function c_main_battle:ctor(params_)
    c_main_battle.super.ctor(self, params_)
    self.className = "main_battle"
    self.moduleName = "three"
    self.trailCount = 0
    -- 旋转相关  -------------------------------------------------------
    --目标旋转速度
    self.targetRotateSpeed = 0
    --目标旋转角度
    self.targetR = 0
    --目标透视角度
    self.targetScaleY = 1
    --还差多少就认为他们已经相等了
    self.speedEqual= 0.01
    self.rEqual = 1
    self.scaleYEqual = 0.05
    --缓动系数
    self.xs = 0.3
    --当前回合数
    self.roundCount = 0

    -- 正弦型
    --基础半径 baseR ,上下偏移 bufferR
    -- self.baseR = 130
    -- self.bufferR = 20
    --    基础速度 baseSpeed ,上下便 bufferSpeed
    -- self.baseSpeed = 1.2
    -- self.bufferSpeed = 0.4
    --    当前正弦参数变化,采用的角度
    -- self.currentBufferDeg = 0
    -- self.currentBufferDegSpeed =2
    -- 衰减型
    self.baseR = 100
    self.baseSpeed = 0.1
    self.bufferR = 0.5
    self.bufferSpeed = 0.01
    self.addRPerBlock = 1 --    每消除一个Block ，增加的半径
    self.addSpeedPerBlock = 0.03  --    每消除一个Block ，增加的角度旋转速度
    --最大半径，最大速度
    self.targetRMax = 150
    self.targetRotateSpeedMax = 2

    self.targetRotateSpeed = self.baseSpeed
    self.targetR = self.baseR
    self.blockAddSpeed = self.targetRotateSpeed
    self.blockAddR = self.targetR
    
    -- 金币相关  -------------------------------------------------------
    self.coinList = {}
    -- 金币的范围
    self.stageBeginX = -320
    self.stageBeginY= 0
    self.stageWidth = 640
    self.stageHeight = 400

end
--init data and place------------------------------------------
function c_main_battle:init(initDict_)
    c_main_battle.super.init(self, initDict_)
    self.main = self:getUiParent()
    local _specialDict = {} --自定义数据初始化子UI
    local _avoidInitDict = {} --避免在这里进行初始化的UI名称做KEY的字典。
    --设置类型
    for i=1,11 do
        local _blockCount = self["blockCount"..tostring(i)]
        --确定类型
        _blockCount.type = i
        --确定中心点
        _blockCount.targetDisplay = self.fazhen
    end

    self.fazhen.targetRotateSpeedMax = self.targetRotateSpeedMax

    self:initSubUIs(_specialDict, _avoidInitDict)
end

function c_main_battle:getBlockCount(type_,special_,blockArr_)
    local _blockCount =  self["blockCount"..tostring(type_)]
    --记录当前创建的关卡ID
    local _currentLevelID = self.main.currentLevelID
    local _blockNum = #blockArr_
    local function _blockGetCallBack()
        if _currentLevelID ~= self.main.currentLevelID then
            --不是同一关就返回
            return
        end
        --TODO 更新当前Block个数
        --TODO 跳金币
        --TODO 当前回合数内算连击
        --变更当前旋转速度+角度
        if special_ == "s" then--特殊 多加一些
            self.blockAddR = self.blockAddR + self.addRPerBlock * 3
            self.blockAddSpeed = self.blockAddSpeed + self.addSpeedPerBlock * 3
        elseif special_ == "n" then--普通
            self.blockAddR = self.blockAddR + self.addRPerBlock
            self.blockAddSpeed = self.blockAddSpeed + self.addSpeedPerBlock
        end

        local _currentLeveLRoundMax = tonumber(self.main.currentLevelConfig.roundMax)
        --限制最大转速，半径
        if self.blockAddR > self.targetRMax then
            self.blockAddR = self.targetRMax
        end
        if self.blockAddSpeed > self.targetRotateSpeedMax then
            self.blockAddSpeed = self.targetRotateSpeedMax
        end
        if self:isGetBlockEnd() then--如果，其他的blockCount 也获取完了。
            if self:isBlockCountConditionFix() then --每一个的条件也满足了
                self.main:gameSuccess() -- 完成了所有条件
            else
                self.main:battleGetBlockEnd() -- 通知 main. battle已经获取了所有的block
            end
        end
    end
    for i=1 , _blockNum do
        --轨迹 自增
        self.trailCount = self.trailCount + 1
        _blockCount:getBlock(blockArr_[i],self.trailCount,_blockGetCallBack)
    end
end

-- 判断获取Block的过程是否结束
function c_main_battle:isGetBlockEnd()
    -- 判断当前关卡的BlockCount
    local _randomMax = tonumber(self.main.currentLevelConfig.randomMax)
    for i=1,_randomMax do
        if self["blockCount"..tostring(i)]:isGetBlockEnd()==false then
            return false
        end
    end
    return true
end

-- 判断获取Block的过程是否结束
function c_main_battle:isBlockCountConditionFix()
    -- 根据当前管卡可以随机的最大数量。来判断是否所有的条件都满足了
    local _randomMax = tonumber(self.main.currentLevelConfig.randomMax)
    for i=1,_randomMax do
        if self["blockCount"..tostring(i)]:isBlockCountConditionFix()==false then
            return false
        end
    end
    return true
end

--roundCount 刷新文字显示
function c_main_battle:addRoundCount()
    self.roundCount = self.roundCount +1
    local _currentLeveLRoundMax = tonumber(self.main.currentLevelConfig.roundMax)
    local _currentRoundCount = 0
    -- 最开始 初始化 的时候是-2 ，所以，显示的时候要判断。一下
    if self.roundCount>0 then
        _currentRoundCount = self.roundCount
    end
    self.roundTxt:setString(tostring(_currentRoundCount).."/"..tostring(_currentLeveLRoundMax))
    if self.roundCount>=_currentLeveLRoundMax then
        --回合不够用了，失败
        self.main:gameFail("round")
    end
end
-- 当前关卡几种Block
function c_main_battle:reset()
    --重置回合数 -2 的原因是
    --    这里调用一次 addRoundCount 刷新显示
    --    blocks 初始化之后，判断当前是否能消除，还会调用一次 addRoundCount
    self.roundCount = -2
    self:addRoundCount()
    -- 11 有的关有，有的关没有
    -- 10 不需要显示
    -- 颜色上限9
    for i=1,10 do
        local _currentLevelConfig = self.main.currentLevelConfig
        local _randomMax = tonumber(_currentLevelConfig.randomMax)

        local _blockCount = self["blockCount"..tostring(i)]
        --按照个数摆放位置
        if i<=_randomMax then
            local _blockCountConditionStr = _currentLevelConfig["type_"..tostring(i).."_max"]
            if _blockCountConditionStr then
                local _blockCountCondition = tonumber(_blockCountConditionStr)
                _blockCount:resetBlockCountCondition(_blockCountCondition)
            else
                _blockCount:resetBlockCountCondition(0)
            end

            --重置 属性 显示
            _blockCount:setVisible(true)
            _blockCount:reset(tonumber(i-1)*360/_randomMax)
        else
            -- 隐藏
            _blockCount:setVisible(false)
        end
    end
    self.fazhen:reset()
    self.bg:reset()
    --Cure路径计数
    self.trailCount = 0

    self.targetRotateSpeed = self.baseSpeed
    self.targetR = self.baseR
    self.blockAddSpeed = self.targetRotateSpeed
    self.blockAddR = self.targetR
end
--ui stateChange-------------------------------------
function c_main_battle:updateF(type_)
    --Logic here,then change state.
    c_main_battle.super.updateF(self,type_)

    if type_ == 914 then
        -- 正弦型，放缩
        -- self.currentBufferDeg = self.currentBufferDeg + self.currentBufferDegSpeed
        -- self.targetR = self.baseR + self.bufferR*math.sin(math.rad(self.currentBufferDeg))
        -- self.targetRotateSpeed = self.baseSpeed + self.bufferSpeed*math.sin(math.rad(self.currentBufferDeg+180))
        -- 速度衰减
        if self.blockAddSpeed <self.baseSpeed then
            self.blockAddSpeed = self.baseSpeed
        elseif self.blockAddSpeed>self.baseSpeed then
            self.blockAddSpeed = self.blockAddSpeed - self.bufferSpeed
        end
        if self.blockAddR <self.baseR then
            self.blockAddR = self.baseR
        elseif self.blockAddR>self.baseR then
            self.blockAddR = self.blockAddR - self.bufferR
        end

        self.targetRotateSpeed = self.targetRotateSpeed + (self.blockAddSpeed - self.targetRotateSpeed)*self.xs
        self.targetR = self.targetR + (self.blockAddR - self.targetR)*self.xs

        --透视压缩
        self.targetScaleY = 0.5
        
        --确定 法阵 旋转角度
        self:pursue(self.fazhen)
        self:pursue(self.bg)
        self.fazhen:resetRotationPos()
        self.bg:resetRotationPos()
        local _randomMax = tonumber(self.main.currentLevelConfig.randomMax)
        --关卡中有的显示
        for i=1,_randomMax do
            local _blockCount = self["blockCount"..tostring(i)]

            self:pursue(_blockCount)

            _blockCount:resetRotationPos()
        end
    end
end

function c_main_battle:pursue( target_ )
        target_.targetRotateSpeed = self.targetRotateSpeed
        self:pursueSpeed(target_)
        target_.targetR = self.targetR
        self:pursueR(target_)
        target_.targetScaleY = self.targetScaleY
        self:pursueScaleY(target_)
end

function c_main_battle:pursueSpeed(target_)
    if target_.currentRotateSpeed == target_.targetRotateSpeed then
        return
    end
    local _disSpeed = target_.targetRotateSpeed - target_.currentRotateSpeed
    --print ("_disSpeed = "..  tostring(_disSpeed)) 
    target_.currentRotateSpeed = target_.currentRotateSpeed + _disSpeed*self.xs
    --print ("target_.currentRotateSpeed = "..  tostring(target_.currentRotateSpeed)) 
    if math.abs(target_.targetRotateSpeed - target_.currentRotateSpeed)<self.speedEqual then
        target_.currentRotateSpeed = target_.targetRotateSpeed
    end
end
function c_main_battle:pursueScaleY(target_)
    if target_.currentScaleY == target_.targetScaleY then
        return
    end
    local _disSpeed = target_.targetScaleY - target_.currentScaleY
    --print ("_disSpeed = "..  tostring(_disSpeed)) 
    target_.currentScaleY = target_.currentScaleY + _disSpeed*self.xs
    --print ("target_.currentScaleY = "..  tostring(target_.currentScaleY)) 
    if math.abs(target_.targetScaleY - target_.currentScaleY)<self.speedEqual then
        target_.currentScaleY = target_.targetScaleY
    end
end
function c_main_battle:pursueR(target_)
    if target_.currentR == target_.targetR then
        return
    end
    local _disR = target_.targetR - target_.currentR
    target_.currentR = target_.currentR + _disR*self.xs
    if math.abs(target_.targetR - target_.currentR)<self.speedEqual then
        target_.currentR = target_.targetR
    end
end

--ui stateChange-------------------------------------
function c_main_battle:stateChange(stateName_, rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main_battle.super.stateChange(self, stateName_, rightNow_)
end

--btn click call back---------------------------------------------------
function c_main_battle:btnClicked(btnName_, rollName_, listName_, itemDataDict_)
    c_main_battle.super.btnClicked(self, btnName_, rollName_, listName_, itemDataDict_)
end

function c_main_battle:onCreate()
    c_main_battle.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_battle:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_battle.super.onDestory(self)
end

return c_main_battle
