--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_four_cricle = class("c_four_cricle",C_disMC)

--ui create------------------------------------------
function c_four_cricle:ctor(params_)
    c_four_cricle.super.ctor(self,params_)
    self.className="four_cricle"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_four_cricle:init(initDict_)
    c_four_cricle.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _c1Dict={}
    --_specialDict["c1"]= _c1Dict
    --_avoidInit["c1"]="avoidInitHere"
    --local _c2Dict={}
    --_specialDict["c2"]= _c2Dict
    --_avoidInit["c2"]="avoidInitHere"
    --local _c3Dict={}
    --_specialDict["c3"]= _c3Dict
    --_avoidInit["c3"]="avoidInitHere"
    --local _c4Dict={}
    --_specialDict["c4"]= _c4Dict
    --_avoidInit["c4"]="avoidInitHere"
    --local _c5Dict={}
    --_specialDict["c5"]= _c5Dict
    --_avoidInit["c5"]="avoidInitHere"
    --local _c6Dict={}
    --_specialDict["c6"]= _c6Dict
    --_avoidInit["c6"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_four_cricle:stateChange(params_)
    --Logic here,then change state.
    c_four_cricle.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_four_cricle:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_four_cricle.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_four_cricle:onFrameName(frameName_)
    c_four_cricle.super.onFrameName(self,frameName_)

end

function c_four_cricle:onCreate()
    c_four_cricle.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_four_cricle:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_four_cricle.super.onDestory(self)
end

return c_four_cricle