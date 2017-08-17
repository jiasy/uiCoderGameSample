--imports----------------------------------------------------------
local C_main_battle = require("src.app.ui.controls.three.c_main_battle")
local C_main_three = require("src.app.ui.controls.three.c_main_three")

local uiState=require("src.app.base.ui.uiState")
local p_main = {}

function p_main:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.battle=C_main_battle.new();
	referUI_.battle.name="battle"
	du:placeAndAddChildToContainer(referUI_.battle,container_,0.00,0.00,0,-480,0,1,1,1,1)
	table.insert(referUI_.uiList,referUI_.battle)
	du:setLogicParent(referUI_.battle,referUI_)
	referUI_.three=C_main_three.new();
	referUI_.three.name="three"
	du:placeAndAddChildToContainer(referUI_.three,container_,0.00,0.00,0,-480,0,1,1,1,2)
	table.insert(referUI_.uiList,referUI_.three)
	du:setLogicParent(referUI_.three,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

	-----special keys----------------------------------------------------------
    referUI_.alignMode='C'
    
end


return p_main