--imports----------------------------------------------------------
local C_main_three_grids = require("src.app.ui.controls.three.c_main_three_grids")
local C_main_three_downs = require("src.app.ui.controls.three.c_main_three_downs")
local C_main_three_blocks = require("src.app.ui.controls.three.c_main_three_blocks")

local uiState=require("src.app.base.ui.uiState")
local p_main_three = {}

function p_main_three:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.grids=C_main_three_grids.new();
	referUI_.grids.name="grids"
	du:placeAndAddChildToContainer(referUI_.grids,container_,0.00,0.00,0,0,0,1,1,1,1)
	table.insert(referUI_.uiList,referUI_.grids)
	du:setLogicParent(referUI_.grids,referUI_)
	referUI_.downs=C_main_three_downs.new();
	referUI_.downs.name="downs"
	du:placeAndAddChildToContainer(referUI_.downs,container_,0.00,0.00,0.05,-12.95,0,1,1,1,2)
	table.insert(referUI_.uiList,referUI_.downs)
	du:setLogicParent(referUI_.downs,referUI_)
	referUI_.blocks=C_main_three_blocks.new();
	referUI_.blocks.name="blocks"
	du:placeAndAddChildToContainer(referUI_.blocks,container_,0.00,0.00,0,0,0,1,1,1,3)
	table.insert(referUI_.uiList,referUI_.blocks)
	du:setLogicParent(referUI_.blocks,referUI_)
	referUI_.btn_next=ccui.Button:create("btnUp.png", "btnDown.png","btnDown.png")
	referUI_.btn_next.name="btn_next"
	du:setBtnText(referUI_.btn_next,lu:tansWord("next"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	du:placeAndAddChildToContainer(referUI_.btn_next,container_,0.50,0.50,-56,575.65,0,1,1,1,5)
	referUI_.btn_next:addClickEventListener(
		function(sender) 
			if referUI_:isTouchAble()==false then return end
			if referUI_.btn_next:isVisible()==false then return end
			if referUI_:getParentUIByLayerType("roll") then assert(false,"disBtn cann't contains by rollLayer.") end
			referUI_:btnClicked("btn_next")
		end
	)
	du:setLogicParent(referUI_.btn_next,referUI_)
	referUI_.btn_prev=ccui.Button:create("btnUp.png", "btnDown.png","btnDown.png")
	referUI_.btn_prev.name="btn_prev"
	du:setBtnText(referUI_.btn_prev,lu:tansWord("prev"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	du:placeAndAddChildToContainer(referUI_.btn_prev,container_,0.50,0.50,-280,575.65,0,1,1,1,6)
	referUI_.btn_prev:addClickEventListener(
		function(sender) 
			if referUI_:isTouchAble()==false then return end
			if referUI_.btn_prev:isVisible()==false then return end
			if referUI_:getParentUIByLayerType("roll") then assert(false,"disBtn cann't contains by rollLayer.") end
			referUI_:btnClicked("btn_prev")
		end
	)
	du:setLogicParent(referUI_.btn_prev,referUI_)
	referUI_.btn_reset=ccui.Button:create("btnUp.png", "btnDown.png","btnDown.png")
	referUI_.btn_reset.name="btn_reset"
	du:setBtnText(referUI_.btn_reset,lu:tansWord("reset"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	du:placeAndAddChildToContainer(referUI_.btn_reset,container_,0.50,0.50,-168,575.65,0,1,1,1,7)
	referUI_.btn_reset:addClickEventListener(
		function(sender) 
			if referUI_:isTouchAble()==false then return end
			if referUI_.btn_reset:isVisible()==false then return end
			if referUI_:getParentUIByLayerType("roll") then assert(false,"disBtn cann't contains by rollLayer.") end
			referUI_:btnClicked("btn_reset")
		end
	)
	du:setLogicParent(referUI_.btn_reset,referUI_)
	referUI_.btn_aiNormal=ccui.Button:create("btnUp.png", "btnDown.png","btnDown.png")
	referUI_.btn_aiNormal.name="btn_aiNormal"
	du:setBtnText(referUI_.btn_aiNormal,lu:tansWord("ai"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	du:placeAndAddChildToContainer(referUI_.btn_aiNormal,container_,0.50,0.50,56,575.65,0,1,1,1,8)
	referUI_.btn_aiNormal:addClickEventListener(
		function(sender) 
			if referUI_:isTouchAble()==false then return end
			if referUI_.btn_aiNormal:isVisible()==false then return end
			if referUI_:getParentUIByLayerType("roll") then assert(false,"disBtn cann't contains by rollLayer.") end
			referUI_:btnClicked("btn_aiNormal")
		end
	)
	du:setLogicParent(referUI_.btn_aiNormal,referUI_)
	referUI_.btn_aiQuick=ccui.Button:create("btnUp.png", "btnDown.png","btnDown.png")
	referUI_.btn_aiQuick.name="btn_aiQuick"
	du:setBtnText(referUI_.btn_aiQuick,lu:tansWord("ai"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	du:placeAndAddChildToContainer(referUI_.btn_aiQuick,container_,0.50,0.50,168,575.65,0,1,1,1,9)
	referUI_.btn_aiQuick:addClickEventListener(
		function(sender) 
			if referUI_:isTouchAble()==false then return end
			if referUI_.btn_aiQuick:isVisible()==false then return end
			if referUI_:getParentUIByLayerType("roll") then assert(false,"disBtn cann't contains by rollLayer.") end
			referUI_:btnClicked("btn_aiQuick")
		end
	)
	du:setLogicParent(referUI_.btn_aiQuick,referUI_)
	referUI_.btn_aiFly=ccui.Button:create("btnUp.png", "btnDown.png","btnDown.png")
	referUI_.btn_aiFly.name="btn_aiFly"
	du:setBtnText(referUI_.btn_aiFly,lu:tansWord("ai"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	du:placeAndAddChildToContainer(referUI_.btn_aiFly,container_,0.50,0.50,280,575.65,0,1,1,1,10)
	referUI_.btn_aiFly:addClickEventListener(
		function(sender) 
			if referUI_:isTouchAble()==false then return end
			if referUI_.btn_aiFly:isVisible()==false then return end
			if referUI_:getParentUIByLayerType("roll") then assert(false,"disBtn cann't contains by rollLayer.") end
			referUI_:btnClicked("btn_aiFly")
		end
	)
	du:setLogicParent(referUI_.btn_aiFly,referUI_)
	du.ttfConfig.fontSize = 18
	du.ttfConfig.outlineSize = 0 
	referUI_.desText=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("描述文字"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.desText.name="desText"
	referUI_.desText:setString("desText")
	du:textSet(referUI_.desText,255,255,255,640,86)
	du:placeAndAddChildToContainer(referUI_.desText,container_,0.50,1.00,0,555.65,0,1,1,1,4)
	referUI_.desText.isText=true
	du:setLogicParent(referUI_.desText,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_main_three:setSpecial(referUI_)
end

return p_main_three