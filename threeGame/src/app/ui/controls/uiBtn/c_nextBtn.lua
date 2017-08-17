--class define--------------------------------------------------------
local C_disUIBtn = require("src.app.base.ui.disUIBtn")
local c_nextBtn = class("c_nextBtn", C_disUIBtn)

--ui create------------------------------------------
function c_nextBtn:ctor(params_)
    c_nextBtn.super.ctor(self, params_)
    self.className = "nextBtn"
    self.moduleName = "uiBtn"
    self.layerType = "btn"
end

--init data and place------------------------------------------
function c_nextBtn:init(initDict_)
    c_nextBtn.super.init(self, initDict_)
    local _specialDict = {} --自定义数据初始化子UI
    local _avoidInitDict = {} --避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict, _avoidInitDict)
    ----- state init----------------------------------------------------------
    self:stateChange("btnState1", true)
end

function c_nextBtn:initSubUIs()
end

function c_nextBtn:onCreate()
    c_nextBtn.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_nextBtn:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_nextBtn.super.onDestory(self)
end

return c_nextBtn