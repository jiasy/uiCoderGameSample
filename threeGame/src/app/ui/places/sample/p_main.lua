--imports----------------------------------------------------------
local C_main_grids = require("src.app.ui.controls.sample.c_main_grids")
local C_main_hearts = require("src.app.ui.controls.sample.c_main_hearts")

local uiState=require("src.app.base.ui.uiState")
local p_main = {}

function p_main:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance6=C_main_grids.new();
	referUI_.instance6.name="instance6"
	du:placeAndAddChildToContainer(referUI_.instance6,container_,0.00,0.00,0,-264.8,0,1,1,1,1)
	table.insert(referUI_.uiList,referUI_.instance6)
	du:setLogicParent(referUI_.instance6,referUI_)
	referUI_.instance79=C_main_hearts.new();
	referUI_.instance79.name="instance79"
	du:placeAndAddChildToContainer(referUI_.instance79,container_,0.00,0.00,0,-122,0,1,1,1,2)
	table.insert(referUI_.uiList,referUI_.instance79)
	du:setLogicParent(referUI_.instance79,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_main:setSpecial(referUI_)
	-----special keys----------------------------------------------------------
    referUI_.alignMode='C'
    
end

return p_main