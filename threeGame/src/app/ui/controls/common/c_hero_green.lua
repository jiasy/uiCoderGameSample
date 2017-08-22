--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_hero_green = class("c_hero_green",C_disMC)

--ui create------------------------------------------
function c_hero_green:ctor(params_)
    c_hero_green.super.ctor(self,params_)
    self.className="hero_green"
    self.moduleName="common"
end

--init data and place------------------------------------------
function c_hero_green:init(initDict_)
    c_hero_green.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_hero_green:stateChange(params_)
    --Logic here,then change state.
    c_hero_green.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_hero_green:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_hero_green.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back---------------------------------------------------
function c_hero_green:onFrameName(frameName_)
    c_hero_green.super.onFrameName(self,frameName_)

end

function c_hero_green:onCreate()
    c_hero_green.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_hero_green:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_hero_green.super.onDestory(self)
end

return c_hero_green