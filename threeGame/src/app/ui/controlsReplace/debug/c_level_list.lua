--class define--------------------------------------------------------
local C_disRoll=require("src.app.base.ui.disRoll")
local c_level_list = class("c_level_list",C_disRoll)

--ui create------------------------------------------
function c_level_list:ctor(params_)
    c_level_list.super.ctor(self,params_)
    self.className="level_list"
    self.moduleName="debug"
    self.layerType="roll"
end

--init data and place------------------------------------------
function c_level_list:init(initDict_)
    c_level_list.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--btn click call back---------------------------------------------------
function c_level_list:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    assert(false,"ERROR disRoll 不会相应任何按钮点击事件")
end

function c_level_list:onCreate()
    c_level_list.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_level_list:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_level_list.super.onDestory(self)
end

return c_level_list