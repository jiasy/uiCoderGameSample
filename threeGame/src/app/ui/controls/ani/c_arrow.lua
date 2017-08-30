--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_arrow = class("c_arrow",C_disMC)

--ui create------------------------------------------
function c_arrow:ctor(params_)
    c_arrow.super.ctor(self,params_)
    self.className="arrow"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_arrow:init(initDict_)
    c_arrow.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_arrow:stateChange(params_)
    --Logic here,then change state.
    c_arrow.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_arrow:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_arrow.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_arrow:onFrameName(frameName_)
    c_arrow.super.onFrameName(self,frameName_)

end

function c_arrow:onCreate()
    c_arrow.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_arrow:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_arrow.super.onDestory(self)
end

return c_arrow