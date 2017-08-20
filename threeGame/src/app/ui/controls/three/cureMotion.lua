local cureMotion = class("cureMotion",
    function()
        local ret = cc.Layer:create()
        ret:setAnchorPoint(cc.p(0, 0))
        return ret
    end)

--container_ 实际容器
--_fromWorldPos 触发点的全局坐标
--_targetWorldPos 终点的全局坐标
--disPlay_ 显示对象
--trailMotion_ 轨迹对象
--moveTime_ 移动时间，这个根据Trail的动画来确认了
--waitTime_ 移动以后的等待时间。可能不是立刻就要消除对象
--callback_ 回调
--logicalParent_ 轨迹动画初始化，需要一个DisUI来驱动
function cureMotion:ctor(container_ , childIndex_,_fromWorldPos , _targetWorldPos ,disPlay_ ,trailMotion_ , moveTime_ ,waitTime_, callback_,logicalParent_,trailCount_)
    --初始化摆放
    container_:addChild(self,childIndex_)
    -- 转换坐标到container_内
    local _targetLocalPos = container_:convertToNodeSpace(_targetWorldPos)
    local _fromLocalPos = container_:convertToNodeSpace(_fromWorldPos)
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
    local _trail 
    local _trailCount = math.random(1,_trailTypeMax)
    if trailCount_ then
        _trailCount = trailCount_%_trailTypeMax +1
    else
        _trailCount = 1
    end

    _trail = require("src.app.ui.controls.common.c_move_trail_"..tostring(_trailCount)).new()

    _trail.name="trail"
    -- 只放到uiList中，这样可以更新的到
    table.insert(logicalParent_.uiList,_trail)
    -- 设置大小
    
    _trail.currentScale = _dis/500
    _trail:setScale(_trail.currentScale)
    _trail:init(nil)
    _trail.container.pic:setVisible(false)
    self:addChild(_trail)

    if disPlay_ then
        _trail.container:addChild(disPlay_)
        disPlay_:setRotation(-_deg)
        disPlay_:setScale(1/_trail.currentScale)
    end

    if trailMotion_ then
        _trail.trailMotion = trailMotion_
        trailMotion_:setPosition(cc.p(_dis,0))
        self:addChild(trailMotion_)
    end
    
    local function endCallBack( )
        self:removeFromParent()
        table.removebyvalue(logicalParent_.uiList,_trail)
    end
    local function moveEndCallBack( )
        if callback_ then
            callback_(self)
        end
    end
    self:runAction(cc.Sequence:create(cc.DelayTime:create(moveTime_), cc.CallFunc:create(moveEndCallBack),cc.DelayTime:create(waitTime_), cc.CallFunc:create(endCallBack)))

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