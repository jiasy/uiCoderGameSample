--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_circle_round_shine_circle = class("c_circle_round_shine_circle",C_disMC)

--ui create------------------------------------------
function c_circle_round_shine_circle:ctor(params_)
    c_circle_round_shine_circle.super.ctor(self,params_)
    self.className="circle_round_shine_circle"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_circle_round_shine_circle:init(initDict_)
    c_circle_round_shine_circle.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_circle_round_shine_circle:stateChange(params_)
    --Logic here,then change state.
    c_circle_round_shine_circle.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_circle_round_shine_circle:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_circle_round_shine_circle.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_circle_round_shine_circle:onFrameName(frameName_)
    c_circle_round_shine_circle.super.onFrameName(self,frameName_)

end

function c_circle_round_shine_circle:onCreate()
    c_circle_round_shine_circle.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_circle_round_shine_circle:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_circle_round_shine_circle.super.onDestory(self)
end

return c_circle_round_shine_circle