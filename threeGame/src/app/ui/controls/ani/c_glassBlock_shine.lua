--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_glassBlock_shine = class("c_glassBlock_shine",C_disUI)

--ui create------------------------------------------
function c_glassBlock_shine:ctor(params_)
    c_glassBlock_shine.super.ctor(self,params_)
    self.className="glassBlock_shine"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_glassBlock_shine:init(initDict_)
    c_glassBlock_shine.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _in1Dict={}
    --_specialDict["in1"]= _in1Dict
    --_avoidInit["in1"]="avoidInitHere"
    --local _in2Dict={}
    --_specialDict["in2"]= _in2Dict
    --_avoidInit["in2"]="avoidInitHere"
    --local _in3Dict={}
    --_specialDict["in3"]= _in3Dict
    --_avoidInit["in3"]="avoidInitHere"
    --local _in4Dict={}
    --_specialDict["in4"]= _in4Dict
    --_avoidInit["in4"]="avoidInitHere"
    --local _out1Dict={}
    --_specialDict["out1"]= _out1Dict
    --_avoidInit["out1"]="avoidInitHere"
    --local _out2Dict={}
    --_specialDict["out2"]= _out2Dict
    --_avoidInit["out2"]="avoidInitHere"
    --local _out3Dict={}
    --_specialDict["out3"]= _out3Dict
    --_avoidInit["out3"]="avoidInitHere"
    --local _out4Dict={}
    --_specialDict["out4"]= _out4Dict
    --_avoidInit["out4"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

function c_glassBlock_shine:shine()
    local _maxRandom = 5
    local _maxShine = 4
    for i=1,_maxShine do
        local _in = self["in"..tostring(i)]
        local _out = self["out"..tostring(i)]
        _in:gtp("idle"..tostring(math.random(1,_maxRandom)))
        _out:gtp("idle"..tostring(math.random(1,_maxRandom)))
    end
end

--ui state change-------------------------------------
function c_glassBlock_shine:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_glassBlock_shine.super.stateChange(self,stateName_,rightNow_)
end

--ui structure change-------------------------------------
function c_glassBlock_shine:uiStructureChange()
    --界面结构变化，需要做的操作。
    c_glassBlock_shine.super.uiStructureChange(self)
end

--btn click call back---------------------------------------------------
function c_glassBlock_shine:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_glassBlock_shine.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

function c_glassBlock_shine:onCreate()
    c_glassBlock_shine.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_glassBlock_shine:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_glassBlock_shine.super.onDestory(self)
end

return c_glassBlock_shine