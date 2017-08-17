--class define--------------------------------------------------------
local C_disRoll=require("src.app.base.ui.disRoll")
local c_uiJumper_rollh = class("c_uiJumper_rollh",C_disRoll)

--ui create------------------------------------------
function c_uiJumper_rollh:ctor(params_)
    c_uiJumper_rollh.super.ctor(self,params_)
    self.className="uiJumper_rollh"
    self.moduleName="develop"
    self.layerType="roll"
end

--init data and place------------------------------------------
function c_uiJumper_rollh:init(initDict_)
    c_uiJumper_rollh.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--btn click call back---------------------------------------------------
function c_uiJumper_rollh:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    assert(false,"ERROR disRoll 不会相应任何按钮点击事件")
end

function c_uiJumper_rollh:onCreate()
    c_uiJumper_rollh.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_uiJumper_rollh:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_uiJumper_rollh.super.onDestory(self)
end

return c_uiJumper_rollh