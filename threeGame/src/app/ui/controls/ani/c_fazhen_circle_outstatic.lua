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
    --local _instance236Dict={}
    --_specialDict["instance236"]= _instance236Dict
    --_avoidInit["instance236"]="avoidInitHere"
    --local _instance243Dict={}
    --_specialDict["instance243"]= _instance243Dict
    --_avoidInit["instance243"]="avoidInitHere"
    --local _instance250Dict={}
    --_specialDict["instance250"]= _instance250Dict
    --_avoidInit["instance250"]="avoidInitHere"
    --local _instance257Dict={}
    --_specialDict["instance257"]= _instance257Dict
    --_avoidInit["instance257"]="avoidInitHere"
    --local _instance264Dict={}
    --_specialDict["instance264"]= _instance264Dict
    --_avoidInit["instance264"]="avoidInitHere"
    --local _instance271Dict={}
    --_specialDict["instance271"]= _instance271Dict
    --_avoidInit["instance271"]="avoidInitHere"
    --local _instance278Dict={}
    --_specialDict["instance278"]= _instance278Dict
    --_avoidInit["instance278"]="avoidInitHere"
    --local _instance285Dict={}
    --_specialDict["instance285"]= _instance285Dict
    --_avoidInit["instance285"]="avoidInitHere"
    --local _instance292Dict={}
    --_specialDict["instance292"]= _instance292Dict
    --_avoidInit["instance292"]="avoidInitHere"
    --local _instance299Dict={}
    --_specialDict["instance299"]= _instance299Dict
    --_avoidInit["instance299"]="avoidInitHere"
    --local _instance306Dict={}
    --_specialDict["instance306"]= _instance306Dict
    --_avoidInit["instance306"]="avoidInitHere"
    --local _instance313Dict={}
    --_specialDict["instance313"]= _instance313Dict
    --_avoidInit["instance313"]="avoidInitHere"
    --local _instance320Dict={}
    --_specialDict["instance320"]= _instance320Dict
    --_avoidInit["instance320"]="avoidInitHere"
    --local _instance327Dict={}
    --_specialDict["instance327"]= _instance327Dict
    --_avoidInit["instance327"]="avoidInitHere"
    --local _instance334Dict={}
    --_specialDict["instance334"]= _instance334Dict
    --_avoidInit["instance334"]="avoidInitHere"
    --local _instance341Dict={}
    --_specialDict["instance341"]= _instance341Dict
    --_avoidInit["instance341"]="avoidInitHere"
    --local _instance348Dict={}
    --_specialDict["instance348"]= _instance348Dict
    --_avoidInit["instance348"]="avoidInitHere"
    --local _instance355Dict={}
    --_specialDict["instance355"]= _instance355Dict
    --_avoidInit["instance355"]="avoidInitHere"
    
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