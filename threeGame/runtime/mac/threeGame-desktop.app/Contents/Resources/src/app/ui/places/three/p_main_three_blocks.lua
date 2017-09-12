local uiState=require("src.app.base.ui.uiState")
local p_main_three_blocks = {}

function p_main_three_blocks:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.playCanOpeartion= cc.Sprite:create("greenPic.png")
	referUI_.playCanOpeartion.name="playCanOpeartion"
	du:placeAndAddChildToContainer(referUI_.playCanOpeartion,container_,0.50,0.50,0,569.95,0,6.44,1.36,1,1)
	du:setLogicParent(referUI_.playCanOpeartion,referUI_)
	referUI_.playCanNotOpeartion= cc.Sprite:create("redPic.png")
	referUI_.playCanNotOpeartion.name="playCanNotOpeartion"
	du:placeAndAddChildToContainer(referUI_.playCanNotOpeartion,container_,0.50,0.50,0,569.95,0,6.44,1.36,1,2)
	du:setLogicParent(referUI_.playCanNotOpeartion,referUI_)
	du.ttfConfig.fontSize = 20
	du.ttfConfig.outlineSize = 2 
	referUI_.gameStateTxt=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("gameState"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.gameStateTxt.name="gameStateTxt"
	referUI_.gameStateTxt:setString("gameStateTxt")
	referUI_.gameStateTxt:enableOutline(cc.c4b(0,0,0,255)) 
	du:textSet(referUI_.gameStateTxt,102,255,255,nil,32.65)
	du:placeAndAddChildToContainer(referUI_.gameStateTxt,container_,0.50,0.50,-268,518.25,0,1,1,1,3)
	referUI_.gameStateTxt.isText=true
	du:setLogicParent(referUI_.gameStateTxt,referUI_)
	du.ttfConfig.fontSize = 18
	du.ttfConfig.outlineSize = 0 
	referUI_.debugLog=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("描述文字"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.debugLog.name="debugLog"
	referUI_.debugLog:setString("debugLog")
	du:textSet(referUI_.debugLog,255,255,255,640,86)
	du:placeAndAddChildToContainer(referUI_.debugLog,container_,0.50,1.00,0,-35,0,1,1,1,4)
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