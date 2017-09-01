--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_main_up_side = class("c_main_up_side",C_disMC)

--ui create------------------------------------------
function c_main_up_side:ctor(params_)
    c_main_up_side.super.ctor(self,params_)
    self.className="main_up_side"
    self.moduleName="three"
end

--init data and place------------------------------------------
function c_main_up_side:init(initDict_)
    c_main_up_side.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _instance409Dict={}
    --_specialDict["instance409"]= _instance409Dict
    --_avoidInit["instance409"]="avoidInitHere"
    --local _instance415Dict={}
    --_specialDict["instance415"]= _instance415Dict
    --_avoidInit["instance415"]="avoidInitHere"
    --local _instance421Dict={}
    --_specialDict["instance421"]= _instance421Dict
    --_avoidInit["instance421"]="avoidInitHere"
    --local _instance427Dict={}
    --_specialDict["instance427"]= _instance427Dict
    --_avoidInit["instance427"]="avoidInitHere"
    --local _instance433Dict={}
    --_specialDict["instance433"]= _instance433Dict
    --_avoidInit["instance433"]="avoidInitHere"
    --local _instance439Dict={}
    --_specialDict["instance439"]= _instance439Dict
    --_avoidInit["instance439"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_main_up_side:stateChange(params_)
    --Logic here,then change state.
    c_main_up_side.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_main_up_side:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_up_side.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_main_up_side:onFrameName(frameName_)
    c_main_up_side.super.onFrameName(self,frameName_)

end

function c_main_up_side:onCreate()
    c_main_up_side.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_up_side:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_up_side.super.onDestory(self)
end

return c_main_up_side