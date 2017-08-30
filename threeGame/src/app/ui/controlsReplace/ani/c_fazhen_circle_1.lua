--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_fazhen_circle_1 = class("c_fazhen_circle_1",C_disUI)

--ui create------------------------------------------
function c_fazhen_circle_1:ctor(params_)
    c_fazhen_circle_1.super.ctor(self,params_)
    self.className="fazhen_circle_1"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_fazhen_circle_1:init(initDict_)
    c_fazhen_circle_1.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _p1Dict={}
    --_specialDict["p1"]= _p1Dict
    --_avoidInit["p1"]="avoidInitHere"
    --local _p2Dict={}
    --_specialDict["p2"]= _p2Dict
    --_avoidInit["p2"]="avoidInitHere"
    --local _p3Dict={}
    --_specialDict["p3"]= _p3Dict
    --_avoidInit["p3"]="avoidInitHere"
    --local _p4Dict={}
    --_specialDict["p4"]= _p4Dict
    --_avoidInit["p4"]="avoidInitHere"
    --local _p5Dict={}
    --_specialDict["p5"]= _p5Dict
    --_avoidInit["p5"]="avoidInitHere"
    --local _p6Dict={}
    --_specialDict["p6"]= _p6Dict
    --_avoidInit["p6"]="avoidInitHere"
    --local _p7Dict={}
    --_specialDict["p7"]= _p7Dict
    --_avoidInit["p7"]="avoidInitHere"
    --local _p8Dict={}
    --_specialDict["p8"]= _p8Dict
    --_avoidInit["p8"]="avoidInitHere"
    --local _p9Dict={}
    --_specialDict["p9"]= _p9Dict
    --_avoidInit["p9"]="avoidInitHere"
    --local _p10Dict={}
    --_specialDict["p10"]= _p10Dict
    --_avoidInit["p10"]="avoidInitHere"
    --local _p11Dict={}
    --_specialDict["p11"]= _p11Dict
    --_avoidInit["p11"]="avoidInitHere"
    --local _p12Dict={}
    --_specialDict["p12"]= _p12Dict
    --_avoidInit["p12"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui state change-------------------------------------
function c_fazhen_circle_1:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_fazhen_circle_1.super.stateChange(self,stateName_,rightNow_)
end

--ui structure change-------------------------------------
function c_fazhen_circle_1:uiStructureChange()
    --界面结构变化，需要做的操作。
    c_fazhen_circle_1.super.uiStructureChange(self)
end

--btn click call back---------------------------------------------------
function c_fazhen_circle_1:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_fazhen_circle_1.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

function c_fazhen_circle_1:onCreate()
    c_fazhen_circle_1.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_fazhen_circle_1:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_fazhen_circle_1.super.onDestory(self)
end

return c_fazhen_circle_1