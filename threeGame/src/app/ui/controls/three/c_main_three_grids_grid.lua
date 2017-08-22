--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_main_three_grids_grid = class("c_main_three_grids_grid",C_disMC)

--ui create------------------------------------------
function c_main_three_grids_grid:ctor(params_)
    c_main_three_grids_grid.super.ctor(self,params_)
    self.className="main_three_grids_grid"
    self.moduleName="three"
    self.resetingR = 0
end

--init data and place------------------------------------------
function c_main_three_grids_grid:init(initDict_)
    c_main_three_grids_grid.super.init(self,initDict_)
    self.main = self:getUiParent()
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_main_three_grids_grid:stateChange(params_)
    --Logic here,then change state.
    c_main_three_grids_grid.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_main_three_grids_grid:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_three_grids_grid.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back---------------------------------------------------
function c_main_three_grids_grid:onFrameName(frameName_)
    c_main_three_grids_grid.super.onFrameName(self,frameName_)

end

function c_main_three_grids_grid:onCreate()
    c_main_three_grids_grid.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_three_grids_grid:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_three_grids_grid.super.onDestory(self)
end

return c_main_three_grids_grid