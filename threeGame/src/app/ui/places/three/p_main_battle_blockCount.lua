--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_main_battle_blockCount = {}

function p_main_battle_blockCount:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=15
	local t=referUI_
	--Frame names and frame actions-----------------------------------------
	referUI_.frameNames[1]="s_"
	
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.blockShow=C_move_trail_container.new();
	referUI_.blockShow.name="blockShow"
	mcControl:getInstance():addMcObjectToContainer(referUI_.blockShow,container_,0.00,0.00,1,15,{{0,15,},{38,1,40.65,1,42.9,1,44.75,1,46.15,1,47.2,1,47.8,1,48,1,47.8,1,47.15,1,46.1,1,44.7,1,42.85,1,40.65,1,38,1,},{0,15,},{1,1,1.12,1,1.22,1,1.3,1,1.36,1,1.4,1,1.43,1,1.44,1,1.43,1,1.4,1,1.36,1,1.3,1,1.22,1,1.12,1,1,1,},{1,1,1.12,1,1.22,1,1.3,1,1.36,1,1.4,1,1.43,1,1.44,1,1.43,1,1.4,1,1.36,1,1.3,1,1.22,1,1.12,1,1,1,},{1,15,},{0,15,},{0,15,},{0,15,}},2)
	table.insert(referUI_.uiList,referUI_.blockShow)
	du:setLogicParent(referUI_.blockShow,referUI_)
	referUI_.instance1036= cc.Sprite:create("icon_ball_special.png")
	referUI_.instance1036.name="instance1036"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance1036,container_,0.50,0.50,2,15,{{0,14,},{38,7,38.05,1,38,1,38.05,1,38,1,38.05,1,38,2,},{0,14,},{0.62,1,0.72,1,0.82,1,0.91,1,1.01,1,1.1,1,1.2,1,1.36,1,1.49,1,1.6,1,1.69,1,1.75,1,1.79,1,1.8,1,},{0.62,1,0.72,1,0.82,1,0.91,1,1.01,1,1.1,1,1.2,1,1.36,1,1.49,1,1.6,1,1.69,1,1.75,1,1.79,1,1.8,1,},{0,1,0.17,1,0.33,1,0.5,1,0.67,1,0.83,1,1,1,0.82,1,0.66,1,0.53,1,0.43,1,0.36,1,0.32,1,0.3,1,},{0,14,},{0,14,},{0,14,}},1)
	du:setLogicParent(referUI_.instance1036,referUI_)
	du.ttfConfig.fontSize = 20
	du.ttfConfig.outlineSize = 2 
	referUI_.count=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("0"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.count.name="count"
	referUI_.count:setString("count")
	referUI_.count:enableOutline(cc.c4b(0,0,0,255)) 
	du:textSet(referUI_.count,255,255,255,nil,27.85)
	mcControl:getInstance():addMcObjectToContainer(referUI_.count,container_,0.50,0.50,1,15,{{22,8,21.95,6,22,1,},{9.05,1,10.4,1,11.5,1,12.4,1,13.15,1,13.6,1,13.95,1,14.05,1,13.95,1,13.65,1,13.15,1,12.4,1,11.5,1,10.4,1,9.05,1,},{0,15,},{1,1,1.12,1,1.22,1,1.3,1,1.36,1,1.4,1,1.43,1,1.44,1,1.43,1,1.4,1,1.36,1,1.3,1,1.22,1,1.12,1,1,1,},{1,1,1.12,1,1.22,1,1.3,1,1.36,1,1.4,1,1.43,1,1.44,1,1.43,1,1.4,1,1.36,1,1.3,1,1.22,1,1.12,1,1,1,},{1,15,},{0,15,},{0,15,},{0,15,}},3)
	referUI_.count.isText=true
	du:setLogicParent(referUI_.count,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_main_battle_blockCount:setSpecial(referUI_)
end

return p_main_battle_blockCount