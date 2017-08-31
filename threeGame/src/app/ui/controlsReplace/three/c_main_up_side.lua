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
    --local _instance400Dict={}
    --_specialDict["instance400"]= _instance400Dict
    --_avoidInit["instance400"]="avoidInitHere"
    --local _instance406Dict={}
    --_specialDict["instance406"]= _instance406Dict
    --_avoidInit["instance406"]="avoidInitHere"
    --local _instance412Dict={}
    --_specialDict["instance412"]= _instance412Dict
    --_avoidInit["instance412"]="avoidInitHere"
    --local _instance418Dict={}
    --_specialDict["instance418"]= _instance418Dict
    --_avoidInit["instance418"]="avoidInitHere"
    --local _instance424Dict={}
    --_specialDict["instance424"]= _instance424Dict
    --_avoidInit["instance424"]="avoidInitHere"
    --local _instance430Dict={}
    --_specialDict["instance430"]= _instance430Dict
    --_avoidInit["instance430"]="avoidInitHere"
    
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