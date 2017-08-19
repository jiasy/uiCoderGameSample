--class define--------------------------------------------------------
local C_disUI = require("src.app.base.ui.disUI")
local c_main_three_grids = class("c_main_three_grids", C_disUI)

--ui create------------------------------------------
function c_main_three_grids:ctor(params_)
    c_main_three_grids.super.ctor(self, params_)
    self.className = "main_three_grids"
    self.moduleName = "three"
end

--init data and place------------------------------------------
function c_main_three_grids:init(initDict_)
    c_main_three_grids.super.init(self, initDict_)
    self.main = self:getUiParent()
end

--ui stateChange-------------------------------------
function c_main_three_grids:stateChange(stateName_, rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main_three_grids.super.stateChange(self, stateName_, rightNow_)
end

function c_main_three_grids:getGrids(colMax_, rowMax_)
    --获取格子
    local _grids = {}
    for i = 1, colMax_ do
        _grids[i] = {}
        for j = 1, rowMax_ do
            local _tempGrid = self["g_" .. i .. "_" .. j]
            _grids[i][j] = _tempGrid
        end
    end
    return _grids
end

--btn click call back---------------------------------------------------
function c_main_three_grids:btnClicked(btnName_, rollName_, listName_, itemDataDict_)
    c_main_three_grids.super.btnClicked(self, btnName_, rollName_, listName_, itemDataDict_)
end

function c_main_three_grids:onCreate()
    c_main_three_grids.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_three_grids:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_three_grids.super.onDestory(self)
end

return c_main_three_grids