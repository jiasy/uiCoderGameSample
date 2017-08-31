--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_up_shine = class("c_up_shine",C_disMC)

--ui create------------------------------------------
function c_up_shine:ctor(params_)
    c_up_shine.super.ctor(self,params_)
    self.className="up_shine"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_up_shine:init(initDict_)
    c_up_shine.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_up_shine:stateChange(params_)
    --Logic here,then change state.
    c_up_shine.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_up_shine:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_up_shine.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_up_shine:onFrameName(frameName_)
    c_up_shine.super.onFrameName(self,frameName_)

end

function c_up_shine:onCreate()
    c_up_shine.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_up_shine:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_up_shine.super.onDestory(self)
end

return c_up_shine