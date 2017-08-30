--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_main_battle_bar = class("c_main_battle_bar",C_disMC)

--ui create------------------------------------------
function c_main_battle_bar:ctor(params_)
    c_main_battle_bar.super.ctor(self,params_)
    self.className="main_battle_bar"
    self.moduleName="three"
end

--init data and place------------------------------------------
function c_main_battle_bar:init(initDict_)
    c_main_battle_bar.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _sideRightDict={}
    --_specialDict["sideRight"]= _sideRightDict
    --_avoidInit["sideRight"]="avoidInitHere"
    --local _sideLeftDict={}
    --_specialDict["sideLeft"]= _sideLeftDict
    --_avoidInit["sideLeft"]="avoidInitHere"
    --local _bar_1Dict={}
    --_specialDict["bar_1"]= _bar_1Dict
    --_avoidInit["bar_1"]="avoidInitHere"
    --local _bar_2Dict={}
    --_specialDict["bar_2"]= _bar_2Dict
    --_avoidInit["bar_2"]="avoidInitHere"
    --local _bar_3Dict={}
    --_specialDict["bar_3"]= _bar_3Dict
    --_avoidInit["bar_3"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_main_battle_bar:stateChange(params_)
    --Logic here,then change state.
    c_main_battle_bar.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_main_battle_bar:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_battle_bar.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_main_battle_bar:onFrameName(frameName_)
    c_main_battle_bar.super.onFrameName(self,frameName_)

end

function c_main_battle_bar:onCreate()
    c_main_battle_bar.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_battle_bar:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_battle_bar.super.onDestory(self)
end

return c_main_battle_bar