--[[
    调用方式 
        1.模块名[moduleName] + 界面类名[className] 的方式
            local _targetUi=uiControl:getInstance():jumpTo("common","move_trail_7")
        2._targetUi在场景中，只有调用 init 才能用。否则只是空层
            _targetUi:init({})
]]
--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_move_trail_7 = class("c_move_trail_7",C_disMC)

--ui create------------------------------------------
function c_move_trail_7:ctor(params_)
    c_move_trail_7.super.ctor(self,params_)
    self.className="move_trail_7"
    self.moduleName="common"
    self.layerType="ui"
end
--Update Frame
function c_move_trail_7:updateF(type_)
    c_move_trail_7.super.updateF(self, type_)
    if type_ == 914 then
        if self.trailMotion then
            self.trailMotion:setPosition(cc.p(self.container:getPositionX()*self.currentScale,self.container:getPositionY()*self.currentScale))
        end
    end
end
--init data and place------------------------------------------
function c_move_trail_7:init(initDict_)
    c_move_trail_7.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_move_trail_7:stateChange(params_)
    --Logic here,then change state.
    c_move_trail_7.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_move_trail_7:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_move_trail_7.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back---------------------------------------------------
function c_move_trail_7:onFrameName(frameName_)
    c_move_trail_7.super.onFrameName(self,frameName_)

end

function c_move_trail_7:onCreate()
    c_move_trail_7.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_move_trail_7:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_move_trail_7.super.onDestory(self)
end

return c_move_trail_7