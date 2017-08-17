--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_main_sub = class("c_main_sub",C_disUI)

--ui create------------------------------------------
function c_main_sub:ctor(params_)
    c_main_sub.super.ctor(self,params_)
    self.className="main_sub"
    self.moduleName="sample"
end

--init data and place------------------------------------------
function c_main_sub:init(initDict_)
    c_main_sub.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
    -----state init----------------------------------------------------------
    -----self:stateAniPreset(stateName,animationMove,lastTime,easeType)--更改动画预设
    self:stateChange(self.uiStates[1].stateName,true)
    -----btns----------------------------------------------------------
    --self.btn_state_s3_s1
    --self.btn_state_s2_s1
    
    --require("src.app.base.ui.btnGroup").new():initByBtnArr({self.btn1,self.btn2,....})--关联按钮形成按钮组
end

--ui stateChange-------------------------------------
function c_main_sub:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main_sub.super.stateChange(self,stateName_,rightNow_)
end

--btn click call back---------------------------------------------------
function c_main_sub:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_sub.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
    -----check btn name----------------------------------------------------------
    if btnName_=="btn_state_s3_s1" then
    	print("Btn_pressed : "..self.className.." -> btn_state_s3_s1");----------------------------btn_state_s3_s1
    end
    if btnName_=="btn_state_s2_s1" then
    	print("Btn_pressed : "..self.className.." -> btn_state_s2_s1");----------------------------btn_state_s2_s1
    end
    
end

function c_main_sub:onCreate()
    c_main_sub.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_sub:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_sub.super.onDestory(self)
end

return c_main_sub