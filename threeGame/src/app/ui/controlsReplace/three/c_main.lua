--[[
    调用方式 
        1.模块名[moduleName] + 界面类名[className] 的方式
            local _targetUi=uiControl:getInstance():jumpTo("three","main")
        2._targetUi在场景中，只有调用 init 才能用。否则只是空层
            _targetUi:init({})
]]
--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_main = class("c_main",C_disUI)

--ui create------------------------------------------
function c_main:ctor(params_)
    c_main.super.ctor(self,params_)
    self.className="main"
    self.moduleName="three"
    self.layerType="ui"
end

--init data and place------------------------------------------
function c_main:init(initDict_)
    c_main.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _yuzhouDict={}
    --_specialDict["yuzhou"]= _yuzhouDict
    --_avoidInit["yuzhou"]="avoidInitHere"
    --local _threeDict={}
    --_specialDict["three"]= _threeDict
    --_avoidInit["three"]="avoidInitHere"
    --local _battleDict={}
    --_specialDict["battle"]= _battleDict
    --_avoidInit["battle"]="avoidInitHere"
    --local _upDict={}
    --_specialDict["up"]= _upDict
    --_avoidInit["up"]="avoidInitHere"
    --local _debugDict={}
    --_specialDict["debug"]= _debugDict
    --_avoidInit["debug"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui state change-------------------------------------
function c_main:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main.super.stateChange(self,stateName_,rightNow_)
end

--ui structure change-------------------------------------
function c_main:uiStructureChange()
    --界面结构变化，需要做的操作。
    c_main.super.uiStructureChange(self)
end

--btn click call back---------------------------------------------------
function c_main:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

function c_main:onCreate()
    c_main.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main.super.onDestory(self)
end

return c_main