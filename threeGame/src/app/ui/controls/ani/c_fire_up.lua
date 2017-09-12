--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_fire_up = class("c_fire_up",C_disMC)

--ui create------------------------------------------
function c_fire_up:ctor(params_)
    c_fire_up.super.ctor(self,params_)
    self.className="fire_up"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_fire_up:init(initDict_)
    c_fire_up.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_fire_up:stateChange(params_)
    --Logic here,then change state.
    c_fire_up.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_fire_up:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_fire_up.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_fire_up:onFrameName(frameName_)
    c_fire_up.super.onFrameName(self,frameName_)

end

function c_fire_up:onCreate()
    c_fire_up.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_fire_up:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_fire_up.super.onDestory(self)
end

return c_fire_up