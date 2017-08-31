--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_main_yuzhou_pics = class("c_main_yuzhou_pics",C_disUI)

--ui create------------------------------------------
function c_main_yuzhou_pics:ctor(params_)
    c_main_yuzhou_pics.super.ctor(self,params_)
    self.className="main_yuzhou_pics"
    self.moduleName="three"
end

--init data and place------------------------------------------
function c_main_yuzhou_pics:init(initDict_)
    c_main_yuzhou_pics.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui state change-------------------------------------
function c_main_yuzhou_pics:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main_yuzhou_pics.super.stateChange(self,stateName_,rightNow_)
end

--ui structure change-------------------------------------
function c_main_yuzhou_pics:uiStructureChange()
    --界面结构变化，需要做的操作。
    c_main_yuzhou_pics.super.uiStructureChange(self)
end

--btn click call back---------------------------------------------------
function c_main_yuzhou_pics:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_yuzhou_pics.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

function c_main_yuzhou_pics:onCreate()
    c_main_yuzhou_pics.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_yuzhou_pics:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_yuzhou_pics.super.onDestory(self)
end

return c_main_yuzhou_pics