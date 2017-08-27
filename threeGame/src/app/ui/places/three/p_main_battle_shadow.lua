local uiState=require("src.app.base.ui.uiState")
local p_main_battle_shadow = {}

function p_main_battle_shadow:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.bg= cc.Sprite:create("bluePic.png")
	referUI_.bg.name="bg"
	du:placeAndAddChildToContainer(referUI_.bg,container_,0.50,0.00,0,0,0,6.4,2,1,1)
	du:setLogicParent(referUI_.bg,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_main_battle_shadow:setSpecial(referUI_)
end

return p_main_battle_shadow