--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_glassBlock_glow_out = class("c_glassBlock_glow_out",C_disMC)

--ui create------------------------------------------
function c_glassBlock_glow_out:ctor(params_)
    c_glassBlock_glow_out.super.ctor(self,params_)
    self.className="glassBlock_glow_out"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_glassBlock_glow_out:init(initDict_)
    c_glassBlock_glow_out.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_glassBlock_glow_out:stateChange(params_)
    --Logic here,then change state.
    c_glassBlock_glow_out.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_glassBlock_glow_out:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_glassBlock_glow_out.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_glassBlock_glow_out:onFrameName(frameName_)
    c_glassBlock_glow_out.super.onFrameName(self,frameName_)

end

function c_glassBlock_glow_out:onCreate()
    c_glassBlock_glow_out.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_glassBlock_glow_out:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_glassBlock_glow_out.super.onDestory(self)
end

return c_glassBlock_glow_out