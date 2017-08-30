--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_four_cricle_single = class("c_four_cricle_single",C_disMC)

--ui create------------------------------------------
function c_four_cricle_single:ctor(params_)
    c_four_cricle_single.super.ctor(self,params_)
    self.className="four_cricle_single"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_four_cricle_single:init(initDict_)
    c_four_cricle_single.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_four_cricle_single:stateChange(params_)
    --Logic here,then change state.
    c_four_cricle_single.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_four_cricle_single:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_four_cricle_single.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_four_cricle_single:onFrameName(frameName_)
    c_four_cricle_single.super.onFrameName(self,frameName_)

end

function c_four_cricle_single:onCreate()
    c_four_cricle_single.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_four_cricle_single:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_four_cricle_single.super.onDestory(self)
end

return c_four_cricle_single