--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_move_trail_container = class("c_move_trail_container",C_disUI)

--ui create------------------------------------------
function c_move_trail_container:ctor(params_)
    c_move_trail_container.super.ctor(self,params_)
    self.className="move_trail_container"
    self.moduleName="common"
end

--init data and place------------------------------------------
function c_move_trail_container:init(initDict_)
    c_move_trail_container.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui state change-------------------------------------
function c_move_trail_container:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_move_trail_container.super.stateChange(self,stateName_,rightNow_)
end

--ui structure change-------------------------------------
function c_move_trail_container:uiStructureChange()
    --界面结构变化，需要做的操作。
    c_move_trail_container.super.uiStructureChange(self)
end

--btn click call back---------------------------------------------------
function c_move_trail_container:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_move_trail_container.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

function c_move_trail_container:onCreate()
    c_move_trail_container.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_move_trail_container:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_move_trail_container.super.onDestory(self)
end

return c_move_trail_container