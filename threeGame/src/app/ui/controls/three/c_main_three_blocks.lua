--class define--------------------------------------------------------
local C_disUI = require("src.app.base.ui.disUI")
local c_main_three_blocks = class("c_main_three_blocks", C_disUI)
local Block = require "src.app.ui.controls.three.block"
local CureMotion = require("src.app.ui.controls.three.cureMotion")


--ui create------------------------------------------
function c_main_three_blocks:ctor(params_)
    c_main_three_blocks.super.ctor(self, params_)
    self.className = "main_three_blocks"
    self.moduleName = "three"
end

--init data and place------------------------------------------
function c_main_three_blocks:init(initDict_)
    c_main_three_blocks.super.init(self, initDict_)
    self.main = self:getUiParent()
    self.cureMotionList = {}

    --操作限制
    self.canOperationBoo = false

    --一共有多少种Block
    self.blockMaxTypes = 15
    --随机次数
    self.needRandomCountMax = 101
    --承载体
    self.containerLayer = nil
    --传送数据
    self.transBreakBlockInfo = {}


    --提示相关
    self.delayTipActionTag = 998
    self.delayAiActionTag = 999
    self.delayTipTime = 0
    self.delayAiTime = 0
    self.canMatchBlocks = nil
    self.aiAutoBoo = true
    self.aiSwapping = false

    self.frameCount = 0

    --预先放置的block
    self.prevBlockInfo = {}
    self.prevBlockInfo["col_1"] = nil
    self.prevBlockInfo["col_2"] = nil
    self.prevBlockInfo["col_3"] = nil
    self.prevBlockInfo["col_4"] = nil
    self.prevBlockInfo["col_5"] = nil
    self.prevBlockInfo["col_6"] = nil
    self.prevBlockInfo["col_7"] = nil
    self.prevBlockInfo["col_8"] = nil
    self.prevBlockInfo["col_9"] = nil

    --初始化位置
    self.initPosX = self:getPositionX()
    self.initPosY = self:getPositionY()

    --震动时间
    self.shakeCount = 10
    self.shakeRange = 5
    --轨迹
    self.trailCount = 0
    --闪光
    self.shineCount = 100

    --交换的两个格子下面的特效
    self.blockSwapDownIndex = 1
    --放格子的层级(有9行)
    self.blockPlaceIndex = 2
    --拖动的格子层级
    self.blockMoveIndex = 13
    --格子特效的层级
    self.blockEffectIndex = 14
    --连锁反应的层级
    self.chainEffectIndex = 15
    --连锁反应的层级
    self.chainLineEffectIndex = 16
    --可以交换的提示放置的位置
    self.blockCanSwapTipIndex = 17

    --方块数组
    self.blocks = {}
    --地块数组
    self.grids = nil
    --效果数组
    self.gridBuffers = {}

    --移动一个格子的时间-0.2
    self.movePreGridTime = 0
    --一个BLOCK消除的动画事件
    self.blockAnimationRemoveTime = 0
    --移动结束后，block到了稳定的位置，会晃动一下
    self.moveEndAnimationTime = 0
    --tpye11消除的时间。
    self.type11RemoveAnimationTime = 0
    --type10改变其他block的时间
    self.type10ChangeOtherTime = 0
    --type10改变其他block 运行轨迹的时间
    self.type10ChangeOtherMoveTime = 0
    --Type10连锁触发 普通 block的间隔
    self.type10ChainBlockRemoveNormalIntervalTime =0
    --多个special相互传递爆破的时候。间隔的时间
    self.specialChainBlockActiveIntervalTime = 0

    --交换的时间
    self.swapBlockTime = 0
    --无匹配，交换提示时间
    self.replaceTipTime = 0.5
    --无匹配，交换时间
    self.replaceTime = 1
    --初始化 Block 的时间
    self.initBlocksPlaceTime = 1;

    --连锁导致的其他special被激活，各个Special进行触发的时候，进行的延时等待
    self.specialBlockActiveTime=0
    --显示连锁的那几个动画的时间
    self.showMatchTime = 0

    --不能触发出没时间的条件--TODO 游戏结束，游戏暂停
    self.touchMoved = false --触摸中
    self.blockMovingBool = false --方块移动中
    self.swapping = false --交换中

    --移动的方块，移向的方块
    self.touchBlock = nil
    self.targetBlock = nil

    --交换中的两个方块
    self.swappingBlock1 = nil --self.touchBlock
    self.swappingBlock2 = nil --self.targetBlock

    --方块大小
    self.blockInterval = 0
    --方块触摸大小
    self.blockTouchSize = 60

    --触摸开始的位置
    self.touchBeganPos = nil

    --当前正在移动的格子数量
    self.movingBlockNum = 0

    --行列个数
    self.colMax = 9
    self.rowMax = 8
    --添加手指监听
    self:addTouchEventListener()

    --self:preSetPar("normal")
    --self:preSetPar("ai_normal")
    --self:preSetPar("ai_quick")
    --self:preSetPar("ai_fly")
    self:initSubUIs(_specialDict, _avoidInitDict)

    --开始不可见
    self.playCanOpeartion:setVisible(false)
    self.playCanNotOpeartion:setVisible(false)
    self.gameStateTxt:setVisible(false)
end

--ui stateChange-------------------------------------
function c_main_three_blocks:stateChange(stateName_, rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main_three_blocks.super.stateChange(self, stateName_, rightNow_)
end
function c_main_three_blocks:resetSpeed(type_)
    local _xs = 1
    local _tipXs = 1
    if type_ == "normal" then
        _xs = 1
        _tipXs = 1
    elseif type_ == "ai_normal" then
        _xs = 1
        _tipXs = 0.3
    elseif type_ == "ai_quick" then
        _xs = 0.3
        _tipXs = 0.1
    elseif type_ == "ai_fly" then
        _xs = 0.09
        _tipXs = 0.05
    end
    self.delayTipTime = _tipXs* 5
    self.delayAiTime = _xs* 0.0
    self.movePreGridTime = _xs* 0.15
    self.blockAnimationRemoveTime = _xs* 0.4
    self.type10ChainBlockRemoveNormalIntervalTime = _xs* 0.1
    self.moveEndAnimationTime = _xs* 0.4
    self.type11RemoveAnimationTime = _xs* 1
    self.type10ChangeOtherTime = _xs* 1
    self.type10ChangeOtherMoveTime = _xs* 1
    self.specialBlockActiveTime = _xs* 1
    self.swapBlockTime = _xs* 0.3
    self.showMatchTime = _xs* 0.5
    self.specialChainBlockActiveIntervalTime = _xs* 0.8
end
function c_main_three_blocks:preSetPar(type_)
    self:resetSpeed(type_)
    if type_ == "normal" then
        self.aiAutoBoo = false
    elseif type_ == "ai_normal" then
        if self.aiAutoBoo ~= true then self:aiSwap() end
        self.aiAutoBoo = true
        self:aiSwap()
    elseif type_ == "ai_quick" then
        if self.aiAutoBoo ~= true then self:aiSwap() end
        self.aiAutoBoo = true
        self:aiSwap()
    elseif type_ == "ai_fly" then
        if self.aiAutoBoo ~= true then self:aiSwap() end
        self.aiAutoBoo = true
        self:aiSwap()
    end
end

function c_main_three_blocks:errorLog(str_)
    if self.main.isDebug then
        self.debugLog:setString(str_)
        print(str_)
    end
end

function c_main_three_blocks:clearDelayTipAction(reTip_)
    self:stopActionByTag(self.delayTipActionTag)
    if self.canMatchBlocks then
        local _canMatchBlocksLength = #self.canMatchBlocks --possible为4长，specail为2长
        if _canMatchBlocksLength == 4 then
            _canMatchBlocksLength = 3
        end
        for i = 1, _canMatchBlocksLength do
            local _tempBlock = self.canMatchBlocks[i]
            if _tempBlock and _tempBlock.clearTip then
                _tempBlock:clearTip()
            end
            self.canMatchBlocks[i] = nil
        end
    end

    if reTip_ then --再次提示
        self:addDelayTip()
    else
        self.canMatchBlocks = nil
    end
end

-- 延时 提示。
function c_main_three_blocks:addDelayTip()
    self:delayFunc(self.delayTipTime,self.delayTipActionTag,function()
        self:showTip()
    end)
end

-- 延时方法
function c_main_three_blocks:delayFunc(delayTime_,tag_,function_)
    local _delayAction = cc.Sequence:create(cc.DelayTime:create(delayTime_), cc.CallFunc:create(function_))
    if tag_ then
        _delayAction:setTag(tag_)
    end
    self:runAction(_delayAction)
end

function c_main_three_blocks:showTip()
    if self.canMatchBlocks then
        local _canMatchBlocksLength = #self.canMatchBlocks --possible为4长，specail为2长
        -- 前三个，是一致的颜色。第四个是可以换的那个
        if _canMatchBlocksLength == 4 then
            _canMatchBlocksLength = 3
        end
        for i = 1, _canMatchBlocksLength do
            local _tempBlock = self.canMatchBlocks[i]
            if _tempBlock and _tempBlock.showTip then
                self:changeBlockIndex(_tempBlock, self.blockPlaceIndex)
                _tempBlock:showTip(self.delayAiTime)
            else
                --print("ERROR ~可忽略")
            end
        end
    else
        self:errorLog("ERROR 提示没有Blocks")
    end
    self.delayTipAction = nil

    if self.aiAutoBoo then
        self:addDelayAi()
    end
end

-- 延时 AI 行动
function c_main_three_blocks:addDelayAi()
    self:delayFunc(self.delayAiTime,self.delayAiActionTag,function()
            self:aiSwap()
    end)
end


function c_main_three_blocks:aiSwap()
    if self.canMatchBlocks then
        local _canMatchBlocksLength = #self.canMatchBlocks
        local _touchBlock
        local _targetBlock
        if _canMatchBlocksLength == 4 then --possible
            _touchBlock = self.canMatchBlocks[3]
            _targetBlock = self.canMatchBlocks[4]
            if _touchBlock and _touchBlock.showTip and
                    _targetBlock and _targetBlock.showTip then
                self:moveSwapTwoBlocks(_touchBlock, _targetBlock)
            else
                self:errorLog("ERROR AI交换的时候可交换对象丢失 possible")
            end
        else --special
            _touchBlock = self.canMatchBlocks[1]
            _targetBlock = self.canMatchBlocks[2]
            if _touchBlock and _touchBlock.showTip and
                    _targetBlock and _targetBlock.showTip then
                self:moveSwapTwoBlocks(_touchBlock, _targetBlock)
            else
                self:errorLog("ERROR AI交换的时候可交换对象丢失 special")
            end
        end
        self.aiSwapping = true
    else
        self:errorLog("ERROR AI交换的时候没发现可交换的预存")
    end
end

function c_main_three_blocks:clearDelayAiAction()
    self:stopActionByTag(self.delayAiActionTag)
end

--根据关卡号进行创建
function c_main_three_blocks:reinitLevel()
    self.currentLevelID = self.main.currentLevelID
    self:clearCurrentLevel()
    self:preSetPar("normal")
    self:initByLevelConfig()
end

--清理当前关卡
function c_main_three_blocks:clearCurrentLevel()
    self:clearDelayTipAction()
    self:clearDelayAiAction()
    --清空原有轨迹移动对象
    for i=1 , #self.cureMotionList do
        local item=self.cureMotionList[i]
        item:stopAllActions()
        item:removeFromParent()
    end
    self.cureMotionList = {}

    --参数重置
    self.touchMoved = false --触摸中
    self.blockMovingBool = false --方块移动中
    self.swapping = false --交换中
    self.touchBlock = nil --移动的方块，移向的方块
    self.targetBlock = nil
    self.swappingBlock1 = nil --交换中的两个方块
    self.swappingBlock2 = nil
    self.touchBeganPos = nil --触摸开始的位置
    self.movingBlockNum = 0 -- 没有正在移动的方块
    self.debugLog:setString("")
    self.canOperationBoo = true

    --清除block
    for i = 1, self.colMax do
        for j = 1, self.rowMax do
            local _tempBLock = self:getBlockByCR(i, j)
            if _tempBLock then
                _tempBLock:removeFromGame()
            end
            local _tempGridBuffer = self:getGridBufferByCR(i, j)
            if _tempGridBuffer then
                _tempGridBuffer:removeFromGame()
            end
        end
    end
    --清理Block数组--TODO 这不分可能多余，有待验证吧
    for i = 1, self.colMax do
        local _tempColBlocks = self.blocks[i]
        if _tempColBlocks then
            for j = 1, #_tempColBlocks do
                _tempColBlocks[j] = nil
            end
        end
        local _tempColGridBuffers = self.gridBuffers[i]
        if _tempColGridBuffers then
            for j = 1, #_tempColGridBuffers do
                _tempColGridBuffers[j] = nil
            end
        end
    end
    --创建个新的
    self.blocks = {}
    self.gridBuffers = {}
    for i = 1, self.colMax do
        self.blocks[i] = {}
        self.gridBuffers[i] = {}
    end

    --清理轨迹路径
    while #self.cureMotionList>0 do
        local _cureMotion=table.remove(self.cureMotionList, 1)
        _cureMotion:cleanSelf()
    end

    if self.containerLayer then
        self.containerLayer:removeFromParent(true)
    end

    self.containerLayer = cc.Layer:create()
    self:addChild(self.containerLayer)

    self.logicParent.desText:setString("")
    self:stopAllActions()
end

--根据当前关卡配置，初始化
function c_main_three_blocks:initByLevelConfig()
    local _currentLevelConfig = self.main.currentLevelConfig
    -- 当前关随机几个颜色
    self.randomMax = _currentLevelConfig.randomMax
    --设置测试标题
    self.logicParent.desText:setString(self.main.currentLevelIndex .. " : " .. _currentLevelConfig.des)

    for i = 1, #_currentLevelConfig.blockInfos do
        local _tempBlockInfo = _currentLevelConfig.blockInfos[i]
        local _level = 0 --获取预设level
        if _tempBlockInfo.level then
            _level = _tempBlockInfo.level
        end
        local _buffer = 0 --获取预设buffer
        if _tempBlockInfo.buffer then
            _buffer = _tempBlockInfo.buffer
        end
        self:addBlockTo(_tempBlockInfo.col, _tempBlockInfo.row, _tempBlockInfo.type, _level, _buffer, false, 0, false)
    end

    for i = 1, 9 do --列预存
        local _sourceConfig = _currentLevelConfig["prev_" .. i]
        local _targetConfig = {}
        for j = 1, #_sourceConfig do
            table.insert(_targetConfig, _sourceConfig[j])
        end
        self.prevBlockInfo["col_" .. i] = _targetConfig
    end

    if self:needRandom() == false then --没有超过随机次数限制
        
    end

    -- 开始进行，实际摆放位置，初始化显示-------------------------------------
    self.blockMovingBool = true
    --移动到初始化位置<先拿走，创建轨迹移动>
    self:moveBlockToInitPlace() 

    -- 延时，初始化格子摆放
    self:delayFunc(self.initBlocksPlaceTime,nil,function()
        -- 重置属性，然后定位Block<再移动回原来的位置>
        self:allBlockCanMatch()
        -- 重置11下面的提示
        self:showDownUnderType11()
        self:fallDown()
    end)

end
--创建显示
function c_main_three_blocks:moveBlockToInitPlace()
    for i = 1, self.colMax do --col
        for j = 1, self.rowMax do --row
            local _tempBlock = self:getBlockByCR(i, j)
            if _tempBlock and _tempBlock:replaceAble() then
                local _deg = math.random(1,180)
                local _y = math.sin(math.rad(_deg))*1000
                local _x = math.cos(math.rad(_deg))*1000
                local _targetWorldPos =self:convertToWorldSpace(cc.p(_tempBlock:getPositionX(),_tempBlock:getPositionY()))
                _tempBlock:setPosition(cc.p(_x,_y))
                local _fromWorldPos =self:convertToWorldSpace(cc.p(_tempBlock:getPositionX(),_tempBlock:getPositionY()))
                self:createCureMotionBetweenBlocks(_tempBlock.type,_fromWorldPos,_targetWorldPos,self.initBlocksPlaceTime)
            end
        end
    end
end

--方块位置，两个方向延展多少进行获取
function c_main_three_blocks:getChainAbleBlocks(col_, row_, colNum_, rowNum_)
    local _tempBlocks = {}
    for _col = col_ - colNum_, col_ + colNum_ do
        for _row = row_ - rowNum_, row_ + rowNum_ do
            local _tempBlock = self:getBlockByCR(_col, _row)
            if _tempBlock and _tempBlock:chainAble() then
                table.insert(_tempBlocks, _tempBlock)
            end
        end
    end
    return _tempBlocks
end

--三个基本的变种
function c_main_three_blocks:chain_x_h(col_, row_) --nx1
    local _tempBlocks = {}
    if self:rowInRange(row_) == false then
        return _tempBlocks
    end
    _tempBlocks = self:getChainAbleBlocks(col_, row_, self.colMax, 0)
    local _x_h_animation = self.displayUtils:createAnimation("ani_blast_x_h", false)
    _x_h_animation:setPosition(cc.p(0, self.grids[1][row_]:getPositionY()))
    _x_h_animation:setBlendFunc(cc.blendFunc(gl.SRC_ALPHA, gl.ONE))
    self.containerLayer:addChild(_x_h_animation, self.chainEffectIndex)

    return _tempBlocks
end

function c_main_three_blocks:chain_x_v(col_, row_) --1xn
    local _tempBlocks = {}
    if self:colInRange(col_) == false then
        return _tempBlocks
    end
    _tempBlocks = self:getChainAbleBlocks(col_, row_, 0, self.rowMax)
    local _x_h_animation = self.displayUtils:createAnimation("ani_blast_x_h", false)
    _x_h_animation:setPosition(cc.p(self.grids[col_][1]:getPositionX(), self.grids[1][5]:getPositionY()))
    _x_h_animation:setRotation(90)
    _x_h_animation:setBlendFunc(cc.blendFunc(gl.SRC_ALPHA, gl.ONE))
    self.containerLayer:addChild(_x_h_animation, self.chainEffectIndex)
    return _tempBlocks
end

function c_main_three_blocks:chain_z(col_, row_) --3x3
    local _tempBlocks = {}
    _tempBlocks = self:getChainAbleBlocks(col_, row_, 1, 1)
    local _z_animation = self.displayUtils:createAnimation("ani_blast_z", false)
    _z_animation:setPosition(cc.p(self.grids[col_][row_]:getPositionX(), self.grids[col_][row_]:getPositionY()))
    _z_animation:setBlendFunc(cc.blendFunc(gl.SRC_ALPHA, gl.ONE))
    self.containerLayer:addChild(_z_animation, self.chainEffectIndex)
    return _tempBlocks
end

--地块是否可用 TODO根据关卡配置 判断这个格子是否可用
function c_main_three_blocks:getGridUseAble(col_, row_)
    local _tempGrid = self:getGridByCR(col_, row_)
    if _tempGrid then
        return true
    else
        return false
    end
end

function c_main_three_blocks:isUpPathClear(col_, row_)
    for _row = row_ - 1, 1, -1 do
        --向上拿一个格子内的block
        local _tempBlock = self:getBlockByCR(col_, _row)
        --有但是不能动
        if _tempBlock and _tempBlock:moveAble() == false then
            return false
        end
        local _tempGrid = self:getGridByCR(col_, _row)
        --TODO 地块 grid 要有自己的类别
        --if _tempGrid==nil or (_tempGrid and _tempGrid:passAble()==false) then
        --没有这个地块
        if _tempGrid == nil then
            return false
        end
    end
    return true
end

function c_main_three_blocks:isOnTop(col_, row_)
    if row_ == 1 then
        return true
    end
    return false
end

--更新 block 移动到位之后的判断
function c_main_three_blocks:checkFallDown()
    if self.blockMovingBool then --block消除进行
        if self.movingBlockNum == 0 then
            local _currentActiveBlockType = self:chainSpecialBlockActive()
            -- 如果当前有被激活的Block,那么碎裂
            if  _currentActiveBlockType then
                -- 碎掉连锁触发的block。
                self:breakBlocks(true)
                local _delayTime = 0.01
                if _currentActiveBlockType =="special" then --特殊的block移除
                    _delayTime = self.specialChainBlockActiveIntervalTime --时间 间隔，这样能看清触发顺序
                elseif _currentActiveBlockType =="normal" then --普通的block移除
                    _delayTime = self.type10ChainBlockRemoveNormalIntervalTime
                end
                --碎掉之后，继续下落<按照当前激活的类型进行时间间隔>
                self:delayFallDown(_delayTime)
            else
                self:fallDown() --继续下落
            end
        end
    end
end

--是否有处于 激活状态 的block
function c_main_three_blocks:chainSpecialBlockActive()
    --触发的block类别
    local _activeBlockType =nil
    local _activeSpecialBlock = nil
    local _activeNormalBlock = nil
    for _row = 1,self.rowMax do
        for _col = 1, self.colMax do
            local _tempBlock = self:getBlockByCR(_col,_row)
            --处于激活状态
            if _tempBlock and _tempBlock.activeBoo then
                --找特殊的
                if _activeSpecialBlock == nil and self:isSpecialBlock(_tempBlock) then --当前是特殊的，还没找到一个特殊的
                    _activeSpecialBlock = _tempBlock --找到了一个特殊的
                elseif _activeNormalBlock == nil and self:isSpecialBlock(_tempBlock)==false then --当前是普通的，还没找到过一个普通的
                    _activeNormalBlock = _tempBlock
                elseif _activeNormalBlock and _activeSpecialBlock then -- 普通的，特殊的，都找到了一个
                    break
                end
                
            end
        end
    end

    if _activeNormalBlock then
        _activeBlockType = "normal"
        --激活状态，变为匹配状态
        _activeNormalBlock.activeBoo = false
        _activeNormalBlock.match = true
    elseif _activeSpecialBlock then
        _activeBlockType = "special"
        _activeSpecialBlock.activeBoo = false
        _activeSpecialBlock.match = true
        self:specialChainBlockActive(_activeSpecialBlock)
    end

    return _activeBlockType
end

--逐帧
function c_main_three_blocks:updateF(type_)
    c_main_three_blocks.super.updateF(self,type_)
    if type_ == 914 then
        if self.main.isDebug then
            self.gameStateTxt:setVisible(true)
            self.gameStateTxt:setString(self.main.currentGameState)
            if self.canOperationBoo then
                self.playCanOpeartion:setVisible(true)
                self.playCanNotOpeartion:setVisible(false)
            else
                self.playCanOpeartion:setVisible(false)
                self.playCanNotOpeartion:setVisible(true)
            end
        end
        -- --降低一半的帧频率
        -- self.frameCount = self.frameCount + 1
        -- if math.mod(self.frameCount,3) == 0  then
        --     self.shineCount = self.shineCount - 1 --闪光
        --     if self.shineCount == 0 then
        --         local _tempBlock = self:getRandomBlock()
        --         if _tempBlock and
        --                 _tempBlock ~= self.targetBlock and
        --                 _tempBlock ~= self.touchBlock and
        --                 _tempBlock ~= self.swappingBlock1 and
        --                 _tempBlock ~= self.swappingBlock2 and
        --                 _tempBlock:isShining() == false and
        --                 _tempBlock:moveAble() and
        --                 _tempBlock:shineAble() then
        --             _tempBlock:shine()
        --         end
        --         self.shineCount = 10 + math.random(1, 10)
        --     end

        --     self.shakeCount = self.shakeCount - 1 --震动
        --     if self.shakeCount > 0 then
        --         self:shakePos()
        --     elseif self.shakeCount == 0 then
        --         self:setPosition(cc.p(self.initPosX, self.initPosY))
        --     end
        -- end
    end
end

--随机获取一个Block
function c_main_three_blocks:getRandomBlock()
    local _randomRow = math.random(1, self.rowMax)
    local _randomCol = math.random(1, self.colMax)
    local _tempBlock = self:getBlockByCR(_randomCol, _randomRow)
    return _tempBlock
end

--震动效果，事件+幅度
function c_main_three_blocks:shake(time_, range_)
    if time_ > self.shakeCount then --取得最大时间
        self.shakeCount = time_
    end
    if range_ > self.shakeRange then --取得最大幅度
        self.shakeRange = range_
    end
end

--震动
function c_main_three_blocks:shakePos()
    local _shakePos = cc.p(self.initPosX + (math.random(1, 100) * 0.01 - 0.5) * self.shakeRange, self.initPosY + (math.random(1, 100) * 0.01 - 0.5) * self.shakeRange)
    self:setPosition(_shakePos)
end

--交换两个block
function c_main_three_blocks:swapBlocks(block1_, block2_, needSwapBack_)
    self.swapping = true
    local _isV = block1_.col == block2_.col
    local _tempCol = block1_.col
    local _tempRow = block1_.row
    --交换位置序号
    block1_:setCR(block2_.col, block2_.row)
    block2_:setCR(_tempCol, _tempRow)
    --移动--手指滑动 + 无法匹配 触发的移动，不需要进行移动个数统计操作
    block1_:moveToSelfCR(self.swapBlockTime, false, "swap")
    block2_:moveToSelfCR(self.swapBlockTime, false, "swap")
    -- 交换动画
    block1_:swapAnimation(self.swapBlockTime,_isV)
    block2_:swapAnimation(self.swapBlockTime,_isV)

    if needSwapBack_ == false then --交换后检测匹配
        local _moveEffect1 = self.displayUtils:createAnimation("ani_move", false)
        local _moveEffect2 = self.displayUtils:createAnimation("ani_move", false)
        _moveEffect1:setPosition(self.swappingBlock1:getSelfGridPos())
        _moveEffect2:setPosition(self.swappingBlock2:getSelfGridPos())
        self.containerLayer:addChild(_moveEffect1, self.blockSwapDownIndex)
        self.containerLayer:addChild(_moveEffect2, self.blockSwapDownIndex)
        --判断移动后的match
        self:delayFunc(self.swapBlockTime,nil,function()
            self.swapping = false
            if self:findAndRemoveMatches(true) == false then --没有匹配，所以没有进行任何match消除
                self:swapBlocks(self.swappingBlock1, self.swappingBlock2, true) --换回来
                self.swappingBlock1:swapBackAnimation(self.swapBlockTime,_isV)
                self.swappingBlock2:swapBackAnimation(self.swapBlockTime,_isV)
                self:getGridByCR(self.swappingBlock1.col,self.swappingBlock1.row):gtp("unMatch")
                self:getGridByCR(self.swappingBlock2.col,self.swappingBlock2.row):gtp("unMatch")
            else --有消除的，就开始下落
                self:clearDelayTipAction()
                self.blockMovingBool = true
                self:delayFallDown(self.blockAnimationRemoveTime + self.moveEndAnimationTime)
                self.canOperationBoo = false
                self.swappingBlock1 = nil --强制交换的在forceSwapEnd中清空
                self.swappingBlock2 = nil
            end
        end)
    else -- 交换不匹配时，再次交换回原来状态
        self:delayFunc(self.swapBlockTime,nil,function()
            self.swappingBlock1:stopAllActions()
            self.swappingBlock2:stopAllActions()
            self.swappingBlock1:placeInPos()
            self.swappingBlock2:placeInPos()
            self.swapping = false
            self.swappingBlock1 = nil
            self.swappingBlock2 = nil
        end)
    end
end

--添加一个Block
function c_main_three_blocks:addBlockTo(col_, row_, type_, level_, buffer_, createDisplay_, time_, moveCountBoo_)
    local _tempGrid = self:getGridByCR(col_, row_)
    if _tempGrid then
        local _block = Block.new(self)
        --level获取
        if level_ == 0 then
            _block.initLevel = ""
        elseif level_ == 1 then
            _block.initLevel = "x_h"
        elseif level_ == 2 then
            _block.initLevel = "x_v"
        elseif level_ == 3 then
            _block.initLevel = "z"
        end
        --type获取
        _block.initType = type_
        if type_ == 0 then
            type_ = self:getBlockRandomType()
        end
        --按照三个属性 重置。
        _block:reinit(type_, _block.initLevel, false)
        _block:setCR(col_, row_)
        self.containerLayer:addChild(_block, self.blockPlaceIndex)
        _block:setPosition(_tempGrid:getPositionX(), _tempGrid:getPositionY() + self.blockTouchSize)
        if createDisplay_ then --创建显示
            _block:createDisplay()
        end
        --顶层创建的block，一开始就是下落的
        if moveCountBoo_ then
            _block.fallingBoo = true
        end
        --初始化[瞬间创建，无需统计移动个数] moveCountBoo_ =false
        --顶格产生[需要统计移动个数] moveCountBoo_ =true
        _block:moveToSelfCR(time_, moveCountBoo_)
        _block:addBufferByType(buffer_)
    end
end

--再有对象消除的时候，预留动画播放的时间
function c_main_three_blocks:delayFallDown(time_)
    self:delayFunc(time_,nil,function()
        self:checkFallDown()
    end)
end

--影响上面的东西
function c_main_three_blocks:fallDown()
    for _row = self.rowMax, 1, -1 do
        for _col = 1, self.colMax do
            local _tempBlock = self:getBlockByCR(_col, _row)
            if _tempBlock == nil then
                if self:getGridUseAble(_col, _row) then --没方块且格子还是可用的
                    if self:isOnTop(_col, _row) then --顶端出BLOCK--取得预设置
                        local _prevBlocks = self.prevBlockInfo["col_" .. _col]
                        local _blockType = 0
                        if #_prevBlocks > 0 then
                            _blockType = _prevBlocks[1]
                            table.remove(_prevBlocks, 1)
                        end
                        -- 没有预设就随机
                        if _blockType == 0 then
                            _blockType = self:getBlockRandomType()
                        end
                        self:addBlockTo(_col, 1, _blockType, 0, 0, true, self.movePreGridTime, true)
                    else --方块掉落规则
                        local _downBlock = nil
                        -- 向上一个格子
                        local _tempBlock = self:getBlockByCR(_col, _row - 1)
                        if _tempBlock and _tempBlock:moveAble() then
                            _downBlock = _tempBlock
                        else
                            -- 向上不畅通
                            if self:isUpPathClear(_col, _row) == false then
                                -- 向左上
                                _tempBlock = self:getBlockByCR(_col - 1, _row - 1)
                                if 
                                    ((self:getGridByCR (_col - 1, _row) and self:getBlockByCR(_col - 1, _row)) or self:getGridByCR (_col - 1, _row)==nil)
                                    and 
                                    _tempBlock and _tempBlock:moveAble() and _tempBlock:leanMoveAble() 
                                then
                                    _downBlock = _tempBlock
                                else
                                    -- 向右上
                                    _tempBlock = self:getBlockByCR(_col + 1, _row - 1)
                                    if 
                                        ((self:getGridByCR (_col + 1, _row) and self:getBlockByCR(_col + 1, _row)) or self:getGridByCR (_col + 1, _row)==nil)
                                        and 
                                        _tempBlock and _tempBlock:moveAble() and _tempBlock:leanMoveAble() 
                                    then
                                        _downBlock = _tempBlock
                                    end
                                end
                            end
                        end
                        if _downBlock then --格子移动
                            _downBlock.fallingBoo = true
                            if self.main.isDebug then _downBlock.moveLabel:setString("M") end
                            _downBlock:setCR(_col, _row)
                            _downBlock:moveToSelfCR(self.movePreGridTime, true)
                        end
                    end
                end
            else
                -- 刚才下落的block，落入到格子中了
                if _tempBlock.fallingBoo then
                    _tempBlock.fallingBoo = false
                    if self.main.isDebug then _tempBlock.moveLabel:setString("") end
                    _tempBlock:moveEndAnimation(self.moveEndAnimationTime);
                end
            end
        end
    end
    if self.movingBlockNum == 0 then --下落完毕
        -- 重置block状态。Great
        self:allBlockCanMatch()
        -- block 到了稳定的位置后，做完了稳定动画。再进行匹配判断。
        -- 落地之后稳定位置，会有个晃动。然后在消除
        self:delayFunc(self.moveEndAnimationTime,nil,function()
            if self:findAndRemoveMatches(false) then --匹配
                self.blockMovingBool = true
                -- 消除掉匹配的block,继续进行FallDown
                self:delayFallDown(self.blockAnimationRemoveTime + self.moveEndAnimationTime)
            else
                -- 消除钥匙[没有可以消除的钥匙，进行下面的操作]
                if self:breakType11() == false then 
                    --没有匹配的，当前玩家回合结束
                    self.blockMovingBool = false
                    if self:needReplaceBlocks() == false then
                        --整理type11的显示
                        self:showDownUnderType11()
                        --回合结束回调
                        self:roundEndCallBack()
                    end
                end
            end

        end)
    end
end
-- 有没有要进行消除的钥匙，有的话，就进行消除
function c_main_three_blocks:breakType11()
    --回合结束的时候，判断是否有 11 到最后一行
    local _type11s = self:getType11InEndPos()
    if #_type11s>0 then
        for i=1 , #_type11s do
            local _type11=_type11s[i]
            _type11.match = true
            self:breakBlocks(true)--碎掉钥匙
            self:delayFallDown(self.type11RemoveAnimationTime)
        end
        self:showDownUnderType11()
        return true
    end
    return false
end
-- 类型11为下落到底就消除的
function c_main_three_blocks:getType11InEndPos()
    local _type11s = {}
    for _col = 1, self.colMax do
        local _tempBlock = self:getBlockByCR(_col, self.rowMax)
        if _tempBlock then
            if _tempBlock.type ==11 then
                table.insert(_type11s,_tempBlock)
            end
        end
    end
    return _type11s
end

function c_main_three_blocks:showDownUnderType11()
    local _downs = self.logicParent.downs
    for i = 1, self.colMax do
        local _haveType11 = false
        for j = 1, self.rowMax do
            local _tempBlock = self:getBlockByCR(i, j)
            if _tempBlock and _tempBlock.type ==11 then
                _haveType11 =true
                break
            end
        end
        local _down =  _downs["down_"..tostring(i)]
        if _haveType11 then
           _down:setVisible(true)
        else
           _down:setVisible(false)
        end
    end
end

--一阶段结束
function c_main_three_blocks:allBlockCanMatch()
    for i = 1, self.colMax do
        for j = 1, self.rowMax do
            local _tempBlock = self:getBlockByCR(i, j)
            if _tempBlock then
                _tempBlock:reset()
            end
        end
    end
end

function c_main_three_blocks:colInRange(col_)
    if col_ >= 1 and col_ <= self.colMax then
        return true
    else
        return false
    end
end

function c_main_three_blocks:rowInRange(row_)
    if row_ >= 1 and row_ <= self.rowMax then
        return true
    else
        return false
    end
end


function c_main_three_blocks:getBlockByCR(col_, row_)
    local _tempBlock = nil
    if self:colInRange(col_) and self:rowInRange(row_) then
        _tempBlock = self.blocks[col_][row_]
    end
    return _tempBlock
end

function c_main_three_blocks:getGridBufferByCR(col_, row_)
    local _tempBuffer = nil
    if self:colInRange(col_) and self:rowInRange(row_) then
        _tempBuffer = self.gridBuffers[col_][row_]
    end
    return _tempBuffer
end

function c_main_three_blocks:getGridByCR(col_, row_)
    local _tempGrid = nil
    if self:colInRange(col_) and self:rowInRange(row_) then
        _tempGrid = self.grids[col_][row_]
        if _tempGrid:isVisible() == false then
            _tempGrid = nil
        end
    end
    return _tempGrid
end

--获取一个随机类型
function c_main_three_blocks:getBlockRandomType()
    return math.random(1,self.randomMax)
end
--获取一个场景中存在的随机类型
function c_main_three_blocks:getExistBlockRandomType()
    local _haveTypes = self:currentExistBlockTypes()
    if #_haveTypes > 0 then
        return _haveTypes[math.random(1,#_haveTypes)]
    else
        return nil
    end
end

--记录不为零的block
function c_main_three_blocks:currentExistBlockTypes()
    local _haveTypeCounts = self:getCurrentBlockCounts()
    local _haveTypes = {}
    for i=1,15 do
        local _currentBlockCount = _haveTypeCounts[i]
        if _currentBlockCount > 0 then
            table.insert(_haveTypes,i)
        end
    end
    return _haveTypes
end

--统计各个类型存在的个数
function c_main_three_blocks:getCurrentBlockCounts()
    local _haveTypeCounts = {}
    for i=1,15 do
        table.insert(_haveTypeCounts,0)
    end
    for _row = 1,self.rowMax do
        for _col = 1, self.colMax do
            --计数器++
            local _tempBlock = self:getBlockByCR(_col,_row)
            if _tempBlock then
                local _currentBlockCount = _haveTypeCounts[_tempBlock.type]
                if _currentBlockCount then
                    _haveTypeCounts[_tempBlock.type] =  _currentBlockCount + 1
                end
            end
        end
    end
    return _haveTypeCounts
end
--通过类型获取个数
function c_main_three_blocks:getCurrentBlockCountByType(type_)
    local _blockCount = 0
    for _row = 1,self.rowMax do
        for _col = 1, self.colMax do
            --计数器++
            local _tempBlock = self:getBlockByCR(_col,_row)
            if _tempBlock and _tempBlock.type == type_ then
                _blockCount = _blockCount + 1
            end
        end
    end
    return _blockCount
end
--这个行列号下面的一列中，是否有这个类型的block
function c_main_three_blocks:isBlockTypeUnderColRow( type_,col_,row_ )
    for _row = (row_+1), self.rowMax do
        local _tempBlock = self:getBlockByCR(col_,_row)
        if _tempBlock and _tempBlock.type == type_ then
            return true
        end
    end
    return false
end
--这个行列号上面的一列中，是否有这个类型的block
function c_main_three_blocks:isBlockTypeUpColRow( type_,col_,row_ )
    for _row = (row_-1), 1, -1 do --row
        local _tempBlock = self:getBlockByCR(col_,_row)
        if _tempBlock and _tempBlock.type == type_ then
            return true
        end
    end
    return false
end

--循环判断所有特殊的
function c_main_three_blocks:specialChainBlockActive(specialBlock_)
    local _tempBlocks
    local _activeType = 0 -- 被哪个种类触发
    if specialBlock_.level~=nil and specialBlock_.level ~= "" then
        if specialBlock_.level == "x_h" then -- 连锁反应激发的就是全行消除
            _tempBlocks = self:chain_x_h(specialBlock_.col, specialBlock_.row)
        elseif specialBlock_.level == "x_v" then -- 连锁反应触发的就是全行消除
            _tempBlocks = self:chain_x_v(specialBlock_.col, specialBlock_.row)
        elseif specialBlock_.level == "z" then -- 3x3 爆破
            _tempBlocks = self:chain_z(specialBlock_.col, specialBlock_.row)
        end
        _activeType = specialBlock_.type
        if _tempBlocks then
            self:chainBlocks(_tempBlocks, _activeType)
        end
    elseif specialBlock_.type == 10 then --y 需要触发连锁的哪个类型
            -- 随机需要在当前存在的block中随机，如果，当前可以连锁的都消除了，那么就没有必要进行了。
        local _type =self:getExistBlockRandomType()
        _tempBlocks = {}
        for i = 1, self.colMax do
            for j = 1, self.rowMax do
                local _tempBlock = self:getBlockByCR(i, j)
                if _tempBlock and _tempBlock.type == _type then
                    self:createMotionBetweenBlocks(specialBlock_, _tempBlock, self.type10ChangeOtherMoveTime)
                    table.insert(_tempBlocks, _tempBlock)
                end
            end
        end
        if _tempBlocks then
            self:chainBlocks(_tempBlocks, _activeType,true)
        end
    else
        self:errorLog("ERROR -- 当前 block 不是一个特殊 block")
    end
end

--在两个blocks之间进行motion
function c_main_three_blocks:createMotionBetweenBlocks(fromBlock_, targetBlock_, moveTime_)
    --type 10 的同类关联
    local _linkSp = cc.MotionStreak:create(0.3, 5, 10, cc.c3b(255, 255, 255),self.main:getBlockPicNameByType(10))
    _linkSp:setPosition(cc.p(fromBlock_:getPositionX(), fromBlock_:getPositionY()))
    local function callBack() _linkSp:removeFromParent(true) end
    _linkSp:runAction(cc.Sequence:create(cc.MoveTo:create(moveTime_ * 0.4, cc.p(targetBlock_:getPositionX(), targetBlock_:getPositionY())), cc.DelayTime:create(moveTime_ * 0.6), cc.CallFunc:create(callBack)))
    self.containerLayer:addChild(_linkSp, self.chainLineEffectIndex)
end


function c_main_three_blocks:createCureMotionBetweenBlocks(type_,fromWorldPos_, targetWorldPos_, moveTime_)
    self.trailCount = self.trailCount + 1
    local function onInPosition(cureMotion_)
        table.removebyvalue(self.cureMotionList,cureMotion_)
    end
    -- body
    local _display = nil
    local _trailMotion = nil
    local _picName = self.main:getBlockPicNameByType(type_)
    _trailMotion = cc.MotionStreak:create(0.3, 3, 80, cc.c3b(255, 255, 255), _picName)
    table.insert(self.cureMotionList,CureMotion.new(self,self.chainLineEffectIndex,fromWorldPos_,targetWorldPos_,_display,_trailMotion,moveTime_,moveTime_,onInPosition,self,self.trailCount))
end


--数组链式
function c_main_three_blocks:chainBlocks(tempBlocks_, activeType_,isType10_)
    for i = 1, #tempBlocks_ do
        local _tempBlock = tempBlocks_[i]
        if _tempBlock.match == false and _tempBlock.chainMatch == false and _tempBlock.activeBoo == false then --连锁反应中没处理过的
            if isType10_ then --类型10触发的连锁是特殊的，需要一个个爆破
                --是不是特殊的格子，连锁都是先
                _tempBlock:activeShow()
            else
                if self:isSpecialBlock(_tempBlock) then --自动消除中有特殊方块
                    _tempBlock:activeShow()
                else
                    _tempBlock.chainMatch = true
                end
            end
        end
    end
end

--是否是一个特殊的方块
function c_main_three_blocks:isSpecialBlock(block_)
    if 
        (block_.level ~= nil and block_.level ~= "") 
        or 
        block_.type == 10 
    then --自动消除中有特殊方块
        return true
    end
    return false
end


--交换引发的special延时触发 y(10)
--先变更表象
function c_main_three_blocks:swapSpecialChangeToType(activeBlocks_)
    for i = 1, #activeBlocks_ do
        local _tempBlock = activeBlocks_[i]
        if _tempBlock:isChanging() then --线变化成新的
            _tempBlock:changeToSelfType()
        end
    end
end

--交换引发的special延时触发 y(10)
--后进行触发
function c_main_three_blocks:swapSpecialDelayActive(activeBlocks_)
    self.movingBlockNum = self.movingBlockNum - 1
    for i = 1, #activeBlocks_ do
        local _tempBlock = activeBlocks_[i]
        _tempBlock:activeShow()

        --_tempBlock.activeBoo =true
        if self:isSpecialBlock(_tempBlock) then --自动消除中有特殊方块
            _tempBlock:activeShow()
        else
            _tempBlock.chainMatch = true
        end
    end
    self:breakBlocks(true) --不需要记录消除信息

    --等待爆破结束之后再进行下落
    self:delayFunc(self.blockAnimationRemoveTime,nil,function()
        self:checkFallDown()
    end)

end


--寻找并且清理掉match的block
function c_main_three_blocks:findAndRemoveMatches(swapBoo_)
    if swapBoo_ then
        local _touchBlock = self.swappingBlock1 --交换中的两个格子--刚刚移动的时候还有的
        local _targetBlock = self.swappingBlock2
        if _touchBlock and _targetBlock then --两个都存在的话--交换状态
            local _swapType = self:getTwoBlockSwapType(_touchBlock, _targetBlock) --获得交换可能
            if _swapType then --交换过后_touchBlock是最终位置
                local _delayBreakBlocks = {}
                local _chain
                local _changeType --影响的类型
                _targetBlock.match = true
                _touchBlock.match = true
                if _swapType == "x-x" then --十字
                    if _touchBlock.level == "x_v" then
                        self:chainBlocks(self:chain_x_v(_touchBlock.col, _touchBlock.row), _touchBlock.type)
                    end
                    if _touchBlock.level == "x_h" then
                        self:chainBlocks(self:chain_x_h(_touchBlock.col, _touchBlock.row), _touchBlock.type)
                    end
                    if _targetBlock.level == "x_v" then
                        self:chainBlocks(self:chain_x_v(_targetBlock.col, _targetBlock.row), _targetBlock.type)
                    end
                    if _targetBlock.level == "x_h" then
                        self:chainBlocks(self:chain_x_h(_targetBlock.col, _targetBlock.row), _targetBlock.type)
                    end
                elseif _swapType == "x-z" then
                    local _faceType
                    -- 除了z之外的另外一个决定消除方向
                    if _touchBlock.level == "z" then
                        _faceType = _targetBlock.level
                    elseif _targetBlock.level == "z" then
                        _faceType = _touchBlock.level
                    end
                    if _faceType == "x_h" then --三横行
                        self:chainBlocks(self:chain_x_h(_touchBlock.col, _touchBlock.row - 1), _touchBlock.type)
                        self:chainBlocks(self:chain_x_h(_touchBlock.col, _touchBlock.row), _touchBlock.type)
                        self:chainBlocks(self:chain_x_h(_touchBlock.col, _touchBlock.row + 1), _touchBlock.type)
                    elseif _faceType == "x_v" then --三纵行
                        self:chainBlocks(self:chain_x_v(_touchBlock.col - 1, _touchBlock.row), _touchBlock.type)
                        self:chainBlocks(self:chain_x_v(_touchBlock.col, _touchBlock.row), _touchBlock.type)
                        self:chainBlocks(self:chain_x_v(_touchBlock.col + 1, _touchBlock.row), _touchBlock.type)
                    end
                elseif _swapType == "y-y" then --全爆
                    for _col = 1, self.colMax do
                        for _row = 1, self.rowMax do
                            local _tempBlock = self:getBlockByCR(_col, _row)
                            if _tempBlock and _tempBlock:chainAble() then
                                _tempBlock.chainMatch = true
                            end
                        end
                    end
                elseif _swapType == "z-z" then --三横三纵
                    self:chainBlocks(self:chain_x_h(_touchBlock.col, _touchBlock.row - 1), _touchBlock.type)
                    self:chainBlocks(self:chain_x_h(_touchBlock.col, _touchBlock.row), _touchBlock.type)
                    self:chainBlocks(self:chain_x_h(_touchBlock.col, _touchBlock.row + 1), _touchBlock.type)
                    self:chainBlocks(self:chain_x_v(_touchBlock.col - 1, _touchBlock.row), _touchBlock.type)
                    self:chainBlocks(self:chain_x_v(_touchBlock.col, _touchBlock.row), _touchBlock.type)
                    self:chainBlocks(self:chain_x_v(_touchBlock.col + 1, _touchBlock.row), _touchBlock.type)
                elseif _swapType == "x-y" then
                    if _touchBlock.type == 10 then
                        _changeType = _targetBlock.type
                    else
                        _changeType = _touchBlock.type
                    end
                    local _x_h_count = 0
                    for _col = 1, self.colMax do --all to X_H/X_V
                        for _row = 1, self.rowMax do
                            local _tempBlock = self:getBlockByCR(_col, _row)
                            if 
                                (_tempBlock and _tempBlock.type == _changeType)
                                and
                                (_tempBlock ~= _touchBlock and _tempBlock ~= _targetBlock)
                            then
                                _x_h_count = _x_h_count + 1
                                local _tempLevel = ""
                                if _x_h_count == 1 then
                                    _tempLevel = "x_h"
                                elseif _x_h_count == 2 then
                                    _tempLevel = "x_v"
                                end
                                _tempBlock:changeTo(_changeType, _tempLevel)
                                self:createMotionBetweenBlocks(_touchBlock, _tempBlock, self.type10ChangeOtherMoveTime)
                                table.insert(_delayBreakBlocks, _tempBlock)
                                if _x_h_count == 2 then
                                    _x_h_count = 0
                                end
                            end
                        end
                    end
                elseif _swapType == "z-y" then --all to Z
                    if _touchBlock.type == 10 then
                        _changeType = _targetBlock.type
                    else
                        _changeType = _touchBlock.type
                    end
                    for _col = 1, self.colMax do
                        for _row = 1, self.rowMax do
                            local _tempBlock = self:getBlockByCR(_col, _row)
                            if 
                                _tempBlock and _tempBlock.type == _changeType 
                                and
                                (_tempBlock ~= _touchBlock and _tempBlock ~= _targetBlock)
                            then
                                _tempBlock:changeTo(_changeType, "z")
                                self:createMotionBetweenBlocks(_touchBlock, _tempBlock, self.type10ChangeOtherMoveTime)
                                table.insert(_delayBreakBlocks, _tempBlock)
                            end
                        end
                    end
                elseif _swapType == "n-y" then --all to N
                    if _touchBlock.type == 10 then
                        _changeType = _targetBlock.type
                    else
                        _changeType = _touchBlock.type
                    end
                    for _col = 1, self.colMax do
                        for _row = 1, self.rowMax do
                            local _tempBlock = self:getBlockByCR(_col, _row)
                            if 
                                _tempBlock and _tempBlock.type == _changeType 
                                and
                                (_tempBlock ~= _touchBlock and _tempBlock ~= _targetBlock)
                            then
                                --普通的block不需要变换，就是激活就好了
                                self:createMotionBetweenBlocks(_touchBlock, _tempBlock, self.type10ChangeOtherMoveTime)
                                table.insert(_delayBreakBlocks, _tempBlock)
                            end
                        end
                    end
                end
                if #_delayBreakBlocks > 0 then --all to 产生的block
                    --"x-y"、"z-y"、"n-y" 中的一种
                    --移动到目标的时候
                    local function moveToChangingBlockCallBack()
                        self:swapSpecialChangeToType(_delayBreakBlocks)
                    end
                    local function swapSpecialDelayActiveCallBack()
                        self:swapSpecialDelayActive(_delayBreakBlocks)
                    end
                    local _delayBreakAction = nil
                    if _swapType == "n-y" then--移动到位，直接爆破
                        _delayBreakAction = cc.Sequence:create(
                            cc.DelayTime:create(self.type10ChangeOtherMoveTime), 
                            cc.CallFunc:create(swapSpecialDelayActiveCallBack)
                        )
                    else--移动到位，先变形，在爆破
                        _delayBreakAction = cc.Sequence:create(
                            cc.DelayTime:create(self.type10ChangeOtherMoveTime), 
                            cc.CallFunc:create(moveToChangingBlockCallBack),
                            cc.DelayTime:create(self.type10ChangeOtherTime), 
                            cc.CallFunc:create(swapSpecialDelayActiveCallBack)
                        )
                    end

                    self.movingBlockNum = self.movingBlockNum + 1
                    self:runAction(_delayBreakAction)
                else
                    self:breakBlocks(true) --记录消除信息
                end

                return true
            else --两个特殊格子不构成特殊交换可能
                --继续进行三消匹配的状态
            end
        end
    end

    local _matchList = self:lookForMatches()
    local _matchMoreList = {} --产生新BLOCK

    if #_matchList ~= 0 then --有匹配的进行消除
        for i = 1, #_matchList do
            local _tempMatchs = _matchList[i]
            if #_tempMatchs > 3 then
                table.insert(_matchMoreList, _tempMatchs)
            end
            local _haveZBoo = false
            for j = 1, #_tempMatchs do --先正常匹配
                local _tempMatchBlock = _tempMatchs[j]
                if _tempMatchBlock.match == false and _tempMatchBlock:isChanging() == false then
                    _tempMatchBlock.match = true --避免两次进行移除操作
                    if _tempMatchBlock.chainMatch == false then --连锁反应中没处理过的
                        if self:isSpecialBlock(_tempMatchBlock) then --自动消除中有特殊方块
                            self:specialChainBlockActive(_tempMatchBlock)
                        end
                    end
                    if _tempMatchBlock.bufferIns == nil then --只有没有BUFFER的才能影响边上的8个
                        local _tempNearBlock --周围8个格子的关联反应
                        _tempNearBlock = self:getBlockByCR(_tempMatchBlock.col - 1, _tempMatchBlock.row + 1)
                        if _tempNearBlock then _tempNearBlock.nearMatch = true end
                        _tempNearBlock = self:getBlockByCR(_tempMatchBlock.col, _tempMatchBlock.row + 1)
                        if _tempNearBlock then _tempNearBlock.nearMatch = true end
                        _tempNearBlock = self:getBlockByCR(_tempMatchBlock.col + 1, _tempMatchBlock.row + 1)
                        if _tempNearBlock then _tempNearBlock.nearMatch = true end
                        _tempNearBlock = self:getBlockByCR(_tempMatchBlock.col - 1, _tempMatchBlock.row)
                        if _tempNearBlock then _tempNearBlock.nearMatch = true end
                        _tempNearBlock = self:getBlockByCR(_tempMatchBlock.col + 1, _tempMatchBlock.row)
                        if _tempNearBlock then _tempNearBlock.nearMatch = true end
                        _tempNearBlock = self:getBlockByCR(_tempMatchBlock.col - 1, _tempMatchBlock.row - 1)
                        if _tempNearBlock then _tempNearBlock.nearMatch = true end
                        _tempNearBlock = self:getBlockByCR(_tempMatchBlock.col, _tempMatchBlock.row - 1)
                        if _tempNearBlock then _tempNearBlock.nearMatch = true end
                        _tempNearBlock = self:getBlockByCR(_tempMatchBlock.col + 1, _tempMatchBlock.row - 1)
                        if _tempNearBlock then _tempNearBlock.nearMatch = true end
                    end
                else --T/L
                    -- 已经存在在一个匹配组合中了。然后又在另一个匹配组合中出现，那么他就是两个匹配的交集。也就是横竖3连的节点。
                    if _haveZBoo == false then --避免 再创建一个
                        _tempMatchBlock.match = false
                        _tempMatchBlock:changeTo(_tempMatchBlock.type, "z")
                        _haveZBoo = true
                    end
                end
            end
        end

        --可能创建新类型的匹配
        for i = 1, #_matchMoreList do
            local _tempMatchs = _matchMoreList[i]

            local _toZBlock = nil
            for j = 1, #_tempMatchs do
                local _tempMatchBlock = _tempMatchs[j]
                if _tempMatchBlock.toLevel == "z" then --判断是否有正在变换成Z的对象 把他变成Z
                    _toZBlock = _tempMatchBlock
                end
            end

            -- z 已经在前面确定了
            local _levelType = ""
            -- 已经向 z 变化，就不需要变成 x
            if _toZBlock~=nil then
                _levelType = "z"
            elseif #_tempMatchs == 4 then --4消 - x
                local _type = math.random(1, 2)
                if _type == 1 then
                    _levelType = "x_h"
                elseif _type == 2 then
                    _levelType = "x_v"
                end
            end
            --5消 - y，即便有z也会以y为主。
            if #_tempMatchs >= 5 then 
                _levelType = "y"
            end
            local _changeBlock = nil --要变化的那个方块 : T/L -> 手指 -> 交换 -> 随机
            if _toZBlock ~= nil then
                _changeBlock = _toZBlock
            end
            if _changeBlock == nil then --手动操作的那两个，其中之一在的话，就是哪个作为变化对象
                for j = 1, #_tempMatchs do
                    local _tempMatchBlock = _tempMatchs[j]
                    if _tempMatchBlock == self.swappingBlock1 or _tempMatchBlock == self.swappingBlock2 then
                        _changeBlock = _tempMatchBlock
                        break
                    end
                end
            end
            if _changeBlock == nil then -- 如果没有手动操作的那两个，就随机一个
                local _index = math.random(1, #_tempMatchs)
                _changeBlock = _tempMatchs[_index]
            end
            if _changeBlock then --正在变化的方块
                _changeBlock.match = false
                if _levelType == "y" then --新种类
                    _changeBlock:changeTo(10, nil)
                else --新子类型
                    _changeBlock:changeTo(_changeBlock.type, _levelType)
                end
            else
                self:errorLog("ERROR 逻辑上应当一定有_changeBlock，但是没了")
            end
        end
        --block爆破
        self:breakBlocks(true) --需要记录
        return true
    else
        return false
    end
end

--爆破
function c_main_three_blocks:breakBlocks(getBreakBlockInfos_)
    local _blockBreakInfo = nil
    if getBreakBlockInfos_ then --记录当前各种都爆破了多少个
        _blockBreakInfo = {}
        for i=1 ,self.blockMaxTypes do
            _blockBreakInfo["type_"..i.."_n"]={}
            _blockBreakInfo["type_"..i.."_s"]={}
        end 
    end
    local _haveType11Boo=false
    local _blockRemoveCount = 0
    local _type11RemoveCount = 0
    for _col = 1, self.colMax do --清理 匹配方块
        for _row = 1, self.rowMax do
            local _tempBlock = self:getBlockByCR(_col, _row)
            if _tempBlock then
                if (_tempBlock.match or _tempBlock.chainMatch) and _tempBlock:isChanging()==false and _tempBlock.activeBoo==false then
                    if _tempBlock.bufferIns == nil then
                        if getBreakBlockInfos_ and (_tempBlock.type < 10 or _tempBlock.type ==11)then --记录 消除 的 BLOCK 信息
                            _tempBlock:placeInPos()
                            local _type = ""
                            if _tempBlock.level ~= nil and _tempBlock.level ~= "" then
                                _type = "n"
                            else
                                self:getGridByCR(_col,_row):gtp("shake")
                                _type = "s"
                            end
                            table.insert(_blockBreakInfo["type_".._tempBlock.type.."_".._type], self:convertToWorldSpace(cc.p(_tempBlock:getPositionX(), _tempBlock:getPositionY())))
                        end
                        if _tempBlock.type == 11 then
                            self:getGridByCR(_col,_row):gtp("Type11End")
                            _tempBlock:removeByAnimation(self.type11RemoveAnimationTime)
                            _haveType11Boo = true
                            _type11RemoveCount = _type11RemoveCount + 1
                        else
                            _tempBlock:removeByAnimation(self.blockAnimationRemoveTime)
                        end
                        _blockRemoveCount = _blockRemoveCount + 1
                    else
                        _tempBlock:bufferCureOne()
                    end
                else
                    if _tempBlock:isChanging() then --这个不能移除掉，变形成新的了
                        --变成他要变成的那个种类
                        _tempBlock:changeToSelfType()
                        --添加一个普通的消除。
                        table.insert(_blockBreakInfo["type_".._tempBlock.type.."_n"], self:convertToWorldSpace(cc.p(_tempBlock:getPositionX(), _tempBlock:getPositionY())))
                    end
                    if _tempBlock.nearMatch then
                        if _tempBlock.bufferIns ~= nil and _tempBlock.bufferIns:nearClearAble() then
                            _tempBlock:bufferCureOne()
                        end
                    end
                end
            end
        end
    end
    local _normalBlockRemoveCount = _blockRemoveCount-_type11RemoveCount
    if _normalBlockRemoveCount > 0 then --根据具体震动，进行振幅
        self:shake(2 + math.floor(_normalBlockRemoveCount / 6), 1 + math.floor(_normalBlockRemoveCount / 3))
    end

    --需要得知消除了多少个格子
    if getBreakBlockInfos_ then
        --是否有 Type11 有的话，按照type11消除的时间来
        local _delayTime = self.blockAnimationRemoveTime
        if _haveType11Boo then
            _delayTime = self.type11RemoveAnimationTime
        end
        -- 消除了之后，调用信息，跟轨迹
        self:delayFunc(_delayTime,nil,function()
            self:blockBreakInfoCallBack(_blockBreakInfo)
        end)
    end

    return
end

--获取两个方块交换的可能结果
function c_main_three_blocks:getTwoBlockSwapType(block1_, block2_)
    if block1_:swapAble() == false or block2_:swapAble() == false or block1_:moveAble() == false or block2_:moveAble() == false then
        return nil
    end
    if (block1_.level == "x_v" or block1_.level == "x_h")
            and
            (block2_.level == "x_v" or block2_.level == "x_h") then
        return "x-x"
    end
    if ((block1_.level == "x_v" or block1_.level == "x_h") and block2_.type == 10)
            or
            (block1_.type == 10 and (block2_.level == "x_v" or block2_.level == "x_h")) then
        return "x-y"
    end
    if ((block1_.level == "x_v" or block1_.level == "x_h") and block2_.level == "z")
            or
            (block1_.level == "z" and (block2_.level == "x_v" or block2_.level == "x_h")) then
        return "x-z"
    end
    if block1_.type == 10 and block2_.type == 10 then
        return "y-y"
    end
    if block1_.level == "z" and block2_.level == "z" then
        return "z-z"
    end
    if (block1_.level == "z" and block2_.type == 10)
            or
            (block2_.level == "z" and block1_.type == 10) then
        return "z-y"
    end
    if (block1_.type == 10 and self:isSpecialBlock(block2_) == false)
            or
            (self:isSpecialBlock(block1_) == false and block2_.type == 10) then
        return "n-y"
    end
    return nil
end

--添加监听
function c_main_three_blocks:addTouchEventListener()
    local function began(touch, event) return self:onTouchBegan(touch, event) end

    local function moved(touch, event) self:onTouchMoved(touch, event) end

    local function ended(touch, event) self:onTouchEnded(touch, event) end

    local function cancelled(touch, event) self:onTouchEnded(touch, event) end

    self.touchListener = cc.EventListenerTouchOneByOne:create() --单击事件监听
    self.touchListener:setSwallowTouches(true)
    self.touchListener:registerScriptHandler(began, cc.Handler.EVENT_TOUCH_BEGAN)
    self.touchListener:registerScriptHandler(moved, cc.Handler.EVENT_TOUCH_MOVED)
    self.touchListener:registerScriptHandler(ended, cc.Handler.EVENT_TOUCH_ENDED)
    self.touchListener:registerScriptHandler(cancelled, cc.Handler.EVENT_TOUCH_CANCELLED)
    local eventDispatcher = self:getEventDispatcher()
    eventDispatcher:addEventListenerWithSceneGraphPriority(self.touchListener, self)
end

--点击是否在区域内
function c_main_three_blocks:tapInBlock(location_)
    --TODO 游戏暂停  游戏结束  滑动中 消除中 敌人回合 等等情况下不能点击
    local _po = self:getPositionInSelf(location_)
    for i = 1, self.colMax do --col
        for j = 1, self.rowMax do --row
            local _tempBlock = self:getBlockByCR(i, j)
            if _tempBlock
                    and
                    math.abs(_po.x - _tempBlock:getPositionX()) < self.blockTouchSize * 0.5
                    and
                    math.abs(_po.y - _tempBlock:getPositionY()) < self.blockTouchSize * 0.5 then
                return _tempBlock
            end
        end
    end
    return nil
end

--开始点击
function c_main_three_blocks:onTouchBegan(touch, event)
    if self.movingBlockNum > 0 then print("onTouchBegan -- self.movingBlockNum :" .. self.movingBlockNum) return end
    if self.blockMovingBool then print("onTouchBegan -- self.blockMovingBool") return end
    if self.swapping then print("onTouchBegan -- self.swapping") return end
    if self.aiSwapping then print("onTouchBegan -- self.aiSwapping") return end
    if self.canOperationBoo == false then print("onTouchBegan -- self.canOperationBoo==false") return end

    self:clearDelayTipAction(true)
    self:clearDelayAiAction()

    local _tempBlock = self:tapInBlock(touch:getLocation())
    if _tempBlock and _tempBlock:moveAble() and _tempBlock:swapAble() then
        self.touchBeganPos = self:getPositionInSelf(touch:getLocation())
        self.touchBlock = _tempBlock
        self.touchBlock:shinePicClear()
        self:changeBlockIndex(self.touchBlock, self.blockMoveIndex)
        return true
    else
        if _tempBlock and _tempBlock:swapAble()==false then
            self:getGridByCR(_tempBlock.col,_tempBlock.row):gtp("unMatch")
        end
        self.touchBeganPos = nil
        return false
    end
end

--移动
function c_main_three_blocks:onTouchMoved(touch, event)
    if self.touchMoved then
        return
    end
    local _po = self:getPositionInSelf(touch:getLocation())
    local _xDis = math.abs(_po.x - self.touchBeganPos.x)
    local _yDis = math.abs(_po.y - self.touchBeganPos.y)
    local _col = self.touchBlock.col
    local _row = self.touchBlock.row
    if _xDis > _yDis and _xDis > self.blockTouchSize then
        if _po.x - self.touchBeganPos.x > 0 then
            _col = _col + 1
        else
            _col = _col - 1
        end
    elseif _yDis > _xDis and _yDis > self.blockTouchSize then
        if _po.y - self.touchBeganPos.y > 0 then --up
            _row = _row - 1
        else --- -down
            _row = _row + 1
        end
    end

    local _tempBlock
    if _col ~= self.touchBlock.col or _row ~= self.touchBlock.row then
        _tempBlock = self:getBlockByCR(_col, _row)
    end

    if _tempBlock and _tempBlock:moveAble() and _tempBlock:swapAble() then
        --清提示
        self.targetBlock = _tempBlock
        self:moveSwapTwoBlocks(self.touchBlock, self.targetBlock)
        self.touchMoved = true
    else
        if _tempBlock and _tempBlock:swapAble()==false then
            self:getGridByCR(_tempBlock.col,_tempBlock.row):gtp("unMatch")
        end
    end
end

function c_main_three_blocks:moveSwapTwoBlocks(block1_, block2_)
    block1_:shinePicClear() --不发光
    block2_:shinePicClear()
    self:changeBlockIndex(block2_, self.blockPlaceIndex) --提到前面来
    self:changeBlockIndex(block1_, self.blockPlaceIndex)
    self.swappingBlock1 = block1_ --交换中的两个格子
    self.swappingBlock2 = block2_
    self:swapBlocks(self.swappingBlock1, self.swappingBlock2, false)
end

--结束
function c_main_three_blocks:onTouchEnded(touch, event)
    self.touchBlock = nil
    self.targetBlock = nil
    self.touchMoved = false
end

--更换Block所在的层级
function c_main_three_blocks:changeBlockIndex(block_, index_)
    -- block_:retain()
    -- self.containerLayer:removeChild(block_)
    -- self.containerLayer:addChild(block_, index_)
    -- block_:release()
    block_:setLocalZOrder(index_)
end

--初始化格子
function c_main_three_blocks:initBlocks(grids_)
    if grids_ == nil then self:errorLog("ERROR no way~!!!!") end

    self.grids = grids_ --地块

    for i = 1, self.colMax do --blocks二维数组定长
        self.blocks[i] = {}
        self.gridBuffers[i] = {}
        for j = 1, self.rowMax do
            self.blocks[i][j] = nil
            self.gridBuffers[i][j] = nil
        end
    end
end

--避免没有可能的匹配--纯随机关卡中使用。或者无匹配管卡中使用
function c_main_three_blocks:needRandom()
    local _showEditBoo = false --需要显示编辑器原版
    local _randomCount = 0
    while true do
        _randomCount = _randomCount + 1
        local _againBoo = false
        if #self:lookForMatches() ~= 0 then
            _againBoo = true
        end
        local _possibleBlocks = self:lookForPossibles()
        local _lookForSpecial = self:lookForSpecial()
        if _possibleBlocks == nil and _lookForSpecial == nil then
            _againBoo = true
        end
        if _againBoo then --需要重来
            for i = 1, self.colMax do --col
                for j = 1, self.rowMax do --row
                    local _block = self:getBlockByCR(i, j)
                    if _block then
                        if _block.initType == 0 then --8是随机，其他固定
                            local _type = self:getBlockRandomType()
                            _block:reinit(_type, _block.initLevel, false)
                        end
                    end
                end
            end
        else
            break
        end

        if _randomCount == self.needRandomCountMax then
            self:errorLog("ERROR---------------- too many times----------------"..self.needRandomCountMax)
            _showEditBoo = true
            break
        end
    end

    print("_randomCount : " .. _randomCount)

    self:createBlockDisplay() --创建Block的显示
    return _showEditBoo
end

--创建显示
function c_main_three_blocks:createBlockDisplay()
    for i = 1, self.colMax do --col
        for j = 1, self.rowMax do --row
            local _block = self:getBlockByCR(i, j)
            if _block then
                _block:createDisplay()
            end
        end
    end
end

--是否需要重置block，包含重置
function c_main_three_blocks:needReplaceBlocks()
    local _againBoo = false
    -- 可以消除的
    local _possibleBlocks = self:lookForPossibles()
    -- 强力块
    local _lookForSpecial = self:lookForSpecial()
    -- 两者都没有，那么就需要重置
    if _possibleBlocks == nil and _lookForSpecial == nil then
        _againBoo = true
    end

    if _againBoo then --需要重来
        -- 先弹出提示，然后，在进行交换位置
        self:delayFunc(self.replaceTipTime,nil,function()
            self:replaceBlocks()
        end)
    else
        self:clearDelayTipAction()
        self.aiSwapping = false
        if _lookForSpecial then --优先提示special
            self.canMatchBlocks = _lookForSpecial
        else
            if _possibleBlocks then
                self.canMatchBlocks = _possibleBlocks
            end
        end
        self:addDelayTip()
    end
    return _againBoo
end

--重置block
function c_main_three_blocks:replaceBlocks()
    local _replaceAbleBlocks = {}
    local _unReplaceAbleBlocks = {}
    local _replaceAbleGrids = {}
    for i = 1, self.colMax do
        for j = 1, self.rowMax do
            local _tempBlock = self:getBlockByCR(i, j)
            if _tempBlock and _tempBlock:replaceAble() then
                local _tempGridInfo = {} --地块序号信息
                local _tempBlock = self:getBlockByCR(i, j)
                _tempGridInfo.col = i
                _tempGridInfo.row = j
                _tempGridInfo.x = _tempBlock:getPositionX()
                _tempGridInfo.y = _tempBlock:getPositionY()
                table.insert(_replaceAbleBlocks, _tempBlock)
                table.insert(_replaceAbleGrids, _tempGridInfo)
            else
                --不能交换的Block
                table.insert(_unReplaceAbleBlocks, _tempBlock)
            end
        end
    end

    self.blockMovingBool = true --开始移动

    local _replaceAbleGridsNew = {} --随机
    while #_replaceAbleGrids > 0 do --_replaceAbleGrids与_replaceAbleBlocks等长
        local _randomIndex = math.random(1, #_replaceAbleGrids)
        table.insert(_replaceAbleGridsNew, _replaceAbleGrids[_randomIndex])
        table.remove(_replaceAbleGrids, _randomIndex)
    end
    --//DOINGTHINGS
    for i = 1, #_replaceAbleGridsNew do --摆放
        local _tempGrid = _replaceAbleGridsNew[i]
        local _tempBlock = _replaceAbleBlocks[i]
        _tempBlock:setCR(_tempGrid.col, _tempGrid.row)
        _tempBlock:moveToSelfCR(self.replaceTime, true, "replace")
        local _fromWorldPos =self:convertToWorldSpace(cc.p(_tempBlock:getPositionX(),_tempBlock:getPositionY()))
        local _targetWorldPos =self:convertToWorldSpace(cc.p(_tempGrid.x,_tempGrid.y))
        self:createCureMotionBetweenBlocks(_tempBlock.type,_fromWorldPos,_targetWorldPos,self.replaceTime)
    end
end

function c_main_three_blocks:allBlockVisible(isVisible_)
    for i = 1, self.colMax do
        for j = 1, self.rowMax do
            local _tempBlock = self:getBlockByCR(i, j)
            if _tempBlock then
                _tempBlock:setVisible(isVisible_)
            end
        end
    end
end

--查找可能
function c_main_three_blocks:lookForPossibles()
    local _tempBlocks = {}
    for _row = self.rowMax, 1, -1 do --row
        for _col = 1, self.colMax do --col
            --当前的格子存在才能构成可能。没有格子的话，就没法交换block到这个上面
            if self:getGridByCR(_col, _row) ~= nil then
                _tempBlocks = self:matchPattern(_col,
                    _row,
                    { 1, 0 },
                    {
                        {
                            { -1, 0 },
                            { -2, 0 },
                            { -1, -1 },
                            { -1, 1 }
                        },
                        {
                            { 2, 0 },
                            { 2, -1 },
                            { 2, 1 },
                            { 3, 0 }
                        }
                    })
                if _tempBlocks then return _tempBlocks end
                _tempBlocks = self:matchPattern(_col, _row, { 2, 0 }, { { { 1, 0 }, { 1, -1 }, { 1, 1 } } })
                if _tempBlocks then return _tempBlocks end
                _tempBlocks = self:matchPattern(_col, _row, { 0, 1 }, { { { 0, -1 }, { 0, -2 }, { -1, -1 }, { 1, -1 } }, { { 0, 2 }, { -1, 2 }, { 1, 2 }, { 0, 3 } } })
                if _tempBlocks then return _tempBlocks end
                _tempBlocks = self:matchPattern(_col, _row, { 0, 2 }, { { { 0, 1 }, { -1, 1 }, { 1, 1 } } })
                if _tempBlocks then return _tempBlocks end
            end
        end
    end
    return nil
end

--寻找特殊的两个
function c_main_three_blocks:lookForSpecial()
    for _row = self.rowMax, 1, -1 do --row
        for _col = 1, self.colMax do --col
            local _swapType = nil
            local _currentBlock = self:getBlockByCR(_col, _row)
            if _currentBlock then
                local _nextBlock_h = self:getBlockByCR(_col + 1, _row)
                if _nextBlock_h then
                    _swapType = self:getTwoBlockSwapType(_currentBlock, _nextBlock_h)
                    if _swapType then
                        return { _currentBlock, _nextBlock_h }
                    end
                end
                if _swapType == nil then
                    local _nextBlock_v = self:getBlockByCR(_col, _row - 1)
                    if _nextBlock_v then
                        _swapType = self:getTwoBlockSwapType(_currentBlock, _nextBlock_v)
                        if _swapType then
                            return { _currentBlock, _nextBlock_v }
                        end
                    end
                end
            end
        end
    end
    return nil
end

--
function c_main_three_blocks:matchPattern(col_, row_, mustHave_, needOne_)
    local _tempBlock = self:getBlockByCR(col_, row_)
    local _tempBlocks = {}
    if _tempBlock and _tempBlock:matchAble() then
        local _tempBlocks = { _tempBlock }
        local _thisType = _tempBlock.type
        if self:matchTypeMust(col_ + mustHave_[1], row_ + mustHave_[2], _thisType) == false then
            return nil
        else
            table.insert(_tempBlocks, self:getBlockByCR(col_ + mustHave_[1], row_ + mustHave_[2]))
        end
        for i = 1, #needOne_ do
            local _eachNeedOne = needOne_[i]
            for j = 2, #_eachNeedOne do
                if self:matchTypeNeed(col_ + _eachNeedOne[j][1], row_ + _eachNeedOne[j][2], _thisType, col_ + _eachNeedOne[1][1], row_ + _eachNeedOne[1][2]) then
                    table.insert(_tempBlocks, self:getBlockByCR(col_ + _eachNeedOne[j][1], row_ + _eachNeedOne[j][2]))
                    table.insert(_tempBlocks, self:getBlockByCR(col_ + _eachNeedOne[1][1], row_ + _eachNeedOne[1][2]))
                    return _tempBlocks
                end
            end
        end
    end
    return nil
end

function c_main_three_blocks:matchTypeMust(col_, row_, type_)
    if self:getGridByCR(col_, row_) == nil then
        return false
    end
    local _tempBlock = self:getBlockByCR(col_, row_)
    if _tempBlock then
        return _tempBlock.type == type_
    else
        return false
    end
end

function c_main_three_blocks:matchTypeNeed(col_, row_, type_, toCol_, toRow_)
    if self:getGridByCR(toCol_, toRow_) == nil then
        return false
    end
    local _toBlock = self:getBlockByCR(toCol_, toRow_)
    if _toBlock == nil or _toBlock:moveAble() == false or _toBlock:swapAble() == false then
        return false
    end
    local _tempBlock = self:getBlockByCR(col_, row_)
    if _tempBlock and _tempBlock:moveAble() and _tempBlock:swapAble() then
        return _tempBlock.type == type_
    else
        return false
    end
end

--寻找匹配的
function c_main_three_blocks:lookForMatches()
    local _matchList = {}
    local _row = 0
    local _col = 0
    for _row = 1, self.rowMax do --row
        _col = 1
        while _col <= self.colMax do --col
            local match = self:getMatchHoriz(_col, _row)
            if #match > 2 then
                table.insert(_matchList, match)
                _col = _col + #match
            else
                _col = _col + 1
            end
        end
    end
    for _col = 1, self.colMax do --col
        _row = 1
        while _row <= self.rowMax do --row
            local match = self:getMatchVert(_col, _row)
            if #match > 2 then
                table.insert(_matchList, match)
                _row = _row + #match
            else
                _row = _row + 1
            end
        end
    end
    return _matchList
end

--获取横向
function c_main_three_blocks:getMatchHoriz(col_, row_)
    local _currentBlock = self:getBlockByCR(col_, row_)
    local _match = {}
    if _currentBlock and _currentBlock:matchAble() then
        table.insert(_match, _currentBlock)
        for i = col_ + 1, self.colMax do
            local _tempBlock = self.blocks[i][row_]
            if _tempBlock and _currentBlock.type == _tempBlock.type then
                table.insert(_match, _tempBlock)
            else
                return _match
            end
        end
    end
    return _match
end

--获取纵向
function c_main_three_blocks:getMatchVert(col_, row_)
    local _currentBlock = self:getBlockByCR(col_, row_)
    local _match = {}
    if _currentBlock and _currentBlock:matchAble() then
        table.insert(_match, _currentBlock)
        for i = row_ + 1, self.rowMax do
            local _tempBlock = self.blocks[col_][i]
            if _tempBlock and _currentBlock.type == _tempBlock.type then
                table.insert(_match, _tempBlock)
            else
                return _match
            end
        end
    end
    return _match
end

--btn click call back---------------------------------------------------
function c_main_three_blocks:btnClicked(btnName_, rollName_, listName_, itemDataDict_)
    c_main_three_blocks.super.btnClicked(self, btnName_, rollName_, listName_, itemDataDict_)
end

function c_main_three_blocks:onCreate()
    c_main_three_blocks.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_three_blocks:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_three_blocks.super.onDestory(self)
end

return c_main_three_blocks
