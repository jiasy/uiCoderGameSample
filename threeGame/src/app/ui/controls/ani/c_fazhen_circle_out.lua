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
    --local _instance351Dict={}
    --_specialDict["instance351"]= _instance351Dict
    --_avoidInit["instance351"]="avoidInitHere"
    --local _instance358Dict={}
    --_specialDict["instance358"]= _instance358Dict
    --_avoidInit["instance358"]="avoidInitHere"
    --local _instance365Dict={}
    --_specialDict["instance365"]= _instance365Dict
    --_avoidInit["instance365"]="avoidInitHere"
    --local _instance372Dict={}
    --_specialDict["instance372"]= _instance372Dict
    --_avoidInit["instance372"]="avoidInitHere"
    --local _instance379Dict={}
    --_specialDict["instance379"]= _instance379Dict
    --_avoidInit["instance379"]="avoidInitHere"
    --local _instance386Dict={}
    --_specialDict["instance386"]= _instance386Dict
    --_avoidInit["instance386"]="avoidInitHere"
    --local _instance393Dict={}
    --_specialDict["instance393"]= _instance393Dict
    --_avoidInit["instance393"]="avoidInitHere"
    --local _instance400Dict={}
    --_specialDict["instance400"]= _instance400Dict
    --_avoidInit["instance400"]="avoidInitHere"
    --local _instance407Dict={}
    --_specialDict["instance407"]= _instance407Dict
    --_avoidInit["instance407"]="avoidInitHere"
    --local _instance414Dict={}
    --_specialDict["instance414"]= _instance414Dict
    --_avoidInit["instance414"]="avoidInitHere"
    --local _instance421Dict={}
    --_specialDict["instance421"]= _instance421Dict
    --_avoidInit["instance421"]="avoidInitHere"
    --local _instance428Dict={}
    --_specialDict["instance428"]= _instance428Dict
    --_avoidInit["instance428"]="avoidInitHere"
    --local _instance435Dict={}
    --_specialDict["instance435"]= _instance435Dict
    --_avoidInit["instance435"]="avoidInitHere"
    --local _instance442Dict={}
    --_specialDict["instance442"]= _instance442Dict
    --_avoidInit["instance442"]="avoidInitHere"
    --local _instance449Dict={}
    --_specialDict["instance449"]= _instance449Dict
    --_avoidInit["instance449"]="avoidInitHere"
    --local _instance456Dict={}
    --_specialDict["instance456"]= _instance456Dict
    --_avoidInit["instance456"]="avoidInitHere"
    --local _instance463Dict={}
    --_specialDict["instance463"]= _instance463Dict
    --_avoidInit["instance463"]="avoidInitHere"
    --local _instance470Dict={}
    --_specialDict["instance470"]= _instance470Dict
    --_avoidInit["instance470"]="avoidInitHere"
    
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