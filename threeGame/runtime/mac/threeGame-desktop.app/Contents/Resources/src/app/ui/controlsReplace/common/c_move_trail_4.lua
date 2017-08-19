--[[
    调用方式 
        1.模块名[moduleName] + 界面类名[className] 的方式
            local _targetUi=uiControl:getInstance():jumpTo("common","move_trail_4")
        2._targetUi在场景中，只有调用 init 才能用。否则只是空层
            _targetUi:init({})
]]
--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_move_trail_4 = class("c_move_trail_4",C_disMC)

--ui create------------------------------------------
function c_move_trail_4:ctor(params_)
    c_move_trail_4.super.ctor(self,params_)
    self.className="move_trail_4"
    self.moduleName="common"
    self.layerType="ui"
end

--init data and place------------------------------------------
function c_move_trail_4:init(initDict_)
    c_move_trail_4.super.init(self,initDict_)
    -----ui init----------------------------------------------------------
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    --local _containerDict={}
    --_specialDict["container"]= _containerDict
    --_avoidInit["container"]="avoidInitHere"
    
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_move_trail_4:stateChange(params_)
    --Logic here,then change state.
    c_move_trail_4.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_move_trail_4:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_move_trail_4.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back---------------------------------------------------
function c_move_trail_4:onFrameName(frameName_)
    c_move_trail_4.super.onFrameName(self,frameName_)

end

function c_move_trail_4:onCreate()
    c_move_trail_4.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_move_trail_4:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_move_trail_4.super.onDestory(self)
end

return c_move_trail_4