local uiState=require("src.app.base.ui.uiState")
local p_tip = {}

function p_tip:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.side= cc.Sprite:create("battle_biankuang.png")
	referUI_.side.name="side"
	du:placeAndAddChildToContainer(referUI_.side,container_,0.50,0.50,-6,-34,180,1,1,1,1)
	du:setLogicParent(referUI_.side,referUI_)
	referUI_.side2= cc.Sprite:create("battle_biankuang.png")
	referUI_.side2.name="side2"
	du:placeAndAddChildToContainer(referUI_.side2,container_,0.50,0.50,321,47,180,1,1,1,2)
	du:setLogicParent(referUI_.side2,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_tip:setSpecial(referUI_)
	-----special keys----------------------------------------------------------
    referUI_.alignMode='C'
    
end

return p_tip