--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_main_battle = class("c_main_battle",C_disUI)

--ui create------------------------------------------
function c_main_battle:ctor(params_)
    c_main_battle.super.ctor(self,params_)
    self.className="main_battle"
    self.moduleName="three"
end

--init data and place------------------------------------------
function c_main_battle:init(initDict_)
    c_main_battle.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _blockCount2Dict={}
    --_specialDict["blockCount2"]= _blockCount2Dict
    --_avoidInit["blockCount2"]="avoidInitHere"
    --local _blockCount3Dict={}
    --_specialDict["blockCount3"]= _blockCount3Dict
    --_avoidInit["blockCount3"]="avoidInitHere"
    --local _blockCount4Dict={}
    --_specialDict["blockCount4"]= _blockCount4Dict
    --_avoidInit["blockCount4"]="avoidInitHere"
    --local _blockCount5Dict={}
    --_specialDict["blockCount5"]= _blockCount5Dict
    --_avoidInit["blockCount5"]="avoidInitHere"
    --local _blockCount6Dict={}
    --_specialDict["blockCount6"]= _blockCount6Dict
    --_avoidInit["blockCount6"]="avoidInitHere"
    --local _blockCount8Dict={}
    --_specialDict["blockCount8"]= _blockCount8Dict
    --_avoidInit["blockCount8"]="avoidInitHere"
    --local _blockCount9Dict={}
    --_specialDict["blockCount9"]= _blockCount9Dict
    --_avoidInit["blockCount9"]="avoidInitHere"
    --local _blockCount10Dict={}
    --_specialDict["blockCount10"]= _blockCount10Dict
    --_avoidInit["blockCount10"]="avoidInitHere"
    --local _blockCount11Dict={}
    --_specialDict["blockCount11"]= _blockCount11Dict
    --_avoidInit["blockCount11"]="avoidInitHere"
    --local _blockCount7Dict={}
    --_specialDict["blockCount7"]= _blockCount7Dict
    --_avoidInit["blockCount7"]="avoidInitHere"
    --local _blockCount1Dict={}
    --_specialDict["blockCount1"]= _blockCount1Dict
    --_avoidInit["blockCount1"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui state change-------------------------------------
function c_main_battle:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main_battle.super.stateChange(self,stateName_,rightNow_)
end

--ui structure change-------------------------------------
function c_main_battle:uiStructureChange()
    --界面结构变化，需要做的操作。
    c_main_battle.super.uiStructureChange(self)
end

--btn click call back---------------------------------------------------
function c_main_battle:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_battle.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

function c_main_battle:onCreate()
    c_main_battle.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_battle:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_battle.super.onDestory(self)
end

return c_main_battle