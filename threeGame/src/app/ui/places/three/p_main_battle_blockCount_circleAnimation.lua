--imports----------------------------------------------------------
local C_pngAnimation = require("src.app.ui.controls.common.c_pngAnimation")

local uiState=require("src.app.base.ui.uiState")
local p_main_battle_blockCount_circleAnimation = {}

function p_main_battle_blockCount_circleAnimation:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.add_fireSqu=C_pngAnimation.new();
	referUI_.add_fireSqu.name="add_fireSqu"
	du:placeAndAddChildToContainer(referUI_.add_fireSqu,container_,0.00,0.00,0,0,0,1,1,1,1)
	table.insert(referUI_.uiList,referUI_.add_fireSqu)
	du:setLogicParent(referUI_.add_fireSqu,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_main_battle_blockCount_circleAnimation:setSpecial(referUI_)
end

return p_main_battle_blockCount_circleAnimation