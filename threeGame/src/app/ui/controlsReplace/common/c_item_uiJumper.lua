--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_item_uiJumper = class("c_item_uiJumper",C_disUI)

--ui create------------------------------------------
function c_item_uiJumper:ctor(params_)
    c_item_uiJumper.super.ctor(self,params_)
    self.className="item_uiJumper"
    self.moduleName="common"
end

--init data and place------------------------------------------
function c_item_uiJumper:init(initDict_)
    c_item_uiJumper.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
    -----btns----------------------------------------------------------
    --self.testBtn
    
    --require("src.app.base.ui.btnGroup").new():initByBtnArr({self.btn1,self.btn2,....})--关联按钮形成按钮组
end

--ui state change-------------------------------------
function c_item_uiJumper:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_item_uiJumper.super.stateChange(self,stateName_,rightNow_)
end

--ui structure change-------------------------------------
function c_item_uiJumper:uiStructureChange()
    --界面结构变化，需要做的操作。
    c_item_uiJumper.super.uiStructureChange(self)
end

--btn click call back---------------------------------------------------
function c_item_uiJumper:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_item_uiJumper.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
    -----check btn name----------------------------------------------------------
    if btnName_=="testBtn" then
    	print("Btn_pressed : "..self.className.." -> testBtn");----------------------------testBtn
    end
    
end

function c_item_uiJumper:onCreate()
    c_item_uiJumper.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_item_uiJumper:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_item_uiJumper.super.onDestory(self)
end

return c_item_uiJumper