--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_main_battle_fazhen = class("c_main_battle_fazhen",C_disMC)

--ui create------------------------------------------
function c_main_battle_fazhen:ctor(params_)
    c_main_battle_fazhen.super.ctor(self,params_)
    self.className="main_battle_fazhen"
    self.moduleName="three"
end

--init data and place------------------------------------------
function c_main_battle_fazhen:init(initDict_)
    c_main_battle_fazhen.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _circle1Dict={}
    --_specialDict["circle1"]= _circle1Dict
    --_avoidInit["circle1"]="avoidInitHere"
    --local _instance221Dict={}
    --_specialDict["instance221"]= _instance221Dict
    --_avoidInit["instance221"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_main_battle_fazhen:stateChange(params_)
    --Logic here,then change state.
    c_main_battle_fazhen.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_main_battle_fazhen:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_battle_fazhen.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_main_battle_fazhen:onFrameName(frameName_)
    c_main_battle_fazhen.super.onFrameName(self,frameName_)

end

function c_main_battle_fazhen:onCreate()
    c_main_battle_fazhen.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_battle_fazhen:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_battle_fazhen.super.onDestory(self)
end

return c_main_battle_fazhen