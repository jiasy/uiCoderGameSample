--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_pngAnimation = class("c_pngAnimation",C_disUI)

--ui create------------------------------------------
function c_pngAnimation:ctor(params_)
    c_pngAnimation.super.ctor(self,params_)
    self.className="pngAnimation"
    self.moduleName="common"
end

--init data and place------------------------------------------
function c_pngAnimation:init(initDict_)
    c_pngAnimation.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
    --隐藏编辑器用来显示位置的图片
    self.pic:setVisible(false)

    --作为PNG序列的承载对象，名称非数字部分为自己要使用的动画序列
    --add_fireSqu1
    --  fireSqu 为使用的序列动画名
    --  add 为使用的叠加模式
    local _seqName = nil
    local _blendMode = nil
    local _lastChar = string.sub(self.name,-1)
    if tonumber(_lastChar) then
        local _lastTwoChar = string.sub(self.name,-2)
        if tonumber(_lastTwoChar) then
            _seqName = string.sub(self.name,1,-3)
        else
            _seqName = string.sub(self.name,1,-2)
        end
    else
        _seqName = self.name
    end
    --解析名称中是否含有叠加模式的说明。
    if string.find(_seqName,"_") then
        local _seqNameArr = string.split(_seqName,"_")
        _blendMode = _seqNameArr[1]
        _seqName = _seqNameArr[2]
    end
    print ("_seqName = "..  tostring(_seqName)) 
    local _pngAnimation = self.displayUtils:createAnimation(_seqName, true,nil,true)
    if _blendMode then
        self.displayUtils:setBlendToDisplay(_pngAnimation,_blendMode)
    end
    self:addChild(_pngAnimation)
end

--ui state change-------------------------------------
function c_pngAnimation:stateChange(stateName_,rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_pngAnimation.super.stateChange(self,stateName_,rightNow_)
end

--ui structure change-------------------------------------
function c_pngAnimation:uiStructureChange()
    --界面结构变化，需要做的操作。
    c_pngAnimation.super.uiStructureChange(self)
end

--btn click call back---------------------------------------------------
function c_pngAnimation:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_pngAnimation.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

function c_pngAnimation:onCreate()
    c_pngAnimation.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_pngAnimation:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_pngAnimation.super.onDestory(self)
end

return c_pngAnimation