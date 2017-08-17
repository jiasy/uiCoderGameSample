--[[
    调用方式 
        1.模块名[moduleName] + 界面类名[className] 的方式
            local _targetUi=uiControl:getInstance():jumpTo("common","tip")
        2._targetUi在场景中，只有调用 init 才能用。否则只是空层
            _targetUi:init({})
]]
--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_tip = class("c_tip",C_disUI)

--ui create------------------------------------------
function c_tip:ctor(params_)
    c_tip.super.ctor(self,params_)
    self.className="tip"
    self.moduleName="common"
    self.layerType="ui"
end

--init data and place------------------------------------------
function c_tip:init(initDict_)
    c_tip.super.init(self,initDict_)
    self.content:setString(initDict_.content)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui state change-------------------------------------
function c_tip:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_tip.super.stateChange(self,stateName_,rightNow_)
end

--ui structure change-------------------------------------
function c_tip:uiStructureChange()
    --界面结构变化，需要做的操作。
    c_tip.super.uiStructureChange(self)
end

--btn click call back---------------------------------------------------
function c_tip:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_tip.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
    if btnName_ == "btn_close" then
        print("Btn_pressed : " .. self.className .. " -> close"); ---------------------------- nextBtn
        self:close()
    end
end

function c_tip:onCreate()
    c_tip.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_tip:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_tip.super.onDestory(self)
end

return c_tip