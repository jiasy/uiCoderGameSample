--imports----------------------------------------------------------
local C_main_three = require("src.app.ui.controls.three.c_main_three")
local C_main_battle = require("src.app.ui.controls.three.c_main_battle")
local C_main_up = require("src.app.ui.controls.three.c_main_up")
local C_level_contorl = require("src.app.ui.controls.debug.c_level_contorl")

local uiState=require("src.app.base.ui.uiState")
local p_main = {}

function p_main:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.three=C_main_three.new();
	referUI_.three.name="three"
	du:placeAndAddChildToContainer(referUI_.three,container_,0.00,0.00,0,0,0,1,1,1,2)
	table.insert(referUI_.uiList,referUI_.three)
	du:setLogicParent(referUI_.three,referUI_)
	referUI_.battle=C_main_battle.new();
	referUI_.battle.name="battle"
	du:placeAndAddChildToContainer(referUI_.battle,container_,0.00,0.00,0,575,0,1,1,1,3)
	table.insert(referUI_.uiList,referUI_.battle)
	du:setLogicParent(referUI_.battle,referUI_)
	referUI_.up=C_main_up.new();
	referUI_.up.name="up"
	du:placeAndAddChildToContainer(referUI_.up,container_,0.00,0.00,0,1136,0,1,1,1,4)
	table.insert(referUI_.uiList,referUI_.up)
	du:setLogicParent(referUI_.up,referUI_)
	referUI_.debug=C_level_contorl.new();
	referUI_.debug.name="debug"
	du:placeAndAddChildToContainer(referUI_.debug,container_,0.00,0.00,0,20,0,1,1,1,5)
	table.insert(referUI_.uiList,referUI_.debug)
	du:setLogicParent(referUI_.debug,referUI_)
	referUI_.bg= cc.Sprite:create("bg_ballarea.png")
	referUI_.bg.name="bg"
	du:placeAndAddChildToContainer(referUI_.bg,container_,0.50,0.00,2.5,628.2,0,1,1,1,1)
	du:setLogicParent(referUI_.bg,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_main:setSpecial(referUI_)
	-----special keys----------------------------------------------------------
    referUI_.alignMode='B'
    
end

return p_main