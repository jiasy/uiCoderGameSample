--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_circle_round_shine = class("c_circle_round_shine",C_disMC)

--ui create------------------------------------------
function c_circle_round_shine:ctor(params_)
    c_circle_round_shine.super.ctor(self,params_)
    self.className="circle_round_shine"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_circle_round_shine:init(initDict_)
    c_circle_round_shine.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)

end
--
function c_circle_round_shine:reset()
    --旋转属性
    self.targetScaleY = 1
    self.currentScaleY = 1
    self.currentRotateSpeed = 0
    self.targetRotateSpeed = 0
    self.currentR = 0
    self.targetR = 0
    self.currentRotation = 0
    --self:setScaleY(self.currentScaleY)
end
--
function c_circle_round_shine:resetRotationPos()
    self.currentRotation = self.currentRotation + self.currentRotateSpeed
    self.s1:setRotation(self.currentRotation*8)
    self.s2:setRotation(self.currentRotation*8+180)
    --self:setScaleY(self.currentScaleY)
end
--ui stateChange-------------------------------------
function c_circle_round_shine:stateChange(params_)
    --Logic here,then change state.
    c_circle_round_shine.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_circle_round_shine:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_circle_round_shine.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_circle_round_shine:onFrameName(frameName_)
    c_circle_round_shine.super.onFrameName(self,frameName_)

end

function c_circle_round_shine:onCreate()
    c_circle_round_shine.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_circle_round_shine:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_circle_round_shine.super.onDestory(self)
end

return c_circle_round_shine