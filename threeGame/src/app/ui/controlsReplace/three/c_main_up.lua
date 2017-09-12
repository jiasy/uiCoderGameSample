--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_main_up = class("c_main_up",C_disUI)

--ui create------------------------------------------
function c_main_up:ctor(params_)
    c_main_up.super.ctor(self,params_)
    self.className="main_up"
    self.moduleName="three"
end

--init data and place------------------------------------------
function c_main_up:init(initDict_)
    c_main_up.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _type11TargetDict={}
    --_specialDict["type11Target"]= _type11TargetDict
    --_avoidInit["type11Target"]="avoidInitHere"
    --local _instance339Dict={}
    --_specialDict["instance339"]= _instance339Dict
    --_avoidInit["instance339"]="avoidInitHere"
    --local _instance345Dict={}
    --_specialDict["instance345"]= _instance345Dict
    --_avoidInit["instance345"]="avoidInitHere"
    --local _instance351Dict={}
    --_specialDict["instance351"]= _instance351Dict
    --_avoidInit["instance351"]="avoidInitHere"
    --local _instance358Dict={}
    --_specialDict["instance358"]= _instance358Dict
    --_avoidInit["instance358"]="avoidInitHere"
    --local _sideLeftDict={}
    --_specialDict["sideLeft"]= _sideLeftDict
    --_avoidInit["sideLeft"]="avoidInitHere"
    --local _sideRightDict={}
    --_specialDict["sideRight"]= _sideRightDict
    --_avoidInit["sideRight"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui state change-------------------------------------
function c_main_up:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main_up.super.stateChange(self,stateName_,rightNow_)
end

--ui structure change-------------------------------------
function c_main_up:uiStructureChange()
    --界面结构变化，需要做的操作。
    c_main_up.super.uiStructureChange(self)
end

--btn click call back---------------------------------------------------
function c_main_up:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_up.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

function c_main_up:onCreate()
    c_main_up.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_up:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_up.super.onDestory(self)
end

return c_main_up