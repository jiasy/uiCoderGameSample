local uiState=require("src.app.base.ui.uiState")
local p_main_yuzhou_pics = {}

function p_main_yuzhou_pics:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance6= cc.Sprite:create("battle_yuzhou.png")
	referUI_.instance6.name="instance6"
	du:placeAndAddChildToContainer(referUI_.instance6,container_,0.50,0.50,240,-240,0,1,1,1,1)
	du:setLogicParent(referUI_.instance6,referUI_)
	referUI_.instance8= cc.Sprite:create("battle_yuzhou.png")
	referUI_.instance8.name="instance8"
	du:placeAndAddChildToContainer(referUI_.instance8,container_,0.50,0.50,-240,-240,0,1,1,1,2)
	du:setLogicParent(referUI_.instance8,referUI_)
	referUI_.instance10= cc.Sprite:create("battle_yuzhou.png")
	referUI_.instance10.name="instance10"
	du:placeAndAddChildToContainer(referUI_.instance10,container_,0.50,0.50,240,240,0,1,1,1,3)
	du:setLogicParent(referUI_.instance10,referUI_)
	referUI_.instance12= cc.Sprite:create("battle_yuzhou.png")
	referUI_.instance12.name="instance12"
	du:placeAndAddChildToContainer(referUI_.instance12,container_,0.50,0.50,-240,240,0,1,1,1,4)
	du:setLogicParent(referUI_.instance12,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_main_yuzhou_pics:setSpecial(referUI_)
end

return p_main_yuzhou_pics