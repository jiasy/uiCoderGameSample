--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_coin = class("c_coin",C_disMC)

--ui create------------------------------------------
function c_coin:ctor(params_)
    c_coin.super.ctor(self,params_)
    self.className="coin"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_coin:init(initDict_)
    c_coin.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_coin:stateChange(params_)
    --Logic here,then change state.
    c_coin.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_coin:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_coin.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_coin:onFrameName(frameName_)
    c_coin.super.onFrameName(self,frameName_)

end

function c_coin:onCreate()
    c_coin.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_coin:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_coin.super.onDestory(self)
end

return c_coin