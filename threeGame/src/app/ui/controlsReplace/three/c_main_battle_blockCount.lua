--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_main_battle_blockCount = class("c_main_battle_blockCount",C_disMC)

--ui create------------------------------------------
function c_main_battle_blockCount:ctor(params_)
    c_main_battle_blockCount.super.ctor(self,params_)
    self.className="main_battle_blockCount"
    self.moduleName="three"
end

--init data and place------------------------------------------
function c_main_battle_blockCount:init(initDict_)
    c_main_battle_blockCount.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _blockShowDict={}
    --_specialDict["blockShow"]= _blockShowDict
    --_avoidInit["blockShow"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_main_battle_blockCount:stateChange(params_)
    --Logic here,then change state.
    c_main_battle_blockCount.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_main_battle_blockCount:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_battle_blockCount.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_main_battle_blockCount:onFrameName(frameName_)
    c_main_battle_blockCount.super.onFrameName(self,frameName_)

end

function c_main_battle_blockCount:onCreate()
    c_main_battle_blockCount.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_battle_blockCount:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_battle_blockCount.super.onDestory(self)
end

return c_main_battle_blockCount