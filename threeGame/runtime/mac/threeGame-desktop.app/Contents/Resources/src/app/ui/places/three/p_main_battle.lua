local uiState=require("src.app.base.ui.uiState")
local p_main_battle = {}

function p_main_battle:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance3= cc.Sprite:create("map11.png")
	referUI_.instance3.name="instance3"
	du:placeAndAddChildToContainer(referUI_.instance3,container_,0.50,0.00,0,-98,0,0.56,0.56,1,1)
	du:setLogicParent(referUI_.instance3,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_main_battle:setSpecial(referUI_)
end

return p_main_battle