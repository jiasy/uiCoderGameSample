local uiState=require("src.app.base.ui.uiState")
local p_testUIBtn = {}

function p_testUIBtn:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance509= cc.Sprite:create("btnUp.png")
	referUI_.instance509.name="instance509"
	du:placeAndAddChildToContainer(referUI_.instance509,container_,0.50,0.50,0,0,0,1,1,1,1)
	du:setLogicParent(referUI_.instance509,referUI_)
	referUI_.aaa= cc.Sprite:create("btnUp.png")
	referUI_.aaa.name="aaa"
	du:placeAndAddChildToContainer(referUI_.aaa,container_,0.50,0.50,0,0,0,1,1,1,2)
	du:setLogicParent(referUI_.aaa,referUI_)
	du:setBlendToDisplay(referUI_.aaa,"screen")
	referUI_.instance512= cc.Sprite:create("btnUp.png")
	referUI_.instance512.name="instance512"
	du:placeAndAddChildToContainer(referUI_.instance512,container_,0.50,0.50,0,0,0,1,1,1,3)
	du:setLogicParent(referUI_.instance512,referUI_)
	referUI_.pic= cc.Sprite:create("btnUp.png")
	referUI_.pic.name="pic"
	du:placeAndAddChildToContainer(referUI_.pic,container_,0.50,0.50,0,0,0,1,1,1,4)
	du:setLogicParent(referUI_.pic,referUI_)
	du:setBlendToDisplay(referUI_.pic,"lighten")
	referUI_.instance515= cc.Sprite:create("btnUp.png")
	referUI_.instance515.name="instance515"
	du:placeAndAddChildToContainer(referUI_.instance515,container_,0.50,0.50,0,0,0,1,1,1,5)
	du:setLogicParent(referUI_.instance515,referUI_)
	du:setBlendToDisplay(referUI_.instance515,"lighten")
	referUI_.instance517= cc.Sprite:create("btnUp.png")
	referUI_.instance517.name="instance517"
	du:placeAndAddChildToContainer(referUI_.instance517,container_,0.50,0.50,0,0,0,1,1,1,6)
	du:setLogicParent(referUI_.instance517,referUI_)
	du:setBlendToDisplay(referUI_.instance517,"lighten")
	referUI_.instance519= cc.Sprite:create("btnUp.png")
	referUI_.instance519.name="instance519"
	du:placeAndAddChildToContainer(referUI_.instance519,container_,0.50,0.50,0,0,0,1,1,1,7)
	du:setLogicParent(referUI_.instance519,referUI_)
	du:setBlendToDisplay(referUI_.instance519,"lighten")
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
	referUI_.instance522=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("按下"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.instance522.name="instance522"
	du:textSet(referUI_.instance522,255,255,255,nil,32)
	du:placeAndAddChildToContainer(referUI_.instance522,container_,0.50,0.63,0,0,0,1,1,1,9)
	referUI_.instance522.isText=true
	du:setLogicParent(referUI_.instance522,referUI_)
	du.ttfConfig.fontSize = 20
	du.ttfConfig.outlineSize = 0 
	referUI_.instance524=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("正常"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.instance524.name="instance524"
	du:textSet(referUI_.instance524,255,255,255,nil,24)
	du:placeAndAddChildToContainer(referUI_.instance524,container_,0.50,0.50,0,0,0,1,1,1,10)
	referUI_.instance524.isText=true
	du:setLogicParent(referUI_.instance524,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
	--UI state infos----------------------------------------------------------
    referUI_.uiStates={}
    local _statePlaceArr=nil
    ---------------------------------------------------------------btnState1
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance509,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.aaa,0.00,0.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance512,21.05,0.00,1.35,0.50,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.pic,-57.05,0.00,0.20,0.20,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance515,57.05,0.00,0.20,0.20,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance517,0.00,24.00,0.20,0.20,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance519,0.00,-24.00,0.20,0.20,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic_mask_4,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance522,0.00,0.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance524,0.00,0.00,1.00,1.00,0.00,1.00})
    
    referUI_.btnState1 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState1.stateName="btnState1"
    table.insert(referUI_.uiStates,referUI_.btnState1)
    referUI_:stateAniPreset("btnState1",true,0.3,53)
    ---------------------------------------------------------------btnState2
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance509,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.aaa,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance512,55.05,0.00,0.25,0.50,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic,80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance515,-80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance517,0.00,-40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance519,0.00,40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic_mask_4,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance522,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance524,0.00,0.00,1.00,1.00,0.00,0.00})
    
    referUI_.btnState2 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState2.stateName="btnState2"
    table.insert(referUI_.uiStates,referUI_.btnState2)
    referUI_:stateAniPreset("btnState2",true,0.3,53)
    ---------------------------------------------------------------btnState3
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance509,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.aaa,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance512,55.05,0.00,0.25,0.50,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic,80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance515,-80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance517,0.00,-40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance519,0.00,40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic_mask_4,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance522,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance524,0.00,0.00,1.00,1.00,0.00,0.00})
    
    referUI_.btnState3 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState3.stateName="btnState3"
    table.insert(referUI_.uiStates,referUI_.btnState3)
    referUI_:stateAniPreset("btnState3",true,0.3,53)
    

    -----rect infos----------------------------------------------------------
    table.insert(referUI_.rects,cc.rect(-40.00,20.00,80.00,40.00))
    
end

return p_testUIBtn