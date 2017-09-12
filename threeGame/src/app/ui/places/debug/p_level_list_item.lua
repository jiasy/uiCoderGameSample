--imports----------------------------------------------------------
local C_testUIBtn = require("src.app.ui.controls.uiBtn.c_testUIBtn")

local uiState=require("src.app.base.ui.uiState")
local p_level_list_item = {}

function p_level_list_item:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.testBtn=C_testUIBtn.new();
	referUI_.testBtn.name="testBtn"
	du:placeAndAddChildToContainer(referUI_.testBtn,container_,0.00,0.00,179,-24,130,0.72,0.72,1,2)
	table.insert(referUI_.disBaseList,referUI_.testBtn)
	table.insert(referUI_.uiBtnList,referUI_.testBtn)
	du:setLogicParent(referUI_.testBtn,referUI_)
	referUI_.instance507= cc.Sprite:create("bluePic.png")
	referUI_.instance507.name="instance507"
	du:placeAndAddChildToContainer(referUI_.instance507,container_,0.00,1.00,0,0,0,2,0.5,1,1)
	du:setLogicParent(referUI_.instance507,referUI_)
	du.ttfConfig.fontSize = 12
	du.ttfConfig.outlineSize = 0 
	referUI_.desTxt=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("ABC"), cc.TEXT_ALIGNMENT_LEFT)
	referUI_.desTxt.name="desTxt"
	referUI_.desTxt:setString("desTxt")
	du:textSet(referUI_.desTxt,0,0,0,173,42)
	du:placeAndAddChildToContainer(referUI_.desTxt,container_,0.00,1.00,3.75,-4.5,0,1,1,1,3)
	referUI_.desTxt.isText=true
	du:setLogicParent(referUI_.desTxt,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    -----rect infos----------------------------------------------------------
    referUI_.rects["RectGreen"]=cc.rect(0.00,0.00,200.00,50.05)
    
    self:setSpecial(referUI_)
end

function p_level_list_item:setSpecial(referUI_)
end

return p_level_list_item