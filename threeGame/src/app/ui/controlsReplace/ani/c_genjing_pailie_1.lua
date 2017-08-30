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
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _instance291Dict={}
    --_specialDict["instance291"]= _instance291Dict
    --_avoidInit["instance291"]="avoidInitHere"
    --local _instance297Dict={}
    --_specialDict["instance297"]= _instance297Dict
    --_avoidInit["instance297"]="avoidInitHere"
    --local _instance303Dict={}
    --_specialDict["instance303"]= _instance303Dict
    --_avoidInit["instance303"]="avoidInitHere"
    --local _instance309Dict={}
    --_specialDict["instance309"]= _instance309Dict
    --_avoidInit["instance309"]="avoidInitHere"
    --local _instance315Dict={}
    --_specialDict["instance315"]= _instance315Dict
    --_avoidInit["instance315"]="avoidInitHere"
    --local _instance321Dict={}
    --_specialDict["instance321"]= _instance321Dict
    --_avoidInit["instance321"]="avoidInitHere"
    --local _instance327Dict={}
    --_specialDict["instance327"]= _instance327Dict
    --_avoidInit["instance327"]="avoidInitHere"
    --local _instance333Dict={}
    --_specialDict["instance333"]= _instance333Dict
    --_avoidInit["instance333"]="avoidInitHere"
    --local _instance339Dict={}
    --_specialDict["instance339"]= _instance339Dict
    --_avoidInit["instance339"]="avoidInitHere"
    --local _instance345Dict={}
    --_specialDict["instance345"]= _instance345Dict
    --_avoidInit["instance345"]="avoidInitHere"
    --local _instance351Dict={}
    --_specialDict["instance351"]= _instance351Dict
    --_avoidInit["instance351"]="avoidInitHere"
    --local _instance357Dict={}
    --_specialDict["instance357"]= _instance357Dict
    --_avoidInit["instance357"]="avoidInitHere"
    --local _instance363Dict={}
    --_specialDict["instance363"]= _instance363Dict
    --_avoidInit["instance363"]="avoidInitHere"
    --local _instance369Dict={}
    --_specialDict["instance369"]= _instance369Dict
    --_avoidInit["instance369"]="avoidInitHere"
    --local _instance375Dict={}
    --_specialDict["instance375"]= _instance375Dict
    --_avoidInit["instance375"]="avoidInitHere"
    --local _instance381Dict={}
    --_specialDict["instance381"]= _instance381Dict
    --_avoidInit["instance381"]="avoidInitHere"
    --local _instance387Dict={}
    --_specialDict["instance387"]= _instance387Dict
    --_avoidInit["instance387"]="avoidInitHere"
    --local _instance393Dict={}
    --_specialDict["instance393"]= _instance393Dict
    --_avoidInit["instance393"]="avoidInitHere"
    --local _instance399Dict={}
    --_specialDict["instance399"]= _instance399Dict
    --_avoidInit["instance399"]="avoidInitHere"
    --local _instance405Dict={}
    --_specialDict["instance405"]= _instance405Dict
    --_avoidInit["instance405"]="avoidInitHere"
    
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