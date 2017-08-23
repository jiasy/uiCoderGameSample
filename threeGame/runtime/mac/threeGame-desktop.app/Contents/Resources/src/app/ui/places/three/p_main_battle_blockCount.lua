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
	mcControl:getInstance():addMcObjectToContainer(referUI_.blockShow,container_,0.00,0.00,1,15,{{0,15,},{0,15,},{0,15,},{1,1,1.12,1,1.22,1,1.3,1,1.36,1,1.4,1,1.43,1,1.44,1,1.43,1,1.4,1,1.36,1,1.3,1,1.22,1,1.12,1,1,1,},{1,1,1.12,1,1.22,1,1.3,1,1.36,1,1.4,1,1.43,1,1.44,1,1.43,1,1.4,1,1.36,1,1.3,1,1.22,1,1.12,1,1,1,},{1,15,},{0,15,},{0,15,},{0,15,}},4)
	table.insert(referUI_.uiList,referUI_.blockShow)
	du:setLogicParent(referUI_.blockShow,referUI_)
	referUI_.instance221= cc.Sprite:create("icon_ball_special.png")
	referUI_.instance221.name="instance221"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance221,container_,0.50,0.50,1,15,{{0,15,},{-43.5,1,-46.35,1,-49.2,1,-52.05,1,-54.95,1,-57.8,1,-60.65,1,-63.5,1,-58.2,1,-53.7,1,-50.05,1,-47.15,1,-45.15,1,-43.9,1,-43.5,1,},{0,15,},{0.52,1,0.59,1,0.66,1,0.73,1,0.79,1,0.86,1,0.93,1,1,1,1.13,1,1.24,1,1.34,1,1.41,1,1.46,1,1.49,1,1.5,1,},{0.52,1,0.59,1,0.66,1,0.73,1,0.79,1,0.86,1,0.93,1,1,1,1.13,1,1.24,1,1.34,1,1.41,1,1.46,1,1.49,1,1.5,1,},{0,1,0.14,1,0.29,1,0.43,1,0.57,1,0.71,1,0.86,1,1,1,0.82,1,0.66,1,0.53,1,0.43,1,0.36,1,0.32,1,0.3,1,},{0,15,},{0,15,},{0,15,}},1)
	du:setLogicParent(referUI_.instance221,referUI_)
	referUI_.instance223= cc.Sprite:create("btnUp.png")
	referUI_.instance223.name="instance223"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance223,container_,0.50,0.50,1,15,{{0,4,-0.05,1,0,3,0.05,2,0,5,},{-43.5,1,-43.9,1,-45.15,1,-47.15,1,-50.05,1,-53.7,1,-58.2,1,-63.5,1,-58.15,1,-53.7,1,-50.05,1,-47.15,1,-45.15,1,-43.9,1,-43.5,1,},{0,1,3.54,1,14.56,1,33.07,1,58.89,1,91.77,1,132.15,1,180,1,-132.59,1,-92.27,1,-59.44,1,-33.84,1,-15.54,1,-4.54,1,-1,1,},{1,1,0.99,1,0.97,1,0.94,1,0.9,1,0.84,1,0.77,1,0.69,1,0.77,1,0.84,1,0.9,1,0.94,1,0.97,1,0.99,1,1,1,},{1,1,1.01,1,1.04,1,1.08,1,1.15,1,1.23,1,1.33,1,1.45,1,1.33,1,1.23,1,1.15,1,1.08,1,1.04,1,1.01,1,1,1,},{1,15,},{0,15,},{0,15,},{0,15,}},2)
	du:setLogicParent(referUI_.instance223,referUI_)
	du.ttfConfig.fontSize = 20
	du.ttfConfig.outlineSize = 0 
	referUI_.count=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("0"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.count.name="count"
	referUI_.count:setString("count")
	du:textSet(referUI_.count,255,255,255,nil,27.85)
	mcControl:getInstance():addMcObjectToContainer(referUI_.count,container_,0.50,0.50,1,15,{{0,15,},{-43.5,1,-43.9,1,-45.15,1,-47.15,1,-50.05,1,-53.75,1,-58.25,1,-63.55,1,-58.15,1,-53.7,1,-50.05,1,-47.1,1,-45.1,1,-43.85,1,-43.5,1,},{0,15,},{1,1,1.02,1,1.08,1,1.18,1,1.33,1,1.51,1,1.73,1,2,1,1.73,1,1.51,1,1.33,1,1.18,1,1.08,1,1.02,1,1,1,},{1,1,1.02,1,1.08,1,1.18,1,1.33,1,1.51,1,1.73,1,2,1,1.73,1,1.51,1,1.33,1,1.18,1,1.08,1,1.02,1,1,1,},{1,15,},{0,15,},{0,15,},{0,15,}},3)
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