--class define--------------------------------------------------------
local C_disUI = require("src.app.base.ui.disUI")
local c_main_hearts = class("c_main_hearts", C_disUI)

--ui create------------------------------------------
function c_main_hearts:ctor(params_)
    c_main_hearts.super.ctor(self, params_)
    self.className = "main_hearts"
    self.moduleName = "sample"
end

--init data and place------------------------------------------
function c_main_hearts:init(initDict_)
    c_main_hearts.super.init(self, initDict_)
    ----- ui init----------------------------------------------------------
    local _specialDict = {} --自定义数据初始化子UI
    local _avoidInitDict = {} --避免在这里进行初始化的UI名称做KEY的字典。
    --local _instance109Dict={}
    --_specialDict["instance109"]= _instance109Dict
    --_avoidInit["instance109"]="avoidInitHere"

    self:initSubUIs(_specialDict, _avoidInitDict)
end

--ui stateChange-------------------------------------
function c_main_hearts:stateChange(stateName_, rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main_hearts.super.stateChange(self, stateName_, rightNow_)
end

--btn click call back---------------------------------------------------
function c_main_hearts:btnClicked(btnName_, rollName_, listName_, itemDataDict_)
    c_main_hearts.super.btnClicked(self, btnName_, rollName_, listName_, itemDataDict_)
end

function c_main_hearts:onCreate()
    c_main_hearts.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_hearts:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_hearts.super.onDestory(self)
end

return c_main_hearts