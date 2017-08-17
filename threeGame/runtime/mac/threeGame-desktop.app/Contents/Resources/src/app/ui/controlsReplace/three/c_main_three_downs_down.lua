--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_main_three_downs_down = class("c_main_three_downs_down",C_disMC)

--ui create------------------------------------------
function c_main_three_downs_down:ctor(params_)
    c_main_three_downs_down.super.ctor(self,params_)
    self.className="main_three_downs_down"
    self.moduleName="three"
end

--init data and place------------------------------------------
function c_main_three_downs_down:init(initDict_)
    c_main_three_downs_down.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_main_three_downs_down:stateChange(params_)
    --Logic here,then change state.
    c_main_three_downs_down.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_main_three_downs_down:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_three_downs_down.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back---------------------------------------------------
function c_main_three_downs_down:onFrameName(frameName_)
    c_main_three_downs_down.super.onFrameName(self,frameName_)

end

function c_main_three_downs_down:onCreate()
    c_main_three_downs_down.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_three_downs_down:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_three_downs_down.super.onDestory(self)
end

return c_main_three_downs_down