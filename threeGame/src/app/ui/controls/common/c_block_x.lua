--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_block_x = class("c_block_x",C_disMC)

--ui create------------------------------------------
function c_block_x:ctor(params_)
    c_block_x.super.ctor(self,params_)
    self.className="block_x"
    self.moduleName="common"
end

--init data and place------------------------------------------
function c_block_x:init(initDict_)
    c_block_x.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_block_x:stateChange(params_)
    --Logic here,then change state.
    c_block_x.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_block_x:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_block_x.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_block_x:onFrameName(frameName_)
    c_block_x.super.onFrameName(self,frameName_)

end

function c_block_x:onCreate()
    c_block_x.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_block_x:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_block_x.super.onDestory(self)
end

return c_block_x