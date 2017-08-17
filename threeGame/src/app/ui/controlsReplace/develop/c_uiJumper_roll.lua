--class define--------------------------------------------------------
local C_disRoll=require("src.app.base.ui.disRoll")
local c_uiJumper_roll = class("c_uiJumper_roll",C_disRoll)

--ui create------------------------------------------
function c_uiJumper_roll:ctor(params_)
    c_uiJumper_roll.super.ctor(self,params_)
    self.className="uiJumper_roll"
    self.moduleName="develop"
    self.layerType="roll"
end

--init data and place------------------------------------------
function c_uiJumper_roll:init(initDict_)
    c_uiJumper_roll.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--btn click call back---------------------------------------------------
function c_uiJumper_roll:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    assert(false,"ERROR disRoll 不会相应任何按钮点击事件")
end

function c_uiJumper_roll:onCreate()
    c_uiJumper_roll.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_uiJumper_roll:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_uiJumper_roll.super.onDestory(self)
end

return c_uiJumper_roll