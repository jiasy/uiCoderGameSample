--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_ani_block_tip = class("c_ani_block_tip",C_disMC)

--ui create------------------------------------------
function c_ani_block_tip:ctor(params_)
    c_ani_block_tip.super.ctor(self,params_)
    self.className="ani_block_tip"
    self.moduleName="common"
end

--init data and place------------------------------------------
function c_ani_block_tip:init(initDict_)
    c_ani_block_tip.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_ani_block_tip:stateChange(params_)
    --Logic here,then change state.
    c_ani_block_tip.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_ani_block_tip:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_ani_block_tip.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_ani_block_tip:onFrameName(frameName_)
    c_ani_block_tip.super.onFrameName(self,frameName_)

end

function c_ani_block_tip:onCreate()
    c_ani_block_tip.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_ani_block_tip:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_ani_block_tip.super.onDestory(self)
end

return c_ani_block_tip