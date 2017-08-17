--class define--------------------------------------------------------
local C_disUI = require("src.app.base.ui.disUI")
local c_main_battle = class("c_main_battle", C_disUI)

local function pursue(pursuer, target, callback, speed, a)
    speed = speed or 5
    a = a or 0
    local token = {}
    token.handle = cc.Director:getInstance():getScheduler():scheduleScriptFunc(function()
        local px, py = pursuer:getPosition()
        local tx, ty = target:getPosition()
        local dx, dy = tx - px, ty - py
        if math.abs(dx) < 10 and math.abs(dy) < 10 then
            cc.Director:getInstance():getScheduler():unscheduleScriptEntry(token.handle)
            callback()
            return
        end
        local radian = math.atan2(dy, dx)
        local vx, vy = speed * math.cos(radian), speed * math.sin(radian)
        pursuer:setPosition(px + vx, py + vy)
        speed = speed + a
    end, 0, false)
end

local colors = { { r = 1, g = 1, b = 0 }, { r = 1, g = 0, b = 0 }, { r = 0, g = 1, b = 0 }, { r = 0, g = 0, b = 1 }, { r = 1, g = 1, b = 1 } }

--ui create------------------------------------------
function c_main_battle:ctor(params_)
    c_main_battle.super.ctor(self, params_)
    self.className = "main_battle"
    self.moduleName = "three"
end

--init data and place------------------------------------------
function c_main_battle:init(initDict_)
    c_main_battle.super.init(self, initDict_)
    return nil
end

--ui stateChange-------------------------------------
function c_main_battle:stateChange(stateName_, rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main_battle.super.stateChange(self, stateName_, rightNow_)
end

--btn click call back---------------------------------------------------
function c_main_battle:btnClicked(btnName_, rollName_, listName_, itemDataDict_)
    c_main_battle.super.btnClicked(self, btnName_, rollName_, listName_, itemDataDict_)
end

function c_main_battle:onCreate()
    c_main_battle.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_battle:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_battle.super.onDestory(self)
end

return c_main_battle
