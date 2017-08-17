local uiState=require("src.app.base.ui.uiState")
local p_testUIBtn = {}

function p_testUIBtn:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance273= cc.Sprite:create("btnUp.png")
	referUI_.instance273.name="instance273"
	du:placeAndAddChildToContainer(referUI_.instance273,container_,0.50,0.50,0,0,0,1,1,1,1)
	du:setLogicParent(referUI_.instance273,referUI_)
	referUI_.aaa= cc.Sprite:create("btnUp.png")
	referUI_.aaa.name="aaa"
	du:placeAndAddChildToContainer(referUI_.aaa,container_,0.50,0.50,0,0,0,1,1,1,2)
	du:setLogicParent(referUI_.aaa,referUI_)
	du:setBlendToDisplay(referUI_.aaa,"screen")
	referUI_.instance276= cc.Sprite:create("btnUp.png")
	referUI_.instance276.name="instance276"
	du:placeAndAddChildToContainer(referUI_.instance276,container_,0.50,0.50,0,0,0,1,1,1,3)
	du:setLogicParent(referUI_.instance276,referUI_)
	referUI_.pic= cc.Sprite:create("btnUp.png")
	referUI_.pic.name="pic"
	du:placeAndAddChildToContainer(referUI_.pic,container_,0.50,0.50,0,0,0,1,1,1,4)
	du:setLogicParent(referUI_.pic,referUI_)
	du:setBlendToDisplay(referUI_.pic,"lighten")
	referUI_.instance279= cc.Sprite:create("btnUp.png")
	referUI_.instance279.name="instance279"
	du:placeAndAddChildToContainer(referUI_.instance279,container_,0.50,0.50,0,0,0,1,1,1,5)
	du:setLogicParent(referUI_.instance279,referUI_)
	du:setBlendToDisplay(referUI_.instance279,"lighten")
	referUI_.instance281= cc.Sprite:create("btnUp.png")
	referUI_.instance281.name="instance281"
	du:placeAndAddChildToContainer(referUI_.instance281,container_,0.50,0.50,0,0,0,1,1,1,6)
	du:setLogicParent(referUI_.instance281,referUI_)
	du:setBlendToDisplay(referUI_.instance281,"lighten")
	referUI_.instance283= cc.Sprite:create("btnUp.png")
	referUI_.instance283.name="instance283"
	du:placeAndAddChildToContainer(referUI_.instance283,container_,0.50,0.50,0,0,0,1,1,1,7)
	du:setLogicParent(referUI_.instance283,referUI_)
	du:setBlendToDisplay(referUI_.instance283,"lighten")
	referUI_.pic_mask_4= cc.Sprite:create("btnUp.png")
	referUI_.pic_mask_4.name="pic_mask_4"
	du:placeAndAddChildToContainer(referUI_.pic_mask_4,container_,0.50,0.50,0,0,0,1,1,1,8)
	du:setLogicParent(referUI_.pic_mask_4,referUI_)
	local _pic_mask_4Mask={}
	_pic_mask_4Mask.stencil=referUI_.pic_mask_4
	_pic_mask_4Mask.maskNumber=4
	table.insert(_maskInfos,_pic_mask_4Mask)
	du.ttfConfig.fontSize = 20
	du.ttfConfig.outlineSize = 0 
	referUI_.instance286=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("按下"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.instance286.name="instance286"
	du:textSet(referUI_.instance286,255,255,255,nil,24)
	du:placeAndAddChildToContainer(referUI_.instance286,container_,0.50,0.50,0,0,0,1,1,1,9)
	referUI_.instance286.isText=true
	du:setLogicParent(referUI_.instance286,referUI_)
	du.ttfConfig.fontSize = 20
	du.ttfConfig.outlineSize = 0 
	referUI_.instance288=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("正常"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.instance288.name="instance288"
	du:textSet(referUI_.instance288,255,255,255,nil,24)
	du:placeAndAddChildToContainer(referUI_.instance288,container_,0.50,0.50,0,0,0,1,1,1,10)
	referUI_.instance288.isText=true
	du:setLogicParent(referUI_.instance288,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
	--UI state infos----------------------------------------------------------
    referUI_.uiStates={}
    local _statePlaceArr=nil
    ---------------------------------------------------------------btnState1
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance273,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.aaa,0.00,0.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance276,21.05,0.00,1.35,0.50,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.pic,-57.05,0.00,0.20,0.20,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance279,57.05,0.00,0.20,0.20,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance281,0.00,24.00,0.20,0.20,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance283,0.00,-24.00,0.20,0.20,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic_mask_4,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance286,0.00,0.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance288,0.00,0.00,1.00,1.00,0.00,1.00})
    
    referUI_.btnState1 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState1.stateName="btnState1"
    table.insert(referUI_.uiStates,referUI_.btnState1)
    referUI_:stateAniPreset("btnState1",true,0.3,53)
    ---------------------------------------------------------------btnState2
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance273,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.aaa,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance276,55.05,0.00,0.25,0.50,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic,80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance279,-80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance281,0.00,-40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance283,0.00,40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic_mask_4,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance286,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance288,0.00,0.00,1.00,1.00,0.00,0.00})
    
    referUI_.btnState2 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState2.stateName="btnState2"
    table.insert(referUI_.uiStates,referUI_.btnState2)
    referUI_:stateAniPreset("btnState2",true,0.3,53)
    ---------------------------------------------------------------btnState3
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance273,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.aaa,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance276,55.05,0.00,0.25,0.50,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic,80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance279,-80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance281,0.00,-40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance283,0.00,40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic_mask_4,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance286,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance288,0.00,0.00,1.00,1.00,0.00,0.00})
    
    referUI_.btnState3 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState3.stateName="btnState3"
    table.insert(referUI_.uiStates,referUI_.btnState3)
    referUI_:stateAniPreset("btnState3",true,0.3,53)
    

    -----rect infos----------------------------------------------------------
    table.insert(referUI_.rects,cc.rect(-40.00,20.00,80.00,40.00))
    
end

return p_testUIBtn