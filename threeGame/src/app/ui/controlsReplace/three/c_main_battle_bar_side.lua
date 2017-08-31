--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_main_battle_bar_side = class("c_main_battle_bar_side",C_disMC)

--ui create------------------------------------------
function c_main_battle_bar_side:ctor(params_)
    c_main_battle_bar_side.super.ctor(self,params_)
    self.className="main_battle_bar_side"
    self.moduleName="three"
end

--init data and place------------------------------------------
function c_main_battle_bar_side:init(initDict_)
    c_main_battle_bar_side.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _instance247Dict={}
    --_specialDict["instance247"]= _instance247Dict
    --_avoidInit["instance247"]="avoidInitHere"
    --local _instance253Dict={}
    --_specialDict["instance253"]= _instance253Dict
    --_avoidInit["instance253"]="avoidInitHere"
    --local _instance259Dict={}
    --_specialDict["instance259"]= _instance259Dict
    --_avoidInit["instance259"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_main_battle_bar_side:stateChange(params_)
    --Logic here,then change state.
    c_main_battle_bar_side.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_main_battle_bar_side:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_battle_bar_side.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_main_battle_bar_side:onFrameName(frameName_)
    c_main_battle_bar_side.super.onFrameName(self,frameName_)

end

function c_main_battle_bar_side:onCreate()
    c_main_battle_bar_side.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_battle_bar_side:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_battle_bar_side.super.onDestory(self)
end

return c_main_battle_bar_side