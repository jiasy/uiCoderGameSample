--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_genjing_pailie_1_roll = class("c_genjing_pailie_1_roll",C_disMC)

--ui create------------------------------------------
function c_genjing_pailie_1_roll:ctor(params_)
    c_genjing_pailie_1_roll.super.ctor(self,params_)
    self.className="genjing_pailie_1_roll"
    self.moduleName="ani"
end

--init data and place------------------------------------------
function c_genjing_pailie_1_roll:init(initDict_)
    c_genjing_pailie_1_roll.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _instance290Dict={}
    --_specialDict["instance290"]= _instance290Dict
    --_avoidInit["instance290"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_genjing_pailie_1_roll:stateChange(params_)
    --Logic here,then change state.
    c_genjing_pailie_1_roll.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_genjing_pailie_1_roll:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_genjing_pailie_1_roll.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_genjing_pailie_1_roll:onFrameName(frameName_)
    c_genjing_pailie_1_roll.super.onFrameName(self,frameName_)

end

function c_genjing_pailie_1_roll:onCreate()
    c_genjing_pailie_1_roll.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_genjing_pailie_1_roll:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_genjing_pailie_1_roll.super.onDestory(self)
end

return c_genjing_pailie_1_roll