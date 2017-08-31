--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_fazhen_circle_outstatic = class("c_fazhen_circle_outstatic",C_disMC)

--ui create------------------------------------------
function c_fazhen_circle_outstatic:ctor(params_)
    c_fazhen_circle_outstatic.super.ctor(self,params_)
    self.className="fazhen_circle_outstatic"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_fazhen_circle_outstatic:init(initDict_)
    c_fazhen_circle_outstatic.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _instance338Dict={}
    --_specialDict["instance338"]= _instance338Dict
    --_avoidInit["instance338"]="avoidInitHere"
    --local _instance345Dict={}
    --_specialDict["instance345"]= _instance345Dict
    --_avoidInit["instance345"]="avoidInitHere"
    --local _instance352Dict={}
    --_specialDict["instance352"]= _instance352Dict
    --_avoidInit["instance352"]="avoidInitHere"
    --local _instance359Dict={}
    --_specialDict["instance359"]= _instance359Dict
    --_avoidInit["instance359"]="avoidInitHere"
    --local _instance366Dict={}
    --_specialDict["instance366"]= _instance366Dict
    --_avoidInit["instance366"]="avoidInitHere"
    --local _instance373Dict={}
    --_specialDict["instance373"]= _instance373Dict
    --_avoidInit["instance373"]="avoidInitHere"
    --local _instance380Dict={}
    --_specialDict["instance380"]= _instance380Dict
    --_avoidInit["instance380"]="avoidInitHere"
    --local _instance387Dict={}
    --_specialDict["instance387"]= _instance387Dict
    --_avoidInit["instance387"]="avoidInitHere"
    --local _instance394Dict={}
    --_specialDict["instance394"]= _instance394Dict
    --_avoidInit["instance394"]="avoidInitHere"
    --local _instance401Dict={}
    --_specialDict["instance401"]= _instance401Dict
    --_avoidInit["instance401"]="avoidInitHere"
    --local _instance408Dict={}
    --_specialDict["instance408"]= _instance408Dict
    --_avoidInit["instance408"]="avoidInitHere"
    --local _instance415Dict={}
    --_specialDict["instance415"]= _instance415Dict
    --_avoidInit["instance415"]="avoidInitHere"
    --local _instance422Dict={}
    --_specialDict["instance422"]= _instance422Dict
    --_avoidInit["instance422"]="avoidInitHere"
    --local _instance429Dict={}
    --_specialDict["instance429"]= _instance429Dict
    --_avoidInit["instance429"]="avoidInitHere"
    --local _instance436Dict={}
    --_specialDict["instance436"]= _instance436Dict
    --_avoidInit["instance436"]="avoidInitHere"
    --local _instance443Dict={}
    --_specialDict["instance443"]= _instance443Dict
    --_avoidInit["instance443"]="avoidInitHere"
    --local _instance450Dict={}
    --_specialDict["instance450"]= _instance450Dict
    --_avoidInit["instance450"]="avoidInitHere"
    --local _instance457Dict={}
    --_specialDict["instance457"]= _instance457Dict
    --_avoidInit["instance457"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_fazhen_circle_outstatic:stateChange(params_)
    --Logic here,then change state.
    c_fazhen_circle_outstatic.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_fazhen_circle_outstatic:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_fazhen_circle_outstatic.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_fazhen_circle_outstatic:onFrameName(frameName_)
    c_fazhen_circle_outstatic.super.onFrameName(self,frameName_)

end

function c_fazhen_circle_outstatic:onCreate()
    c_fazhen_circle_outstatic.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_fazhen_circle_outstatic:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_fazhen_circle_outstatic.super.onDestory(self)
end

return c_fazhen_circle_outstatic