--class define--------------------------------------------------------
local C_disUI = require("src.app.base.ui.disUI")
local c_main_battle = class("c_main_battle", C_disUI)


--ui create------------------------------------------
function c_main_battle:ctor(params_)
    c_main_battle.super.ctor(self, params_)
    self.className = "main_battle"
    self.moduleName = "three"
    self.trailCount = 0
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
    self.xs = 0.2
    --基础半径 baseR ,上下偏移 bufferR
    self.baseR = 150
    self.bufferR = 20
    --基础速度 baseSpeed ,上下便 bufferSpeed
    self.baseSpeed = 1.2
    self.bufferSpeed = 0.4
    --当前参数变化采用的角度
    self.currentBufferDeg = 0
    self.currentBufferDegSpeed =2

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
        _blockCount.speedEqual = self.rEqual
        _blockCount.rEqual = self.rEqual
        _blockCount.xs = self.xs
    end

    self.fazhen.speedEqual = self.speedEqual
    self.fazhen.rEqual = self.rEqual
    self.fazhen.xs = self.xs

    self:initSubUIs(_specialDict, _avoidInitDict)
end
function c_main_battle:getBlockCount(type_,special_,blockArr_)
    for i=1 , #blockArr_ do
        self.trailCount = self.trailCount + 1
        local _po=blockArr_[i]
        self["blockCount"..tostring(type_)]:getBlock(_po,self.trailCount)
    end
end

-- 判断获取Block的过程是否结束
function c_main_battle:isGetBlockEnd()
    -- 判断当前关卡的BlockCount
    for i=1,self.main.randomMax do
        if self["blockCount"..tostring(i)]:isGetBlockEnd()==false then
            return false
        end
    end
    return true
end

-- 当前关卡几种Block
function c_main_battle:reset()
    -- 11 有的关有，有的关没有
    -- 10 不需要显示
    -- 颜色上限9
    for i=1,10 do
        local _blockCount = self["blockCount"..tostring(i)]
        if i<=self.main.randomMax then
            --重置 属性 显示
            _blockCount:setVisible(true)
            _blockCount:reset(tonumber(i-1)*360/self.main.randomMax)
        else
            -- 隐藏
            _blockCount:setVisible(false)
        end
    end
    self.fazhen:reset()
    --Cure路径计数
    self.trailCount = 0
    --旋转属性
    self.targetR = 150
    self.targetRotateSpeed = 0.5
    --self.hero:gtp("start")
end
--ui stateChange-------------------------------------
function c_main_battle:updateF(type_)
    --Logic here,then change state.
    c_main_battle.super.updateF(self,type_)
    if type_ == 914 then
        self.currentBufferDeg = self.currentBufferDeg + self.currentBufferDegSpeed
        self.targetR = self.baseR + self.bufferR*math.sin(math.rad(self.currentBufferDeg))
        self.targetRotateSpeed = self.baseSpeed + self.bufferSpeed*math.sin(math.rad(self.currentBufferDeg+180))
        self.targetScaleY = 0.5

        --确定 法阵 旋转角度
        self.fazhen.targetRotateSpeed = self.targetRotateSpeed
        self:pursueSpeed(self.fazhen)
        self.fazhen.targetR = self.targetR
        self:pursueR(self.fazhen)
        self.fazhen.targetScaleY = self.targetScaleY
        self:pursueScaleY(self.fazhen)

        self.fazhen:resetRotationPos(self.currentTrailScaleY)
        --关卡中有的显示
        for i=1,self.main.randomMax do
            local _blockCount = self["blockCount"..tostring(i)]

            _blockCount.targetRotateSpeed = self.targetRotateSpeed
            self:pursueSpeed(_blockCount)-- 角度速度趋近
            _blockCount.targetR = self.targetR
            self:pursueR(_blockCount)-- 半径趋近
            _blockCount.targetScaleY = self.targetScaleY
            self:pursueScaleY(_blockCount)

            _blockCount:resetRotationPos(self.currentTrailScaleY)
        end
    end
end
function c_main_battle:pursueSpeed(target_)
    if target_.currentRotateSpeed == target_.targetRotateSpeed then
        return
    end
    local _disSpeed = target_.targetRotateSpeed - target_.currentRotateSpeed
    --print ("_disSpeed = "..  tostring(_disSpeed)) 
    target_.currentRotateSpeed = target_.currentRotateSpeed + _disSpeed*target_.xs
    --print ("target_.currentRotateSpeed = "..  tostring(target_.currentRotateSpeed)) 
    if math.abs(target_.targetRotateSpeed - target_.currentRotateSpeed)<target_.speedEqual then
        target_.currentRotateSpeed = target_.targetRotateSpeed
    end
end
function c_main_battle:pursueScaleY(target_)
    if target_.currentScaleY == target_.targetScaleY then
        return
    end
    local _disSpeed = target_.targetScaleY - target_.currentScaleY
    --print ("_disSpeed = "..  tostring(_disSpeed)) 
    target_.currentScaleY = target_.currentScaleY + _disSpeed*target_.xs
    --print ("target_.currentScaleY = "..  tostring(target_.currentScaleY)) 
    if math.abs(target_.targetScaleY - target_.currentScaleY)<target_.speedEqual then
        target_.currentScaleY = target_.targetScaleY
    end
end
function c_main_battle:pursueR(target_)
    if target_.currentR == target_.targetR then
        return
    end
    local _disR = target_.targetR - target_.currentR
    target_.currentR = target_.currentR + _disR*target_.xs
    if math.abs(target_.targetR - target_.currentR)<target_.speedEqual then
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
