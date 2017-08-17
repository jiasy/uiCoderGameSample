--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_main_three_downs = class("c_main_three_downs",C_disUI)

--ui create------------------------------------------
function c_main_three_downs:ctor(params_)
    c_main_three_downs.super.ctor(self,params_)
    self.className="main_three_downs"
    self.moduleName="three"
end

--init data and place------------------------------------------
function c_main_three_downs:init(initDict_)
    c_main_three_downs.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _down_2Dict={}
    --_specialDict["down_2"]= _down_2Dict
    --_avoidInit["down_2"]="avoidInitHere"
    --local _down_3Dict={}
    --_specialDict["down_3"]= _down_3Dict
    --_avoidInit["down_3"]="avoidInitHere"
    --local _down_4Dict={}
    --_specialDict["down_4"]= _down_4Dict
    --_avoidInit["down_4"]="avoidInitHere"
    --local _down_5Dict={}
    --_specialDict["down_5"]= _down_5Dict
    --_avoidInit["down_5"]="avoidInitHere"
    --local _down_6Dict={}
    --_specialDict["down_6"]= _down_6Dict
    --_avoidInit["down_6"]="avoidInitHere"
    --local _down_7Dict={}
    --_specialDict["down_7"]= _down_7Dict
    --_avoidInit["down_7"]="avoidInitHere"
    --local _down_8Dict={}
    --_specialDict["down_8"]= _down_8Dict
    --_avoidInit["down_8"]="avoidInitHere"
    --local _down_9Dict={}
    --_specialDict["down_9"]= _down_9Dict
    --_avoidInit["down_9"]="avoidInitHere"
    --local _down_1Dict={}
    --_specialDict["down_1"]= _down_1Dict
    --_avoidInit["down_1"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui state change-------------------------------------
function c_main_three_downs:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main_three_downs.super.stateChange(self,stateName_,rightNow_)
end

--ui structure change-------------------------------------
function c_main_three_downs:uiStructureChange()
    --界面结构变化，需要做的操作。
    c_main_three_downs.super.uiStructureChange(self)
end

--btn click call back---------------------------------------------------
function c_main_three_downs:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_three_downs.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

function c_main_three_downs:onCreate()
    c_main_three_downs.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_three_downs:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_three_downs.super.onDestory(self)
end

return c_main_three_downs