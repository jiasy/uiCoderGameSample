--class define--------------------------------------------------------
local C_disUIBtn = require("src.app.base.ui.disUIBtn")
local c_sampleUIBtn_lib = class("c_sampleUIBtn_lib", C_disUIBtn)

--ui create------------------------------------------
function c_sampleUIBtn_lib:ctor(params_)
    c_sampleUIBtn_lib.super.ctor(self, params_)
    self.className = "sampleUIBtn_lib"
    self.moduleName = "uiBtn"
    self.layerType = "btn"
end

--init data and place------------------------------------------
function c_sampleUIBtn_lib:init(initDict_)
    c_sampleUIBtn_lib.super.init(self, initDict_)
    local _specialDict = {} --自定义数据初始化子UI
    local _avoidInitDict = {} --避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict, _avoidInitDict)
    ----- state init----------------------------------------------------------
    self:stateChange("btnState1", true)
end

function c_sampleUIBtn_lib:initSubUIs()
end

function c_sampleUIBtn_lib:onCreate()
    c_sampleUIBtn_lib.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_sampleUIBtn_lib:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_sampleUIBtn_lib.super.onDestory(self)
end

return c_sampleUIBtn_lib