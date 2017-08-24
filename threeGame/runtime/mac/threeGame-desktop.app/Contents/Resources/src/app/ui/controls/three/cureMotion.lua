local cureMotion = class("cureMotion",
    function()
        local ret = cc.Layer:create()
        ret:setAnchorPoint(cc.p(0, 0))
        return ret
    end)

--层级关系
--container_ 一般来讲就是目标对象。 <不能放缩，也不能旋转，可以移动> 
--  self -> cureMotion : 放置在全局坐标 targetWorldPos_ 转换到container_中的坐标后的位置处
--    self.trail -> c_move_trail_xxx : 放置在(0,0)点 <这个是放缩的，用来匹配两点间的距离>
--      self.trail.container -> 显示对象的承载。这个就是轨迹移动的对象
--        self.trail.container.pic -> disPlay_ : 放置进来的显示对象 <根据 self.trail 的Scale，进行反向放缩，这样显示出来的东西才是1:1大小>
--self.trail.trailMotion 和 container 放置到同一个容器中 container_:getParent():addChild(self.trail.trailMotion,container_.getZOrder())
--  因为 container_ 是可以移动的。self.trail 在每一帧 同步 self.trail.container 的坐标在 self.trail.trailMotion:getParent() 中的坐标位置。

--container_ 实际容器 [不要做放缩，不要做旋转]
--fromWorldPos_ 触发点的全局坐标
--targetWorldPos_ 终点的全局坐标
--disPlay_ 显示对象
--trailMotion_ 轨迹对象
--moveTime_ 移动时间，这个根据Trail的动画来确认了
--waitTime_ 移动以后的等待时间。可能不是立刻就要消除对象
--callback_ 回调
--logicalParent_ 轨迹动画初始化，需要一个DisUI来驱动
--trailCount_ 连续的从trail中取轨迹，这样相邻的几次不可能出现重复的
function cureMotion:ctor(container_ , childIndex_,fromWorldPos_ , targetWorldPos_ ,disPlay_ ,trailMotion_ , moveTime_ ,waitTime_, callback_,logicalParent_,trailCount_)
    assert(container_:getScaleX()==1 and container_:getScaleY()==1 and container_:getRotation()==0,"ERROR : cureMotion 的 container，不能放缩,不能旋转 : "..container_.name)
    --初始化摆放
    container_:addChild(self,childIndex_)
    -- 转换坐标到container_内
    local _targetLocalPos = container_:convertToNodeSpace(targetWorldPos_)
    local _fromLocalPos = container_:convertToNodeSpace(fromWorldPos_)
    -- 计算角度和距离
    local _po1 = _targetLocalPos
    local _po2 = _fromLocalPos
    -- 起始位置，到终点的夹角
    local _disX = _po2.x - _po1.x
    local _disY = _po2.y - _po1.y
    local _deg = self:defFromDis(_disX,_disY)
    -- 原地不动
    if _deg == nil then
        return 
    end
    _deg = 360 -_deg
    --print ("_deg = ".. tostring(_deg))
    -- 旋转自己
    self:setRotation(_deg)
    -- 放到终点上
    self:setPosition(_targetLocalPos)
    -- 放在距离的位置上
    local _dis = math.sqrt(_disX*_disX +_disY*_disY)

    -- local _pic = cc.Sprite:create("greenPic.png")
    -- _pic:setAnchorPoint(cc.p(0,0.5))
    -- _pic:setScaleX(_dis/_pic:getContentSize().width)
    -- _pic:setScaleY(10/_pic:getContentSize().height)
    -- self:addChild(_pic)

    local _trailTypeMax = 20 
    local _trailCount = math.random(1,_trailTypeMax)
    if trailCount_ then
        _trailCount = trailCount_%_trailTypeMax +1
    else
        _trailCount = 1
    end

    self.trail = require("src.app.ui.controls.common.c_move_trail_"..tostring(_trailCount)).new()

    self.trail.name="trail"
    self.logicalParent = logicalParent_
    -- 只放到uiList中，这样可以更新的到
    table.insert(self.logicalParent.uiList,self.trail)
    -- 设置大小
    
    self.trail.currentScale = _dis/500
    self.trail:setScale(self.trail.currentScale)
    self.trail:init(nil)
    --flash 摆放轨迹移动的图片。隐藏掉。
    self.trail.container.pic:setVisible(false)
    self:addChild(self.trail)

    if disPlay_ then-- 显示对象，添加到承载容器中
        self.trail.container:addChild(disPlay_)
        disPlay_:setRotation(-_deg)
        disPlay_:setScale(1/self.trail.currentScale)
    end

    if trailMotion_ then
        self.trail.trailMotion = trailMotion_
        --把他跟跟随目标放置到同一个显示容器中,比他高两层。
        container_:getParent():addChild(trailMotion_,container_:getLocalZOrder()+2)
        --重新定位一次位置
        self.trail:setTrailPos()
    end
    
    local function endCallBack( )
        if callback_ then
            callback_(self)
        end
        self:cleanSelf()
    end
    local function moveEndCallBack( )
        -- if callback_ then
        --     callback_(self)
        -- end
    end
    self:runAction(cc.Sequence:create(cc.DelayTime:create(moveTime_), cc.CallFunc:create(moveEndCallBack),cc.DelayTime:create(waitTime_), cc.CallFunc:create(endCallBack)))

end

function cureMotion:cleanSelf()
    --移除掉轨迹
    if self.trail.trailMotion then
        --self.trail.trailMotion 并不在 self 的显示树中，所以要单独移除
        self.trail.trailMotion:removeFromParent(true)
    end
    table.removebyvalue(self.logicalParent.uiList,self.trail)
    self.logicalParent =nil
    self.trail:onDelete()
    self:stopAllActions()
    self:removeFromParent()
end

function cureMotion:defFromDis(disX_,disY_)
    local _deg = nil
    if disX_ == 0 and disY_==0 then
        --原地不动
    elseif disX_ == 0 then
        if disY_>0 then
            _deg =90
        else
            _deg =270
        end
    elseif disY_ == 0 then
        if disX_>0 then
            _deg =0
        else
            _deg =180
        end
    else
        local _tempDeg = math.deg(math.atan(disY_/disX_))
        if _tempDeg >0 then
            if disX_ <0 then
                _deg = _tempDeg +180
            else
                _deg = _tempDeg
            end
        else
            if disX_ <0 then
                _deg = _tempDeg +180
            else
                _deg = _tempDeg + 360
            end
        end
    end

    return _deg
end

return cureMotion