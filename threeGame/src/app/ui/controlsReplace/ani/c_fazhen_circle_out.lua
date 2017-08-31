--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_fazhen_circle_out = class("c_fazhen_circle_out",C_disMC)

--ui create------------------------------------------
function c_fazhen_circle_out:ctor(params_)
    c_fazhen_circle_out.super.ctor(self,params_)
    self.className="fazhen_circle_out"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_fazhen_circle_out:init(initDict_)
    c_fazhen_circle_out.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _instance471Dict={}
    --_specialDict["instance471"]= _instance471Dict
    --_avoidInit["instance471"]="avoidInitHere"
    --local _instance478Dict={}
    --_specialDict["instance478"]= _instance478Dict
    --_avoidInit["instance478"]="avoidInitHere"
    --local _instance485Dict={}
    --_specialDict["instance485"]= _instance485Dict
    --_avoidInit["instance485"]="avoidInitHere"
    --local _instance492Dict={}
    --_specialDict["instance492"]= _instance492Dict
    --_avoidInit["instance492"]="avoidInitHere"
    --local _instance499Dict={}
    --_specialDict["instance499"]= _instance499Dict
    --_avoidInit["instance499"]="avoidInitHere"
    --local _instance506Dict={}
    --_specialDict["instance506"]= _instance506Dict
    --_avoidInit["instance506"]="avoidInitHere"
    --local _instance513Dict={}
    --_specialDict["instance513"]= _instance513Dict
    --_avoidInit["instance513"]="avoidInitHere"
    --local _instance520Dict={}
    --_specialDict["instance520"]= _instance520Dict
    --_avoidInit["instance520"]="avoidInitHere"
    --local _instance527Dict={}
    --_specialDict["instance527"]= _instance527Dict
    --_avoidInit["instance527"]="avoidInitHere"
    --local _instance534Dict={}
    --_specialDict["instance534"]= _instance534Dict
    --_avoidInit["instance534"]="avoidInitHere"
    --local _instance541Dict={}
    --_specialDict["instance541"]= _instance541Dict
    --_avoidInit["instance541"]="avoidInitHere"
    --local _instance548Dict={}
    --_specialDict["instance548"]= _instance548Dict
    --_avoidInit["instance548"]="avoidInitHere"
    --local _instance555Dict={}
    --_specialDict["instance555"]= _instance555Dict
    --_avoidInit["instance555"]="avoidInitHere"
    --local _instance562Dict={}
    --_specialDict["instance562"]= _instance562Dict
    --_avoidInit["instance562"]="avoidInitHere"
    --local _instance569Dict={}
    --_specialDict["instance569"]= _instance569Dict
    --_avoidInit["instance569"]="avoidInitHere"
    --local _instance576Dict={}
    --_specialDict["instance576"]= _instance576Dict
    --_avoidInit["instance576"]="avoidInitHere"
    --local _instance583Dict={}
    --_specialDict["instance583"]= _instance583Dict
    --_avoidInit["instance583"]="avoidInitHere"
    --local _instance590Dict={}
    --_specialDict["instance590"]= _instance590Dict
    --_avoidInit["instance590"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_fazhen_circle_out:stateChange(params_)
    --Logic here,then change state.
    c_fazhen_circle_out.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_fazhen_circle_out:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_fazhen_circle_out.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_fazhen_circle_out:onFrameName(frameName_)
    c_fazhen_circle_out.super.onFrameName(self,frameName_)

end

function c_fazhen_circle_out:onCreate()
    c_fazhen_circle_out.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_fazhen_circle_out:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_fazhen_circle_out.super.onDestory(self)
end

return c_fazhen_circle_out