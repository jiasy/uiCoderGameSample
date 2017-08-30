--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_zhiye_shine_2 = class("c_zhiye_shine_2",C_disMC)

--ui create------------------------------------------
function c_zhiye_shine_2:ctor(params_)
    c_zhiye_shine_2.super.ctor(self,params_)
    self.className="zhiye_shine_2"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_zhiye_shine_2:init(initDict_)
    c_zhiye_shine_2.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_zhiye_shine_2:stateChange(params_)
    --Logic here,then change state.
    c_zhiye_shine_2.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_zhiye_shine_2:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_zhiye_shine_2.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_zhiye_shine_2:onFrameName(frameName_)
    c_zhiye_shine_2.super.onFrameName(self,frameName_)

end

function c_zhiye_shine_2:onCreate()
    c_zhiye_shine_2.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_zhiye_shine_2:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_zhiye_shine_2.super.onDestory(self)
end

return c_zhiye_shine_2