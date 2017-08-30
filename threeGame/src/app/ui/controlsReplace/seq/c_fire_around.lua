--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_fire_around = class("c_fire_around",C_disMC)

--ui create------------------------------------------
function c_fire_around:ctor(params_)
    c_fire_around.super.ctor(self,params_)
    self.className="fire_around"
    self.moduleName="seq"
end

--init data and place------------------------------------------
function c_fire_around:init(initDict_)
    c_fire_around.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_fire_around:stateChange(params_)
    --Logic here,then change state.
    c_fire_around.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_fire_around:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_fire_around.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_fire_around:onFrameName(frameName_)
    c_fire_around.super.onFrameName(self,frameName_)

end

function c_fire_around:onCreate()
    c_fire_around.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_fire_around:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_fire_around.super.onDestory(self)
end

return c_fire_around