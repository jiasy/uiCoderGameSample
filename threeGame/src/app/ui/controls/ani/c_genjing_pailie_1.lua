--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_genjing_pailie_1 = class("c_genjing_pailie_1",C_disMC)

--ui create------------------------------------------
function c_genjing_pailie_1:ctor(params_)
    c_genjing_pailie_1.super.ctor(self,params_)
    self.className="genjing_pailie_1"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_genjing_pailie_1:init(initDict_)
    c_genjing_pailie_1.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_genjing_pailie_1:stateChange(params_)
    --Logic here,then change state.
    c_genjing_pailie_1.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_genjing_pailie_1:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_genjing_pailie_1.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_genjing_pailie_1:onFrameName(frameName_)
    c_genjing_pailie_1.super.onFrameName(self,frameName_)

end

function c_genjing_pailie_1:onCreate()
    c_genjing_pailie_1.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_genjing_pailie_1:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_genjing_pailie_1.super.onDestory(self)
end

return c_genjing_pailie_1