--[[
    调用方式 
        1.模块名[moduleName] + 界面类名[className] 的方式
            local _targetUi=uiControl:getInstance():jumpTo("develop","uiJumper")
        2._targetUi在场景中，只有调用 init 才能用。否则只是空层
            _targetUi:init({})
]]
--class define--------------------------------------------------------
local C_disUI = require("src.app.base.ui.disUI")
local c_uiJumper = class("c_uiJumper", C_disUI)

--ui create------------------------------------------
function c_uiJumper:ctor(params_)
    c_uiJumper.super.ctor(self, params_)
    self.className = "uiJumper"
    self.moduleName = "develop"
    self.layerType = "ui"
end

--init data and place------------------------------------------
function c_uiJumper:init(initDict_)
    c_uiJumper.super.init(self, initDict_)
    ----- ui init----------------------------------------------------------
    local _specialDict = {} --自定义数据初始化子UI
    local _avoidInitDict = {} --避免在这里进行初始化的UI名称做KEY的字典。
    --local _rollDict={}
    --_specialDict["roll"]= _rollDict
    --_avoidInit["roll"]="avoidInitHere"
    --local _roll2Dict={}
    --_specialDict["roll2"]= _roll2Dict
    --_avoidInit["roll2"]="avoidInitHere"

    self:initSubUIs(_specialDict, _avoidInitDict)
    ----- state init----------------------------------------------------------
    ----- self:stateAniPreset(stateName,animationMove,lastTime,easeType)--更改动画预设
    self:stateChange(self.uiStates[1].stateName, true)
    ----- btns----------------------------------------------------------
    -- self.btn_state_s2_s1
    -- self.btn_state_s3_s1

    require("src.app.base.ui.btnGroup").new():initByBtnArr({ self.btn_state_s3_s1, self.btn_state_s2_s1 }) --关联按钮形成按钮组
end

--ui stateChange-------------------------------------
function c_uiJumper:stateChange(stateName_, rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_uiJumper.super.stateChange(self, stateName_, rightNow_)
end

--btn click call back---------------------------------------------------
function c_uiJumper:btnClicked(btnName_, rollName_, listName_, itemDataDict_)
    c_uiJumper.super.btnClicked(self, btnName_, rollName_, listName_, itemDataDict_)
    ----- check btn name----------------------------------------------------------
    if btnName_ == "btn_state_s2_s1" then
        print("Btn_pressed : " .. self.className .. " -> btn_state_s2_s1"); ---------------------------- btn_state_s2_s1
        self.roll:createList({ {}, {} })
        self.roll2:createList({ {}, {}, {}, {}, {}, {}, {}, {} })
    end
    if btnName_ == "btn_state_s3_s1" then
        print("Btn_pressed : " .. self.className .. " -> btn_state_s3_s1"); ---------------------------- btn_state_s3_s1
        self.roll2:createList({ {}, {} })
        self.roll:createList({ {}, {}, {}, {}, {}, {}, {}, {} })
    end
end

function c_uiJumper:onCreate()
    c_uiJumper.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_uiJumper:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_uiJumper.super.onDestory(self)
end

return c_uiJumper