local buffer = class("buffer",
    function()
        local ret = cc.Layer:create()
        ret:setAnchorPoint(cc.p(0, 0))
        return ret
    end)

function buffer:ctor(threeGame_, block_)
    self.threeGame = threeGame_
    self.displayUtils = self.threeGame.displayUtils
    self.block = block_
    self.bufferSp = nil
    self.type = 0
    self.girdCol = 0
    self.gridRow = 0
end

--初始化
function buffer:reInitByType(type_, animation_)
    if self.bufferSp then --特效动画
        self.bufferSp:stopAllActions()
        self.bufferSp:removeFromParent(true)
        self.bufferSp = nil
    end
    if animation_ ~= nil then
        self:addAnimation(animation_)
    end

    if type_ == 1 then -- 冰冻
        self.bufferSp = cc.Sprite:create("png_ice.png")
    elseif type_ == 2 then -- 锁链 1
        self.bufferSp = cc.Sprite:create("glassBlock_lock_1.png")
    elseif type_ == 3 then -- 锁链 2
        self.bufferSp = cc.Sprite:create("glassBlock_lock_2.png")
    end
    self.type = type_
    self.bufferSp:setAnchorPoint(cc.p(0.5, 0.5))
    self:addChild(self.bufferSp, 1)
end

function buffer:addAnimation(animationName_)
    local _animation = self.displayUtils:createAnimation(animationName_, false)
    if self.block then
        _animation:setPosition(cc.p(self.block:getPositionX(), self.block:getPositionY()))
    else
        local _tempGrid = self.threeGame:getGridByCR(self.girdCol, self.gridRow)
        if _tempGrid == nil then
            print("ERROR grid 位置不存在")
        else
            _animation:setPosition(cc.p(_tempGrid:getPositionX(), _tempGrid:getPositionY()))
        end
    end
    self.threeGame.containerLayer:addChild(_animation, self.threeGame.chainEffectIndex)
end

function buffer:clearOne()
    if self.type == 3 then --双重锁链 降级
        self:reInitByType(2, "ani_transition")
    else --其他直接移除
        self:clear()
    end
end

--清除
function buffer:clear()
    self:addAnimation("ani_transition")
    --移除
    self:removeFromGame()
end

--是否能斜向移动
function buffer:leanMoveAble()
    if self:moveAble() == false then
        return false
    end
    if self.type == 1 or self.type == 2 or self.type == 3 then
        return false
    end
    return true
end

--是否能移动
function buffer:moveAble()
    if self.type == 1 or self.type == 2 or self.type == 3 then
        return false
    end
    return true
end

--连锁反应 可行性
function buffer:chainAble()
    return true
end

--连锁的直线是否能穿越这个格子
function buffer:chainThroughAble()
    return true
end

--是否可以交换
function buffer:swapAble()
    if self:moveAble() == false then
        return false
    end
    if self.type == 1 or self.type == 2 or self.type == 3 then
        return false
    end
    return true
end

--是否可以三消
function buffer:matchAble()
    return true
end

--重置位置是否包含这个
function buffer:replaceAble()
    return true
end

--是否能移动--Grid
function buffer:passAble()
    return true
end

--是否可以临近消除
function buffer:nearClearAble()
    if self.type == 1 then
        return true
    elseif self.type == 2 or self.type == 3 then
        return false
    end
    return true
end

--移除清理
function buffer:removeFromGame()
    if self.block then
        self.block.bufferIns = nil
    else
        local _tempThreeGame = self.threeGame
        local _findBoo = false
        for i = 1, self.colMax do
            for j = 1, self.rowMax do
                local _tempGridBuffer = _tempThreeGame:getGridBufferByCR(i, j)
                if _tempGridBuffer and _tempGridBuffer == self then
                    _tempThreeGame.gridBuffers[i][j] = nil
                    _findBoo = true
                    break
                end
            end
            if _findBoo then
                break
            end
        end
    end
    self.block = nil
    self.displayUtils = nil
    self.threeGame = nil
    self:stopAllActions()
    self:removeFromParent(true)
end

return buffer