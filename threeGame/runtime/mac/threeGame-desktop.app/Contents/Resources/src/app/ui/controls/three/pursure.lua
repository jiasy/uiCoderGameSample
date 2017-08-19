local pursure = class("pursure",
    function()
        local ret = cc.Layer:create()
        ret:setAnchorPoint(cc.p(0, 0))
        return ret
    end)
-- target_ 追踪的目标
-- display_ 显示对象，放在自己内
-- callback_ 追上之后的回调
-- speed_ 速度
-- a_ 加速度
function pursure:ctor(container_,target_, display_, po_,callback_, speed_, a_,maxSpeed_)
    --初始化摆放
    container_:addChild(self)
    self:setPosition(po_)
    self:addChild(display_)
    self.speed = speed_ or 5
    self.maxSpeed= maxSpeed_ or 10
    self.a = a_ or 0
    self.target = target_
    self.callback = callback_
    self:updatePos()
end

function pursure:updatePos()
    local px, py = self:getPosition()
    local tx, ty = self.target:getPosition()
    local dx, dy = tx - px, ty - py
    if math.abs(dx) < self.maxSpeed and math.abs(dy) < self.maxSpeed then
        self.callback(self.target)
        self:removeFromParent(true)
        return
    end
    local radian = math.atan2(dy, dx)
    local vx, vy = self.speed * math.cos(radian), self.speed * math.sin(radian)
    self:setPosition(px + vx, py + vy)
    if self.speed > self.maxSpeed then
        self.speed = self.maxSpeed
    elseif self.speed < self.maxSpeed then
        self.speed = self.speed + self.a
    end

    local function callBack()
        self:updatePos()
    end
    self:runAction(cc.Sequence:create(cc.DelayTime:create(0.05),cc.CallFunc:create(callBack)))
end

return pursure