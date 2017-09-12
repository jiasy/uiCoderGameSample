--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_main_up = class("c_main_up",C_disUI)

--ui create------------------------------------------
function c_main_up:ctor(params_)
    c_main_up.super.ctor(self,params_)
    self.className="main_up"
    self.moduleName="three"
end

--init data and place------------------------------------------
function c_main_up:init(initDict_)
    c_main_up.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
    self.sideLeft:setScaleX(-1)
end
--ui stateChange-------------------------------------
function c_main_up:updateF(type_)
    --Logic here,then change state.
    c_main_up.super.updateF(self,type_)
    if type_ == 914 then
        self.sideLeft:setScaleX(-1)
    end
end
--ui stateChange-------------------------------------
function c_main_up:stateChange(params_)
    --Logic here,then change state.
    c_main_up.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_main_up:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_main_up.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_main_up:onFrameName(frameName_)
    c_main_up.super.onFrameName(self,frameName_)

end

function c_main_up:onCreate()
    c_main_up.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_up:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_up.super.onDestory(self)
end

return c_main_up