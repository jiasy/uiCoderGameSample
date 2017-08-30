--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_main_up = class("c_main_up",C_disMC)

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
    --local _instance298Dict={}
    --_specialDict["instance298"]= _instance298Dict
    --_avoidInit["instance298"]="avoidInitHere"
    --local _instance307Dict={}
    --_specialDict["instance307"]= _instance307Dict
    --_avoidInit["instance307"]="avoidInitHere"
    --local _instance314Dict={}
    --_specialDict["instance314"]= _instance314Dict
    --_avoidInit["instance314"]="avoidInitHere"
    --local _sideLeftDict={}
    --_specialDict["sideLeft"]= _sideLeftDict
    --_avoidInit["sideLeft"]="avoidInitHere"
    --local _sideRightDict={}
    --_specialDict["sideRight"]= _sideRightDict
    --_avoidInit["sideRight"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_main_up:stateChange(params_)
    --Logic here,then change state.
    c_main_up.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_main_up:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_up.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_main_up:onFrameName(frameName_)
    c_main_up.super.onFrameName(self,frameName_)

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