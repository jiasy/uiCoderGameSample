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
	du:placeAndAddChildToContainer(referUI_.grids,container_,0.00,0.00,0,126,0,1,1,1,2)
	table.insert(referUI_.uiList,referUI_.grids)
	du:setLogicParent(referUI_.grids,referUI_)
	referUI_.downs=C_main_three_downs.new();
	referUI_.downs.name="downs"
	du:placeAndAddChildToContainer(referUI_.downs,container_,0.00,0.00,0.05,113.05,0,1,1,1,3)
	table.insert(referUI_.uiList,referUI_.downs)
	du:setLogicParent(referUI_.downs,referUI_)
	referUI_.blocks=C_main_three_blocks.new();
	referUI_.blocks.name="blocks"
	du:placeAndAddChildToContainer(referUI_.blocks,container_,0.00,0.00,0,126,0,1,1,1,4)
	table.insert(referUI_.uiList,referUI_.blocks)
	du:setLogicParent(referUI_.blocks,referUI_)
	referUI_.bg= cc.Sprite:create("bg_ballarea.png")
	referUI_.bg.name="bg"
	du:placeAndAddChildToContainer(referUI_.bg,container_,0.50,0.00,0,100,0,1,1,1,1)
	du:setLogicParent(referUI_.bg,referUI_)
	du.ttfConfig.fontSize = 18
	du.ttfConfig.outlineSize = 0 
	referUI_.desText=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("描述文字"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.desText.name="desText"
	referUI_.desText:setString("desText")
	du:textSet(referUI_.desText,255,255,255,640,86)
	du:placeAndAddChildToContainer(referUI_.desText,container_,0.50,1.00,0,676,0,1,1,1,5)
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