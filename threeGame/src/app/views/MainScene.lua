
local MainScene = class("MainScene", cc.load("mvc").ViewBase)

local function callLater(delay, callback)
    local data = {}
    data.funcID = cc.Director:getInstance():getScheduler():scheduleScriptFunc(function()
        callback()
        cc.Director:getInstance():getScheduler():unscheduleScriptEntry(data.funcID)
    end, delay, false)
end

function MainScene:onCreate()
	self:addChild(uiControl:getInstance().stageContainer)
	uiControl:getInstance():jumpTo("three","main"):init(nil)
end

return MainScene