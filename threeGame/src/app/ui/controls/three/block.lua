local block = class("block",
    function()
        local ret = cc.Layer:create()
        ret:setAnchorPoint(cc.p(0, 0))
        return ret
    end)
local Buffer = require "src.app.ui.controls.three.buffer"

function block:ctor(threeGame_)
    --显示
    -- self.effectAni = nil --0 脚下的那个动画
    self.blockPic = nil --1
    self.effectAni = nil --2
    self.levelPic = nil --3
    --闪光动画
    self.shinePic = nil --4
    --
    self.bufferPic=nil--5
    --转换动画
    self.transPic = nil --6
    --提示动画
    self.tipAni = nil --7
    --激活动画
    self.activePic = nil --8

    self.parent_blocks = threeGame_

    self.isDebug = self.parent_blocks.main.isDebug
    --当前的游戏ID
    self.currentLevelID = self.parent_blocks.main.currentLevelID
    --动画控制引用
    self.displayUtils = displayUtils:getInstance()
    --类型
    self.type = 0
    --初始化的类型
    self.initType = 0
    self.initLevel = ""

    self.bufferIns = nil

    --附加状态
    self.level = nil
    --将要变化成的状态
    self.changingBoo = false
    self.toType = 0
    self.toLevel = nil
    --倒计时
    self.roundCountDown = 0
    --匹配过了?
    self.match = false
    --连锁反应导致消除
    self.chainMatch = false
    --临近有Match的？
    self.nearMatch = false
    --特殊的block在被chainMatch的时候，先处于激活状态。
    self.activeBoo =false
    --移动中？
    self.fallingBoo = false
    --移除标记
    self.removed = false
    --
    --self.moveEndBool = false
    --目标地块
    self.targetGrids = {}

    --动画
    self.moveEndActionTag = 1111

    --行列号
    self.col = 0
    self.row = 0

    --是否已经匹配
    self.match = false

    if self.isDebug then
        self.displayUtils.ttfConfig.fontSize = 40
        self.displayUtils.ttfConfig.outlineSize = 1
        self.typeLabel = cc.Label:createWithTTF(self.displayUtils.ttfConfig, "0", cc.TEXT_ALIGNMENT_CENTER)
        self.typeLabel:enableOutline(cc.c4b(0, 0, 0, 255))
        self.typeLabel:setLineBreakWithoutSpace(true)
        self.typeLabel:setTextColor(cc.c4b(255, 255, 255, 255))
        self.typeLabel:setHeight(60)
        self.typeLabel.name = "typeLabel"
        self.displayUtils:placeAndAddChildToContainer(self.typeLabel, self, 0.50, 0.50, 0, 5, 0.00, 1.00, 1.00, 1.00, 30)

        self.displayUtils.ttfConfig.fontSize = 20
        self.colLabel = cc.Label:createWithTTF(self.displayUtils.ttfConfig, "0", cc.TEXT_ALIGNMENT_CENTER)
        self.colLabel:enableOutline(cc.c4b(0, 0, 0, 255))
        self.colLabel:setLineBreakWithoutSpace(true)
        self.colLabel:setTextColor(cc.c4b(255, 255, 255, 255))
        self.colLabel:setHeight(30)
        self.colLabel.name = "colLabel"
        self.displayUtils:placeAndAddChildToContainer(self.colLabel, self, 0.50, 0.50, -20, -10, 0.00, 1.00, 1.00, 1.00, 30)

        self.displayUtils.ttfConfig.fontSize = 20
        self.rowLabel = cc.Label:createWithTTF(self.displayUtils.ttfConfig, "0", cc.TEXT_ALIGNMENT_CENTER)
        self.rowLabel:enableOutline(cc.c4b(0, 0, 0, 255))
        self.rowLabel:setLineBreakWithoutSpace(true)
        self.rowLabel:setTextColor(cc.c4b(255, 255, 255, 255))
        self.rowLabel:setHeight(30)
        self.rowLabel.name = "rowLabel"
        self.displayUtils:placeAndAddChildToContainer(self.rowLabel, self, 0.50, 0.50, 20, -10, 0.00, 1.00, 1.00, 1.00, 30)

        self.displayUtils.ttfConfig.fontSize = 20
        self.moveLabel = cc.Label:createWithTTF(self.displayUtils.ttfConfig, "", cc.TEXT_ALIGNMENT_CENTER)
        self.moveLabel:enableOutline(cc.c4b(0, 0, 0, 255))
        self.moveLabel:setLineBreakWithoutSpace(true)
        self.moveLabel:setTextColor(cc.c4b(255, 0, 0, 255))
        self.moveLabel:setHeight(30)
        self.moveLabel.name = "moveLabel"
        self.displayUtils:placeAndAddChildToContainer(self.moveLabel, self, 0.50, 0.50, 0, -10, 0.00, 1.00, 1.00, 1.00, 30)

        self.displayUtils.ttfConfig.fontSize = 20
        self.levelLabel = cc.Label:createWithTTF(self.displayUtils.ttfConfig, "", cc.TEXT_ALIGNMENT_CENTER)
        self.levelLabel:enableOutline(cc.c4b(0, 0, 0, 255))
        self.levelLabel:setLineBreakWithoutSpace(true)
        self.levelLabel:setTextColor(cc.c4b(0, 255, 0, 255))
        self.levelLabel:setHeight(30)
        self.levelLabel.name = "levelLabel"
        self.displayUtils:placeAndAddChildToContainer(self.levelLabel, self, 0.50, 0.50, 0, -15, 0.00, 1.00, 1.00, 1.00, 30)
    end

    -- local function onNodeEvent(event)
    --     if "enter" == event then
    --         self:onEnter()
    --     elseif "exit" == event then
    --         self:onExit()
    --     end
    -- end

    -- self:registerScriptHandler(onNodeEvent) --添加添加移除事件
end

--显示提示
function block:showTip(time_)
    self.tipAni = require("src.app.ui.controls.ani.c_block_tip").new()
    self.tipAni.name="disMc"
    self.tipAni:init(nil)
    self.tipAni:setPosition(cc.p(self:getPositionX(),self:getPositionY()))
    table.insert(self.parent_blocks.uiList,self.tipAni)
    self.parent_blocks:addChild(self.tipAni,self.parent_blocks.blockCanSwapTipIndex)
end

--清理提示
function block:clearTip()
    if self.tipAni then --特效动画
        if self.tipAni.name=="disMc" then
            table.removebyvalue(self.parent_blocks.uiList,self.tipAni)
            self.tipAni:onDelete()
        end
        self.tipAni:removeFromParent(true)
        self.tipAni = nil
    end
end

--重新初始化
function block:reinit(type_, level_, createDis_)
    --获取类型·
    self.type = type_
    self.level = level_
    --清理提示
    self:clearTip()
    if createDis_ then self:createDisplay() end
    if self.isDebug then self.typeLabel:setString(string.format("%d", self.type)) end
end

function block:addBufferByType(type_)
    if self.currentLevelID ~= self.parent_blocks.main.currentLevelID then -- 只有在当前局创建的block才会相应。测试的时候，会在任意时间点跳关。免得上一关的block，操作的新关卡的数据
        return
    end
    if type_ == 0 then
        return
    end

    if self.bufferIns then --叠加
        if self.bufferIns.type == 2 and type_ == 2 then
            self.bufferIns:reInitByType(3, "ani_transition")
        else
            print("ERROR 除了类别2,其他都不能叠加")
        end
    else
        self.bufferIns = Buffer.new(self.parent_blocks, self)
        self.bufferIns:reInitByType(type_, "ani_transition")
        self:addChild(self.bufferIns, 5)
    end
end

--减少一层
function block:bufferCureOne()
    if self.bufferIns then
        self.bufferIns:clearOne()
        self:reset()
    end
end

--重置
function block:reset()
    self:placeInPos()
    self.match = false
    self.chainMatch = false
    self.nearMatch = false
    self.fallingBoo = false
    self.activeBoo =false
    if self.activePic and self.activePic:getParent() then
        self.activePic:removeFromParent()
        self.activePic = nil
    end
end

function block:activeShow()
    self.activeBoo = true
    self.activePic = self.displayUtils:createAnimation("ani_move", true)
    self:addChild(self.activePic, 8)
end

--变更成目标类型
function block:changeToSelfType()
    self:reinit(self.toType, self.toLevel, true)
    self.toType = 0
    self.toLevel = nil
    self.changingBoo = false
    self:createDisplay() --创建显示
    self.transPic = self.displayUtils:createAnimation("ani_transition", false)
    self:addChild(self.transPic, 6)
end

--变成什么
function block:changeTo(toType_, toLevel_)
    self.toType = toType_
    self.toLevel = toLevel_
    self.changingBoo = true
end

--是否 处于正在变化的状态
function block:isChanging()
    if self.changingBoo then
        return true
    else
        return false
    end
end

function block:setCR(col_, row_)
    if self.currentLevelID ~= self.parent_blocks.main.currentLevelID then -- 只有在当前局创建的block才会相应。测试的时候，会在任意时间点跳关。免得上一关的block，操作的新关卡的数据
        return
    end
    if self.col ~= 0 and self.row ~= 0 then --规避初始化
        --这个地块里面拿出去
        if self.parent_blocks.blocks[self.col][self.row] == self then
            self.parent_blocks.blocks[self.col][self.row] = nil
        else
            --print("TODO setCR 这个地块上 还有 别的 方块")
        end
    end

    self.col = col_
    self.row = row_
    if self.isDebug then self.colLabel:setString(string.format("%d", self.col)) end
    if self.isDebug then self.rowLabel:setString(string.format("%d", self.row)) end
    --放到另外一个地块上
    self.parent_blocks.blocks[col_][row_] = self
end

--是否可闪
function block:shineAble()
    if self.bufferIns == nil then
        return false
    end
    if self.type <= 9 and self.type >= 1 then
        if self.level == nil or self.level == "" then
            return true
        end
    end
    return false
end

--闪耀
function block:shine()
    if self:shineAble() == false then
        return
    end
    self.shinePic = self.displayUtils:createAnimation("ani_standby", false, self:shinePicClear())
    self:addChild(self.shinePic, 4)
end

--清闪
function block:shinePicClear()
    if self.shinePic then --发光
        if self.shinePic.name=="disMc" then
            table.removebyvalue(self.parent_blocks.uiList,self.shinePic)
            self.shinePic:onDelete()
        end
        self.shinePic:removeFromParent(true)
        self.shinePic = nil
    end
end

--是否正在闪
function block:isShining()
    if self.shinePic then
        return true
    else
        return false
    end
end

function block:cleanDisplay()
    --清除之前显示元素
    if self.blockPic then --宝石图片
        if self.blockPic.name=="disMc" then
            table.removebyvalue(self.parent_blocks.uiList,self.blockPic)
            self.blockPic:onDelete()
        end
        self.blockPic:removeFromParent(true)
        self.blockPic = nil
    end
    if self.levelPic then --标示
        if self.levelPic.name=="disMc" then
            table.removebyvalue(self.parent_blocks.uiList,self.levelPic)
            self.levelPic:onDelete()
        end
        self.levelPic:removeFromParent(true)
        self.levelPic = nil
    end

    if self.effectAni then --特效动画
        if self.effectAni.name=="disMc" then
            table.removebyvalue(self.parent_blocks.uiList,self.effectAni)
            self.effectAni:onDelete()
        end
        self.effectAni:removeFromParent(true)
        self.effectAni = nil
    end

    self:shinePicClear()
end
function block:createDisplay()
    self:cleanDisplay()

    --获取动画
    local _aniMC = self.parent_blocks.main:getAniMcByType(self.type)
    if _aniMC then
        self.blockPic = _aniMC
        self.blockPic.name="disMc"
        self.blockPic:init(nil)
        table.insert(self.parent_blocks.uiList,self.blockPic)
    else
        local _picFileName =self.parent_blocks.main:getBlockPicNameByType(self.type)
        self.blockPic = cc.Sprite:create(_picFileName)
        self.blockPic:setAnchorPoint(cc.p(0.50, 0.50))
    end
    self:addChild(self.blockPic,1)

    if self.level and self.level ~= "" then
        if self.type > 9 then
            print("ERROR 九个基本颜色之外的类型，不能有level   self.type : " .. self.type)
        end
        if self.level == "x_h" then
            self.levelPic = cc.Sprite:create("icon_ball_x_h.png")
            -- self.levelPic = require("src.app.ui.controls.common.c_block_x").new()
            -- self.levelPic.name="disMc"
            -- self.levelPic:init(nil)
            -- -- 只放到uiList中，这样可以更新的到
            -- table.insert(self.parent_blocks.uiList,self.levelPic)
        elseif self.level == "x_v" then
            self.levelPic = cc.Sprite:create("icon_ball_x_h.png")
            -- self.levelPic = require("src.app.ui.controls.common.c_block_x").new()
            -- self.levelPic.name="disMc"
            -- self.levelPic:init(nil)
            -- -- 只放到uiList中，这样可以更新的到
            -- table.insert(self.parent_blocks.uiList,self.levelPic)
            self.levelPic:setRotation(90)
        elseif self.level == "z" then
            self.levelPic = cc.Sprite:create("icon_ball_z.png")
        else
            print("ERROR 不支持的level : " .. self.level)
        end
        self.levelPic:setBlendFunc(cc.blendFunc(gl.DST_COLOR, gl.ONE_MINUS_SRC_ALPHA))
        self:addChild(self.levelPic, 3)

        self.effectAni = require("src.app.ui.controls.seq.c_fire_around").new()
        self.effectAni.name="disMc"
        self.effectAni:init(nil)
        self.effectAni:setPosition(cc.p(0,-30))
        table.insert(self.parent_blocks.uiList,self.effectAni)
        self:addChild(self.effectAni, 0)

        if self.isDebug then self.levelLabel:setString(self.level) end
    else
        if self.isDebug then self.levelLabel:setString("") end
    end
end

--移动向自己的所在位置
function block:moveToSelfCR(time_, countMove_, moveType_)
    if self.currentLevelID ~= self.parent_blocks.main.currentLevelID then -- 只有在当前局创建的block才会相应。测试的时候，会在任意时间点跳关。免得上一关的block，操作的新关卡的数据
        return
    end
    self:moveToGridByCR(self.col, self.row, time_, countMove_, moveType_)
end

--获得自己所在的地块的坐标
function block:getSelfGridPos()
    if self.currentLevelID ~= self.parent_blocks.main.currentLevelID then -- 只有在当前局创建的block才会相应。测试的时候，会在任意时间点跳关。免得上一关的block，操作的新关卡的数据
        return
    end
    local _grid = self.parent_blocks:getGridByCR(self.col, self.row)
    return cc.p(_grid:getPositionX(), _grid:getPositionY())
end

--按照这个时间向那个cr的grids所在地移动
function block:moveToGridByCR(col_, row_, time_, countMoveBoo_, moveType_)
    if self.currentLevelID ~= self.parent_blocks.main.currentLevelID then -- 只有在当前局创建的block才会相应。测试的时候，会在任意时间点跳关。免得上一关的block，操作的新关卡的数据
        return
    end
    local _grid = self.parent_blocks:getGridByCR(col_, row_)
    if time_ == 0 then --立刻到位
        self:setPosition(cc.p(_grid:getPositionX(), _grid:getPositionY()))
    else --延时
        if countMoveBoo_ then --个数统计操作
            self.parent_blocks.movingBlockNum = self.parent_blocks.movingBlockNum + 1
        end

        local _moveAction

        --一些缓动的预设类型
        if moveType_ then
            if moveType_ == "swap" then
                _moveAction = cc.EaseSineInOut:create(cc.MoveTo:create(time_, cc.p(_grid:getPositionX(), _grid:getPositionY())))
            elseif moveType_ == "replace" then
                _moveAction = cc.EaseSineInOut:create(cc.MoveTo:create(time_, cc.p(_grid:getPositionX(), _grid:getPositionY())))
            else
                print("ERROR 非预设缓动类型 : " .. moveType_)
            end
        else
            _moveAction = cc.MoveTo:create(time_, cc.p(_grid:getPositionX(), _grid:getPositionY()))
        end

        if countMoveBoo_ then -- 非初始化的block,具有移动能力的。
            local function moveEnd()
                --self:placeInPos()--位置精确
                self.parent_blocks.movingBlockNum = self.parent_blocks.movingBlockNum - 1
                self.parent_blocks:checkFallDown()
            end

            local _funAction = cc.CallFunc:create(moveEnd)
            local _seqAction = cc.Sequence:create(_moveAction, _funAction)
            self:runAction(_seqAction)
            
        else
            self:runAction(_moveAction)
        end
    end
end

function block:swapAnimation(time_,isV_)
    local _tempScaleX =1
    local _tempScaleY =1
    if isV_ then
        _tempScaleX = 0.5
        _tempScaleY = 1.5
    else
        _tempScaleX = 1.5
        _tempScaleY = 0.5
    end
    local _scale1= cc.EaseSineInOut:create(cc.ScaleTo:create(time_*0.5,_tempScaleX,_tempScaleY));
    local _scale2= cc.EaseSineInOut:create(cc.ScaleTo:create(time_*0.5,1));
    local _seqAction = cc.Sequence:create(_scale1,_scale2)
    self:runAction(_seqAction)
end

function block:swapBackAnimation(time_,isV_)
    local _tempScaleX =1
    local _tempScaleY =1
    if isV_ then
        _tempScaleX = 0.7
        _tempScaleY = 1.3
    else
        _tempScaleX = 1.3
        _tempScaleY = 0.7
    end
    local _scale1= cc.EaseBounceIn:create(cc.ScaleTo:create(time_*0.5,_tempScaleX,_tempScaleY));
    local _scale2= cc.EaseBounceOut:create(cc.ScaleTo:create(time_*0.5,1));
    local _seqAction = cc.Sequence:create(_scale1,_scale2)
    self:runAction(_seqAction)
end

function block:moveEndAnimation(time_)
    local _scale1= cc.EaseElasticIn:create(cc.ScaleTo:create(time_*0.5,1.3,0.8));
    local _scale2= cc.EaseElasticOut:create(cc.ScaleTo:create(time_*0.5,1));
    local _place1= cc.EaseBounceIn:create(cc.MoveTo:create(time_*0.5,cc.p(0,-15)));
    local _place2= cc.EaseBounceOut:create(cc.MoveTo:create(time_*0.5,cc.p(0,0)));

    local _seqAction = cc.Sequence:create(
        cc.Spawn:create(
            _scale1, _place1
        ),
        cc.Spawn:create(
            _scale2, _place2
        )
    )
    self.blockPic:runAction(_seqAction)
end

--是否能斜向移动
function block:leanMoveAble()
    local _selfLeanMoveAble = true
    if self.type == 11 or self:moveAble() == false then
        _selfLeanMoveAble = false
    end
    if self.bufferIns then
        return self.bufferIns:leanMoveAble() and _selfLeanMoveAble
    else
        return _selfLeanMoveAble
    end
end

--是否能移动
function block:moveAble()
    local _selfMoveAble = true
    if self.bufferIns then
        return self.bufferIns:moveAble() and _selfMoveAble
    else
        return _selfMoveAble
    end
end

--连锁反应 可行性
function block:chainAble()
    local _selfChainAble = true
    if self.type == 11 then
        _selfChainAble = false
    end
    if self.bufferIns then
        return self.bufferIns:chainAble() and _selfChainAble
    else
        return _selfChainAble
    end
end

--连锁的直线是否能穿越这个格子
function block:chainThroughAble()
    local _selfChainThroughAble = true
    if self.type == 11 then
        _selfChainThroughAble = false
    end
    if self.bufferIns then
        return self.bufferIns:chainThroughAble() and _selfChainThroughAble
    else
        return _selfChainThroughAble
    end
end

--是否可以交换
function block:swapAble()
    local _selfSwapAble = true
    if self.type == 11 or self:moveAble() == false then
        _selfSwapAble = false
    end
    if self.bufferIns then
        return self.bufferIns:swapAble() and _selfSwapAble
    else
        return _selfSwapAble
    end
end

--是否可以三消
function block:matchAble()
    if self.type >= 1 and self.type <= 9 then
        return true
    end
    return false
end

--重置位置是否包含这个
function block:replaceAble()
    local _selfReplaceAble = true
    if self.type == 11 then
        _selfReplaceAble = false
    end
    if self.bufferIns then
        return self.bufferIns:replaceAble() and _selfReplaceAble
    else
        return _selfReplaceAble
    end
end

--放到格子所在的位置
function block:placeInPos()
    local _tempGrid = self.parent_blocks:getGridByCR(self.col, self.row)
    self:setPosition(_tempGrid:getPositionX(), _tempGrid:getPositionY())
    self:setLocalZOrder(self.parent_blocks.blockPlaceIndex + self.parent_blocks.rowMax-self.row)
end

function block:addTargetGrid(targetGrids_)
    table.insert(self.targetGrids, targetGrids_)
end
function block:getRemoveEffectByType()

end
function block:putEffectIntoThreeGame()
    local _tempSp = self.displayUtils:createAnimation("xiaochudonghua")
    if self.type <10 then
        _tempSp = self.displayUtils:createAnimation("xiaochudonghua")
    elseif self.type == 11 then
        _tempSp = self.displayUtils:createAnimation("ani_move")
    end
    _tempSp:setPosition(cc.p(self:getPositionX(), self:getPositionY()))
    if self.match then
        _tempSp:setBlendFunc(cc.blendFunc(gl.SRC_ALPHA, gl.ONE))
    elseif self.chainMatch then
        _tempSp:setBlendFunc(cc.blendFunc(gl.ONE , gl.ONE))
    end
    self.parent_blocks:addChild(_tempSp, self.parent_blocks.blockEffectIndex) --特效层添加特效
end


function block:removeByAnimation(time_)
    if self.removed == false then
        -- 老动画
        self:placeInPos()
        self.removed = true
        --这个地块里面拿出去
        self.parent_blocks.blocks[self.col][self.row] = nil

        -- 消除了播放一个消除特效--------------------------
        local function breakEffectCallBack()
            self:putEffectIntoThreeGame()
        end
        local _breakEffectAction = cc.Sequence:create(
            cc.DelayTime:create(time_*0.8),
            cc.CallFunc:create(breakEffectCallBack)
        )
        self:runAction(_breakEffectAction)
        -- 消除了之后，清除--------------------------
        local function removeCallBack()
            self:removeFromGame()
        end

        local _delayRemoveAction = cc.Sequence:create(
            cc.EaseExponentialIn:create(
                cc.RotateTo:create(time_*0.5,180)
            ),
            cc.Spawn:create(
                cc.EaseExponentialOut:create(
                    cc.RotateTo:create(time_*0.5 ,359)
                ),
                cc.EaseElasticOut:create(
                    cc.ScaleTo:create(time_*0.5 ,0.5)
                )
            ),
            -- cc.EaseElasticIn:create(
            --     cc.RotateTo:create(time_*0.5,180)
            -- ),
            -- cc.EaseElasticOut:create(
            --     cc.RotateTo:create(time_*0.5 ,359)
            -- ),
            cc.CallFunc:create(removeCallBack)
        )
        self:runAction(_delayRemoveAction)
    else
        print("ERROR 已经移除过了，不能再次移除")
    end
end

--移除清理
function block:removeFromGame()
    self:cleanDisplay()
    self:clearTip()
    local _threeCanMatchBlocks = self.parent_blocks.canMatchBlocks
    if _threeCanMatchBlocks then
        for i = 1, #_threeCanMatchBlocks do
            local _tempBlock = _threeCanMatchBlocks[i]
            if _tempBlock and _tempBlock == self then
                _threeCanMatchBlocks[i] = nil
                break
            end
        end
    end
    self:shinePicClear()
    self.displayUtils = nil
    self.targetGrids = nil
    self.parent_blocks = nil
    self.targetGrids = {}
    self:removeFromParent(true)
end

return block
