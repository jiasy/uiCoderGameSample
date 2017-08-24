local uiState=require("src.app.base.ui.uiState")
local p_pngAnimation = {}

function p_pngAnimation:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.pic= cc.Sprite:create("blade.png")
	referUI_.pic.name="pic"
	du:placeAndAddChildToContainer(referUI_.pic,container_,0.50,0.50,0,0,0,1,1,1,1)
	du:setLogicParent(referUI_.pic,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_pngAnimation:setSpecial(referUI_)
end

return p_pngAnimation