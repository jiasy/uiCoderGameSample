--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_main_three_grids = class("c_main_three_grids",C_disUI)

--ui create------------------------------------------
function c_main_three_grids:ctor(params_)
    c_main_three_grids.super.ctor(self,params_)
    self.className="main_three_grids"
    self.moduleName="three"
end

--init data and place------------------------------------------
function c_main_three_grids:init(initDict_)
    c_main_three_grids.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _g_8_1Dict={}
    --_specialDict["g_8_1"]= _g_8_1Dict
    --_avoidInit["g_8_1"]="avoidInitHere"
    --local _g_7_1Dict={}
    --_specialDict["g_7_1"]= _g_7_1Dict
    --_avoidInit["g_7_1"]="avoidInitHere"
    --local _g_6_1Dict={}
    --_specialDict["g_6_1"]= _g_6_1Dict
    --_avoidInit["g_6_1"]="avoidInitHere"
    --local _g_5_1Dict={}
    --_specialDict["g_5_1"]= _g_5_1Dict
    --_avoidInit["g_5_1"]="avoidInitHere"
    --local _g_4_1Dict={}
    --_specialDict["g_4_1"]= _g_4_1Dict
    --_avoidInit["g_4_1"]="avoidInitHere"
    --local _g_3_1Dict={}
    --_specialDict["g_3_1"]= _g_3_1Dict
    --_avoidInit["g_3_1"]="avoidInitHere"
    --local _g_2_1Dict={}
    --_specialDict["g_2_1"]= _g_2_1Dict
    --_avoidInit["g_2_1"]="avoidInitHere"
    --local _g_1_1Dict={}
    --_specialDict["g_1_1"]= _g_1_1Dict
    --_avoidInit["g_1_1"]="avoidInitHere"
    --local _g_9_1Dict={}
    --_specialDict["g_9_1"]= _g_9_1Dict
    --_avoidInit["g_9_1"]="avoidInitHere"
    --local _g_8_2Dict={}
    --_specialDict["g_8_2"]= _g_8_2Dict
    --_avoidInit["g_8_2"]="avoidInitHere"
    --local _g_7_2Dict={}
    --_specialDict["g_7_2"]= _g_7_2Dict
    --_avoidInit["g_7_2"]="avoidInitHere"
    --local _g_6_2Dict={}
    --_specialDict["g_6_2"]= _g_6_2Dict
    --_avoidInit["g_6_2"]="avoidInitHere"
    --local _g_5_2Dict={}
    --_specialDict["g_5_2"]= _g_5_2Dict
    --_avoidInit["g_5_2"]="avoidInitHere"
    --local _g_4_2Dict={}
    --_specialDict["g_4_2"]= _g_4_2Dict
    --_avoidInit["g_4_2"]="avoidInitHere"
    --local _g_3_2Dict={}
    --_specialDict["g_3_2"]= _g_3_2Dict
    --_avoidInit["g_3_2"]="avoidInitHere"
    --local _g_2_2Dict={}
    --_specialDict["g_2_2"]= _g_2_2Dict
    --_avoidInit["g_2_2"]="avoidInitHere"
    --local _g_1_2Dict={}
    --_specialDict["g_1_2"]= _g_1_2Dict
    --_avoidInit["g_1_2"]="avoidInitHere"
    --local _g_9_2Dict={}
    --_specialDict["g_9_2"]= _g_9_2Dict
    --_avoidInit["g_9_2"]="avoidInitHere"
    --local _g_8_3Dict={}
    --_specialDict["g_8_3"]= _g_8_3Dict
    --_avoidInit["g_8_3"]="avoidInitHere"
    --local _g_7_3Dict={}
    --_specialDict["g_7_3"]= _g_7_3Dict
    --_avoidInit["g_7_3"]="avoidInitHere"
    --local _g_6_3Dict={}
    --_specialDict["g_6_3"]= _g_6_3Dict
    --_avoidInit["g_6_3"]="avoidInitHere"
    --local _g_5_3Dict={}
    --_specialDict["g_5_3"]= _g_5_3Dict
    --_avoidInit["g_5_3"]="avoidInitHere"
    --local _g_4_3Dict={}
    --_specialDict["g_4_3"]= _g_4_3Dict
    --_avoidInit["g_4_3"]="avoidInitHere"
    --local _g_3_3Dict={}
    --_specialDict["g_3_3"]= _g_3_3Dict
    --_avoidInit["g_3_3"]="avoidInitHere"
    --local _g_2_3Dict={}
    --_specialDict["g_2_3"]= _g_2_3Dict
    --_avoidInit["g_2_3"]="avoidInitHere"
    --local _g_1_3Dict={}
    --_specialDict["g_1_3"]= _g_1_3Dict
    --_avoidInit["g_1_3"]="avoidInitHere"
    --local _g_9_3Dict={}
    --_specialDict["g_9_3"]= _g_9_3Dict
    --_avoidInit["g_9_3"]="avoidInitHere"
    --local _g_8_4Dict={}
    --_specialDict["g_8_4"]= _g_8_4Dict
    --_avoidInit["g_8_4"]="avoidInitHere"
    --local _g_7_4Dict={}
    --_specialDict["g_7_4"]= _g_7_4Dict
    --_avoidInit["g_7_4"]="avoidInitHere"
    --local _g_6_4Dict={}
    --_specialDict["g_6_4"]= _g_6_4Dict
    --_avoidInit["g_6_4"]="avoidInitHere"
    --local _g_5_4Dict={}
    --_specialDict["g_5_4"]= _g_5_4Dict
    --_avoidInit["g_5_4"]="avoidInitHere"
    --local _g_4_4Dict={}
    --_specialDict["g_4_4"]= _g_4_4Dict
    --_avoidInit["g_4_4"]="avoidInitHere"
    --local _g_3_4Dict={}
    --_specialDict["g_3_4"]= _g_3_4Dict
    --_avoidInit["g_3_4"]="avoidInitHere"
    --local _g_2_4Dict={}
    --_specialDict["g_2_4"]= _g_2_4Dict
    --_avoidInit["g_2_4"]="avoidInitHere"
    --local _g_1_4Dict={}
    --_specialDict["g_1_4"]= _g_1_4Dict
    --_avoidInit["g_1_4"]="avoidInitHere"
    --local _g_9_4Dict={}
    --_specialDict["g_9_4"]= _g_9_4Dict
    --_avoidInit["g_9_4"]="avoidInitHere"
    --local _g_8_5Dict={}
    --_specialDict["g_8_5"]= _g_8_5Dict
    --_avoidInit["g_8_5"]="avoidInitHere"
    --local _g_7_5Dict={}
    --_specialDict["g_7_5"]= _g_7_5Dict
    --_avoidInit["g_7_5"]="avoidInitHere"
    --local _g_6_5Dict={}
    --_specialDict["g_6_5"]= _g_6_5Dict
    --_avoidInit["g_6_5"]="avoidInitHere"
    --local _g_5_5Dict={}
    --_specialDict["g_5_5"]= _g_5_5Dict
    --_avoidInit["g_5_5"]="avoidInitHere"
    --local _g_4_5Dict={}
    --_specialDict["g_4_5"]= _g_4_5Dict
    --_avoidInit["g_4_5"]="avoidInitHere"
    --local _g_3_5Dict={}
    --_specialDict["g_3_5"]= _g_3_5Dict
    --_avoidInit["g_3_5"]="avoidInitHere"
    --local _g_2_5Dict={}
    --_specialDict["g_2_5"]= _g_2_5Dict
    --_avoidInit["g_2_5"]="avoidInitHere"
    --local _g_1_5Dict={}
    --_specialDict["g_1_5"]= _g_1_5Dict
    --_avoidInit["g_1_5"]="avoidInitHere"
    --local _g_9_5Dict={}
    --_specialDict["g_9_5"]= _g_9_5Dict
    --_avoidInit["g_9_5"]="avoidInitHere"
    --local _g_8_6Dict={}
    --_specialDict["g_8_6"]= _g_8_6Dict
    --_avoidInit["g_8_6"]="avoidInitHere"
    --local _g_7_6Dict={}
    --_specialDict["g_7_6"]= _g_7_6Dict
    --_avoidInit["g_7_6"]="avoidInitHere"
    --local _g_6_6Dict={}
    --_specialDict["g_6_6"]= _g_6_6Dict
    --_avoidInit["g_6_6"]="avoidInitHere"
    --local _g_5_6Dict={}
    --_specialDict["g_5_6"]= _g_5_6Dict
    --_avoidInit["g_5_6"]="avoidInitHere"
    --local _g_4_6Dict={}
    --_specialDict["g_4_6"]= _g_4_6Dict
    --_avoidInit["g_4_6"]="avoidInitHere"
    --local _g_3_6Dict={}
    --_specialDict["g_3_6"]= _g_3_6Dict
    --_avoidInit["g_3_6"]="avoidInitHere"
    --local _g_2_6Dict={}
    --_specialDict["g_2_6"]= _g_2_6Dict
    --_avoidInit["g_2_6"]="avoidInitHere"
    --local _g_1_6Dict={}
    --_specialDict["g_1_6"]= _g_1_6Dict
    --_avoidInit["g_1_6"]="avoidInitHere"
    --local _g_9_6Dict={}
    --_specialDict["g_9_6"]= _g_9_6Dict
    --_avoidInit["g_9_6"]="avoidInitHere"
    --local _g_8_7Dict={}
    --_specialDict["g_8_7"]= _g_8_7Dict
    --_avoidInit["g_8_7"]="avoidInitHere"
    --local _g_7_7Dict={}
    --_specialDict["g_7_7"]= _g_7_7Dict
    --_avoidInit["g_7_7"]="avoidInitHere"
    --local _g_6_7Dict={}
    --_specialDict["g_6_7"]= _g_6_7Dict
    --_avoidInit["g_6_7"]="avoidInitHere"
    --local _g_5_7Dict={}
    --_specialDict["g_5_7"]= _g_5_7Dict
    --_avoidInit["g_5_7"]="avoidInitHere"
    --local _g_4_7Dict={}
    --_specialDict["g_4_7"]= _g_4_7Dict
    --_avoidInit["g_4_7"]="avoidInitHere"
    --local _g_3_7Dict={}
    --_specialDict["g_3_7"]= _g_3_7Dict
    --_avoidInit["g_3_7"]="avoidInitHere"
    --local _g_2_7Dict={}
    --_specialDict["g_2_7"]= _g_2_7Dict
    --_avoidInit["g_2_7"]="avoidInitHere"
    --local _g_1_7Dict={}
    --_specialDict["g_1_7"]= _g_1_7Dict
    --_avoidInit["g_1_7"]="avoidInitHere"
    --local _g_9_7Dict={}
    --_specialDict["g_9_7"]= _g_9_7Dict
    --_avoidInit["g_9_7"]="avoidInitHere"
    --local _g_8_8Dict={}
    --_specialDict["g_8_8"]= _g_8_8Dict
    --_avoidInit["g_8_8"]="avoidInitHere"
    --local _g_7_8Dict={}
    --_specialDict["g_7_8"]= _g_7_8Dict
    --_avoidInit["g_7_8"]="avoidInitHere"
    --local _g_6_8Dict={}
    --_specialDict["g_6_8"]= _g_6_8Dict
    --_avoidInit["g_6_8"]="avoidInitHere"
    --local _g_5_8Dict={}
    --_specialDict["g_5_8"]= _g_5_8Dict
    --_avoidInit["g_5_8"]="avoidInitHere"
    --local _g_4_8Dict={}
    --_specialDict["g_4_8"]= _g_4_8Dict
    --_avoidInit["g_4_8"]="avoidInitHere"
    --local _g_3_8Dict={}
    --_specialDict["g_3_8"]= _g_3_8Dict
    --_avoidInit["g_3_8"]="avoidInitHere"
    --local _g_2_8Dict={}
    --_specialDict["g_2_8"]= _g_2_8Dict
    --_avoidInit["g_2_8"]="avoidInitHere"
    --local _g_1_8Dict={}
    --_specialDict["g_1_8"]= _g_1_8Dict
    --_avoidInit["g_1_8"]="avoidInitHere"
    --local _g_9_8Dict={}
    --_specialDict["g_9_8"]= _g_9_8Dict
    --_avoidInit["g_9_8"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui state change-------------------------------------
function c_main_three_grids:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main_three_grids.super.stateChange(self,stateName_,rightNow_)
end

--ui structure change-------------------------------------
function c_main_three_grids:uiStructureChange()
    --界面结构变化，需要做的操作。
    c_main_three_grids.super.uiStructureChange(self)
end

--btn click call back---------------------------------------------------
function c_main_three_grids:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_three_grids.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

function c_main_three_grids:onCreate()
    c_main_three_grids.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_three_grids:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_three_grids.super.onDestory(self)
end

return c_main_three_grids