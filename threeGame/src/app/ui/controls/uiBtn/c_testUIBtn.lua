--class define--------------------------------------------------------
local C_disUIBtn = require("src.app.base.ui.disUIBtn")
local c_testUIBtn = class("c_testUIBtn", C_disUIBtn)

--ui create------------------------------------------
function c_testUIBtn:ctor(params_)
    c_testUIBtn.super.ctor(self, params_)
    self.className = "testUIBtn"
    self.moduleName = "uiBtn"
    self.layerType = "btn"
end

--init data and place------------------------------------------
function c_testUIBtn:init(initDict_)
    c_testUIBtn.super.init(self, initDict_)
    self:initSubUIs(_specialDict, _avoidInitDict)
    ----- state init----------------------------------------------------------
    self:stateChange("btnState1", true)
end

function c_testUIBtn:initSubUIs()
end

function c_testUIBtn:onCreate()
    c_testUIBtn.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_testUIBtn:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_testUIBtn.super.onDestory(self)
end

return c_testUIBtn