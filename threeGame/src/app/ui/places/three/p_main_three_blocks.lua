local uiState=require("src.app.base.ui.uiState")
local p_main_three_blocks = {}

function p_main_three_blocks:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	du.ttfConfig.fontSize = 18
	du.ttfConfig.outlineSize = 0 
	referUI_.debugLog=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("描述文字"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.debugLog.name="debugLog"
	referUI_.debugLog:setString("debugLog")
	du:textSet(referUI_.debugLog,255,255,255,640,86)
	du:placeAndAddChildToContainer(referUI_.debugLog,container_,0.50,1.00,0,-35,0,1,1,1,1)
	referUI_.debugLog.isText=true
	du:setLogicParent(referUI_.debugLog,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_main_three_blocks:setSpecial(referUI_)
end

return p_main_three_blocks