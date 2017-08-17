--imports----------------------------------------------------------
local C_main_hearts_heart = require("src.app.ui.controls.sample.c_main_hearts_heart")

local uiState=require("src.app.base.ui.uiState")
local p_main_hearts = {}

function p_main_hearts:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance80=C_main_hearts_heart.new();
	referUI_.instance80.name="instance80"
	du:placeAndAddChildToContainer(referUI_.instance80,container_,0.00,0.00,0,122,0,1,1,1,1)
	table.insert(referUI_.uiList,referUI_.instance80)
	du:setLogicParent(referUI_.instance80,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_main_hearts:setSpecial(referUI_)
end

return p_main_hearts