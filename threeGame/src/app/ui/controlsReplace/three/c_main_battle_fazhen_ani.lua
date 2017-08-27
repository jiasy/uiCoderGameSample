--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_main_battle_fazhen_ani = class("c_main_battle_fazhen_ani",C_disMC)

--ui create------------------------------------------
function c_main_battle_fazhen_ani:ctor(params_)
    c_main_battle_fazhen_ani.super.ctor(self,params_)
    self.className="main_battle_fazhen_ani"
    self.moduleName="three"
end

--init data and place------------------------------------------
function c_main_battle_fazhen_ani:init(initDict_)
    c_main_battle_fazhen_ani.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_main_battle_fazhen_ani:stateChange(params_)
    --Logic here,then change state.
    c_main_battle_fazhen_ani.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_main_battle_fazhen_ani:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_battle_fazhen_ani.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_main_battle_fazhen_ani:onFrameName(frameName_)
    c_main_battle_fazhen_ani.super.onFrameName(self,frameName_)

end

function c_main_battle_fazhen_ani:onCreate()
    c_main_battle_fazhen_ani.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_battle_fazhen_ani:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_battle_fazhen_ani.super.onDestory(self)
end

return c_main_battle_fazhen_ani