--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_pngAnimation = class("c_pngAnimation",C_disUI)

--ui create------------------------------------------
function c_pngAnimation:ctor(params_)
    c_pngAnimation.super.ctor(self,params_)
    self.className="pngAnimation"
    self.moduleName="common"
end

--init data and place------------------------------------------
function c_pngAnimation:init(initDict_)
    c_pngAnimation.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui state change-------------------------------------
function c_pngAnimation:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_pngAnimation.super.stateChange(self,stateName_,rightNow_)
end

--ui structure change-------------------------------------
function c_pngAnimation:uiStructureChange()
    --界面结构变化，需要做的操作。
    c_pngAnimation.super.uiStructureChange(self)
end

--btn click call back---------------------------------------------------
function c_pngAnimation:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_pngAnimation.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

function c_pngAnimation:onCreate()
    c_pngAnimation.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_pngAnimation:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_pngAnimation.super.onDestory(self)
end

return c_pngAnimation