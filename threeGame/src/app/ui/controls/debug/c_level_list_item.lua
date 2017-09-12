--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_level_list_item = class("c_level_list_item",C_disUI)

--ui create------------------------------------------
function c_level_list_item:ctor(params_)
    c_level_list_item.super.ctor(self,params_)
    self.className="level_list_item"
    self.moduleName="debug"
end

--init data and place------------------------------------------
function c_level_list_item:init(initDict_)
    c_level_list_item.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
    -----btns----------------------------------------------------------
    --self.testBtn
    
    --require("src.app.base.ui.btnGroup").new():initByBtnArr({self.btn1,self.btn2,....})--关联按钮形成按钮组
end

--disRoll 重置Index 序号的时候
function c_level_list_item:setItemIndex(itemIndex_)
    c_level_list_item.super.setItemIndex(self,itemIndex_)
    self.desTxt:setString(tostring(self.initDict.itemIndex).." : "..self.initDict.des)
end

--ui state change-------------------------------------
function c_level_list_item:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_level_list_item.super.stateChange(self,stateName_,rightNow_)
end

--ui structure change-------------------------------------
function c_level_list_item:uiStructureChange()
    --界面结构变化，需要做的操作。
    c_level_list_item.super.uiStructureChange(self)
end

--btn click call back---------------------------------------------------
function c_level_list_item:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_level_list_item.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
    -----check btn name----------------------------------------------------------
    if btnName_=="testBtn" then
    	print("Btn_pressed : "..self.className.." -> testBtn");----------------------------testBtn
        local _eventDispatcher = cc.Director:getInstance():getEventDispatcher()
        local _event = cc.EventCustom:new("debug.level_select")
        _event.itemIndex = self.initDict.itemIndex
        _eventDispatcher:dispatchEvent(_event) 
    end
    
end

function c_level_list_item:onCreate()
    c_level_list_item.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_level_list_item:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_level_list_item.super.onDestory(self)
end

return c_level_list_item