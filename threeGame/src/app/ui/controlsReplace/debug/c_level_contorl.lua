--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_level_contorl = class("c_level_contorl",C_disUI)

--ui create------------------------------------------
function c_level_contorl:ctor(params_)
    c_level_contorl.super.ctor(self,params_)
    self.className="level_contorl"
    self.moduleName="debug"
end

--init data and place------------------------------------------
function c_level_contorl:init(initDict_)
    c_level_contorl.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _levelListDict={}
    --_specialDict["levelList"]= _levelListDict
    --_avoidInit["levelList"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
    -----state init----------------------------------------------------------
    -----self:stateAniPreset(stateName,animationMove,lastTime,easeType)--更改动画预设
    self:stateChange(self.uiStates[1].stateName,true)
    -----btns----------------------------------------------------------
    --self.btn_state_s2
    --self.btn_state_s1
    
    --require("src.app.base.ui.btnGroup").new():initByBtnArr({self.btn1,self.btn2,....})--关联按钮形成按钮组
end

--ui state change-------------------------------------
function c_level_contorl:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_level_contorl.super.stateChange(self,stateName_,rightNow_)
end

--ui structure change-------------------------------------
function c_level_contorl:uiStructureChange()
    --界面结构变化，需要做的操作。
    c_level_contorl.super.uiStructureChange(self)
end

--btn click call back---------------------------------------------------
function c_level_contorl:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_level_contorl.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
    -----check btn name----------------------------------------------------------
    if btnName_=="btn_state_s2" then
    	print("Btn_pressed : "..self.className.." -> btn_state_s2");----------------------------btn_state_s2
    end
    if btnName_=="btn_state_s1" then
    	print("Btn_pressed : "..self.className.." -> btn_state_s1");----------------------------btn_state_s1
    end
    if btnName_=="btn_next" then
    	print("Btn_pressed : "..self.className.." -> btn_next");----------------------------btn_next
    end
    if btnName_=="btn_prev" then
    	print("Btn_pressed : "..self.className.." -> btn_prev");----------------------------btn_prev
    end
    if btnName_=="btn_reset" then
    	print("Btn_pressed : "..self.className.." -> btn_reset");----------------------------btn_reset
    end
    if btnName_=="btn_aiNormal" then
    	print("Btn_pressed : "..self.className.." -> btn_aiNormal");----------------------------btn_aiNormal
    end
    if btnName_=="btn_aiQuick" then
    	print("Btn_pressed : "..self.className.." -> btn_aiQuick");----------------------------btn_aiQuick
    end
    if btnName_=="btn_aiFly" then
    	print("Btn_pressed : "..self.className.." -> btn_aiFly");----------------------------btn_aiFly
    end
    
end

function c_level_contorl:onCreate()
    c_level_contorl.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_level_contorl:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_level_contorl.super.onDestory(self)
end

return c_level_contorl