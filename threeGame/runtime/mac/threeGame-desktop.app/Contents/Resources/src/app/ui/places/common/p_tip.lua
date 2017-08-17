local uiState=require("src.app.base.ui.uiState")
local p_tip = {}

function p_tip:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.btn_close=ccui.Button:create("common_tip_btn_close_normal.png", "common_tip_btn_close_press.png","common_tip_btn_close_press.png")
	referUI_.btn_close.name="btn_close"
	du:placeAndAddChildToContainer(referUI_.btn_close,container_,0.50,0.50,163,72,0,1,1,1,2)
	referUI_.btn_close:addClickEventListener(
		function(sender) 
			if referUI_:isTouchAble()==false then return end
			if referUI_.btn_close:isVisible()==false then return end
			if referUI_:getParentUIByLayerType("roll") then assert(false,"disBtn cann't contains by rollLayer.") end
			referUI_:btnClicked("btn_close")
			uc:doUIOperationByInfo(uc:specialBtnAnalyse("btn_close"))
		end
	)
	du:setLogicParent(referUI_.btn_close,referUI_)
	referUI_.instance8645=cc.Scale9Sprite:create("common_tip_bg_back.png", cc.rect(0,0,100.00,100.00), cc.rect(25.00,25.00,50.00,50.00))
	referUI_.instance8645.name="instance8645"
	du:placeAndAddChildToContainer(referUI_.instance8645,container_,0.00,1.00,-200,100,0,1,1,1,1)
	referUI_.instance8645:setContentSize(cc.size(400.00, 200.00))
	du:setLogicParent(referUI_.instance8645,referUI_)
	referUI_.instance8645.isSp9=true
	du:setSp9Info(referUI_.instance8645,"common_tip_bg_back.png")
	du.ttfConfig.fontSize = 20
	du.ttfConfig.outlineSize = 0 
	referUI_.content=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("des"), cc.TEXT_ALIGNMENT_LEFT)
	referUI_.content.name="content"
	referUI_.content:setString("content")
	du:textSet(referUI_.content,0,0,0,327.65,97)
	du:placeAndAddChildToContainer(referUI_.content,container_,0.50,0.50,0,0,0,1,1,1,3)
	referUI_.content.isText=true
	du:setLogicParent(referUI_.content,referUI_)
	
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