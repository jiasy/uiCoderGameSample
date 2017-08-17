--class define--------------------------------------------------------
local C_disUI = require("src.app.base.ui.disUI")
local c_uiJumper_roll_item = class("c_uiJumper_roll_item", C_disUI)

--ui create------------------------------------------
function c_uiJumper_roll_item:ctor(params_)
    c_uiJumper_roll_item.super.ctor(self, params_)
    self.className = "uiJumper_roll_item"
    self.moduleName = "develop"
end

--init data and place------------------------------------------
function c_uiJumper_roll_item:init(initDict_)
    c_uiJumper_roll_item.super.init(self, initDict_)
    self:initSubUIs(_specialDict, _avoidInitDict)
    ----- btns----------------------------------------------------------
    -- self.testBtn

    --require("src.app.base.ui.btnGroup").new():initByBtnArr({self.btn1,self.btn2,....})--关联按钮形成按钮组
end

--ui stateChange-------------------------------------
function c_uiJumper_roll_item:stateChange(stateName_, rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_uiJumper_roll_item.super.stateChange(self, stateName_, rightNow_)
end

--btn click call back---------------------------------------------------
function c_uiJumper_roll_item:btnClicked(btnName_, rollName_, listName_, itemDataDict_)
    c_uiJumper_roll_item.super.btnClicked(self, btnName_, rollName_, listName_, itemDataDict_)
    ----- check btn name----------------------------------------------------------
    if btnName_ == "testBtn" then
        print("Btn_pressed : " .. self.className .. " -> testBtn"); ---------------------------- testBtn
    end
end

function c_uiJumper_roll_item:onCreate()
    c_uiJumper_roll_item.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_uiJumper_roll_item:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_uiJumper_roll_item.super.onDestory(self)
end

return c_uiJumper_roll_item