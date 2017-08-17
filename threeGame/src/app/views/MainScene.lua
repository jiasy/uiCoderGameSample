
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
--    local proxy = LocalProxy.new()
--	uiControl:getInstance():jumpTo("three","main"):init(proxy)
	uiControl:getInstance():jumpTo("three","main"):init(nil)

	-- uiControl:getInstance():jumpTo("develop","uiJumper"):init(nil)

    -- uiControl:getInstance():jumpTo("sample","main"):init(nil)
end

return MainScene