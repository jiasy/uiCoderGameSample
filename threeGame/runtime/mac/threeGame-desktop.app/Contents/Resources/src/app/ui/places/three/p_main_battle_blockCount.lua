--imports----------------------------------------------------------
local C_pngAnimation = require("src.app.ui.controls.common.c_pngAnimation")
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
	referUI_.add_fireSqu=C_pngAnimation.new();
	referUI_.add_fireSqu.name="add_fireSqu"
	mcControl:getInstance():addMcObjectToContainer(referUI_.add_fireSqu,container_,0.00,0.00,1,15,{{0,15,},{0,15,},{0,15,},{1,15,},{1,15,},{1,15,},{0,15,},{0,15,},{0,15,}},2)
	table.insert(referUI_.uiList,referUI_.add_fireSqu)
	du:setLogicParent(referUI_.add_fireSqu,referUI_)
	referUI_.blockShow=C_move_trail_container.new();
	referUI_.blockShow.name="blockShow"
	mcControl:getInstance():addMcObjectToContainer(referUI_.blockShow,container_,0.00,0.00,1,15,{{0,15,},{28,1,30.65,1,32.9,1,34.75,1,36.15,1,37.2,1,37.8,1,38,1,37.75,1,37.2,1,36.1,1,34.75,1,32.9,1,30.6,1,28,1,},{0,15,},{1,1,1.12,1,1.22,1,1.3,1,1.36,1,1.4,1,1.43,1,1.44,1,1.43,1,1.4,1,1.36,1,1.3,1,1.22,1,1.12,1,1,1,},{1,1,1.12,1,1.22,1,1.3,1,1.36,1,1.4,1,1.43,1,1.44,1,1.43,1,1.4,1,1.36,1,1.3,1,1.22,1,1.12,1,1,1,},{1,15,},{0,15,},{0,15,},{0,15,}},3)
	table.insert(referUI_.uiList,referUI_.blockShow)
	du:setLogicParent(referUI_.blockShow,referUI_)
	referUI_.shadow= cc.Sprite:create("three_battle_fazhen_shadow.png")
	referUI_.shadow.name="shadow"
	mcControl:getInstance():addMcObjectToContainer(referUI_.shadow,container_,0.50,0.50,1,15,{{0,15,},{0,15,},{0,15,},{1,1,1.12,1,1.22,1,1.3,1,1.36,1,1.4,1,1.43,1,1.44,1,1.32,1,1.22,1,1.14,1,1.08,1,1.04,1,1.01,1,1,1,},{0.5,1,0.56,1,0.61,1,0.65,1,0.68,1,0.7,1,0.72,2,0.66,1,0.61,1,0.57,1,0.54,1,0.52,1,0.5,2,},{1,15,},{0,15,},{0,15,},{0,15,}},1)
	du:setLogicParent(referUI_.shadow,referUI_)
	referUI_.instance600= cc.Sprite:create("icon_ball_special.png")
	referUI_.instance600.name="instance600"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance600,container_,0.50,0.50,2,15,{{0,14,},{28,4,28.05,2,28,1,27.95,2,28,2,27.95,2,28,1,},{0,14,},{0.62,1,0.72,1,0.82,1,0.91,1,1.01,1,1.1,1,1.2,1,1.36,1,1.49,1,1.6,1,1.69,1,1.75,1,1.79,1,1.8,1,},{0.62,1,0.72,1,0.82,1,0.91,1,1.01,1,1.1,1,1.2,1,1.36,1,1.49,1,1.6,1,1.69,1,1.75,1,1.79,1,1.8,1,},{0,1,0.17,1,0.33,1,0.5,1,0.67,1,0.83,1,1,1,0.82,1,0.66,1,0.53,1,0.43,1,0.36,1,0.32,1,0.3,1,},{0,14,},{0,14,},{0,14,}},4)
	du:setLogicParent(referUI_.instance600,referUI_)
	du.ttfConfig.fontSize = 20
	du.ttfConfig.outlineSize = 2 
	referUI_.count=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("0"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.count.name="count"
	referUI_.count:setString("count")
	referUI_.count:enableOutline(cc.c4b(0,0,0,255)) 
	du:textSet(referUI_.count,255,255,255,nil,27.85)
	mcControl:getInstance():addMcObjectToContainer(referUI_.count,container_,0.50,0.50,1,15,{{22,8,21.95,6,22,1,},{-0.95,1,0.4,1,1.5,1,2.35,1,3.1,1,3.6,1,3.95,1,4.05,1,3.9,1,3.65,1,3.15,1,2.4,1,1.5,1,0.4,1,-0.95,1,},{0,15,},{1,1,1.12,1,1.22,1,1.3,1,1.36,1,1.4,1,1.43,1,1.44,1,1.43,1,1.4,1,1.36,1,1.3,1,1.22,1,1.12,1,1,1,},{1,1,1.12,1,1.22,1,1.3,1,1.36,1,1.4,1,1.43,1,1.44,1,1.43,1,1.4,1,1.36,1,1.3,1,1.22,1,1.12,1,1,1,},{1,15,},{0,15,},{0,15,},{0,15,}},5)
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