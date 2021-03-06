--class define--------------------------------------------------------
local C_disUI = require("src.app.base.ui.disUI")
local c_main_three_downs = class("c_main_three_downs", C_disUI)

--ui create------------------------------------------
function c_main_three_downs:ctor(params_)
    c_main_three_downs.super.ctor(self, params_)
    self.className = "main_three_downs"
    self.moduleName = "three"
end

--init data and place------------------------------------------
function c_main_three_downs:init(initDict_)
    c_main_three_downs.super.init(self, initDict_)
    self.main = self:getUiParent()
    ----- ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    -- local _down_9Dict = {}
    -- self.down_9:init(_down_9Dict)
    -- local _down_8Dict = {}
    -- self.down_8:init(_down_8Dict)
    -- local _down_7Dict = {}
    -- self.down_7:init(_down_7Dict)
    -- local _down_6Dict = {}
    -- self.down_6:init(_down_6Dict)
    -- local _down_5Dict = {}
    -- self.down_5:init(_down_5Dict)
    -- local _down_4Dict = {}
    -- self.down_4:init(_down_4Dict)
    -- local _down_3Dict = {}
    -- self.down_3:init(_down_3Dict)
    -- local _down_2Dict = {}
    -- self.down_2:init(_down_2Dict)
    -- local _down_1Dict = {}
    -- self.down_1:init(_down_1Dict)
    self:initSubUIs(_specialDict,_avoidInitDict)
    for i=1,9 do
        self["down_"..tostring(i)]:setVisible(false)
    end
end

--ui stateChange-------------------------------------
function c_main_three_downs:stateChange(stateName_, rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main_three_downs.super.stateChange(self, stateName_, rightNow_)
end

--btn click call back---------------------------------------------------
function c_main_three_downs:btnClicked(btnName_, rollName_, listName_, itemDataDict_)
    c_main_three_downs.super.btnClicked(self, btnName_, rollName_, listName_, itemDataDict_)
end

function c_main_three_downs:onCreate()
    c_main_three_downs.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_three_downs:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_three_downs.super.onDestory(self)
end

return c_main_three_downs