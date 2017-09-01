local uiState=require("src.app.base.ui.uiState")
local p_testUIBtn = {}

function p_testUIBtn:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance479= cc.Sprite:create("btnUp.png")
	referUI_.instance479.name="instance479"
	du:placeAndAddChildToContainer(referUI_.instance479,container_,0.50,0.50,0,0,0,1,1,1,1)
	du:setLogicParent(referUI_.instance479,referUI_)
	referUI_.aaa= cc.Sprite:create("btnUp.png")
	referUI_.aaa.name="aaa"
	du:placeAndAddChildToContainer(referUI_.aaa,container_,0.50,0.50,0,0,0,1,1,1,2)
	du:setLogicParent(referUI_.aaa,referUI_)
	du:setBlendToDisplay(referUI_.aaa,"screen")
	referUI_.instance482= cc.Sprite:create("btnUp.png")
	referUI_.instance482.name="instance482"
	du:placeAndAddChildToContainer(referUI_.instance482,container_,0.50,0.50,0,0,0,1,1,1,3)
	du:setLogicParent(referUI_.instance482,referUI_)
	referUI_.pic= cc.Sprite:create("btnUp.png")
	referUI_.pic.name="pic"
	du:placeAndAddChildToContainer(referUI_.pic,container_,0.50,0.50,0,0,0,1,1,1,4)
	du:setLogicParent(referUI_.pic,referUI_)
	du:setBlendToDisplay(referUI_.pic,"lighten")
	referUI_.instance485= cc.Sprite:create("btnUp.png")
	referUI_.instance485.name="instance485"
	du:placeAndAddChildToContainer(referUI_.instance485,container_,0.50,0.50,0,0,0,1,1,1,5)
	du:setLogicParent(referUI_.instance485,referUI_)
	du:setBlendToDisplay(referUI_.instance485,"lighten")
	referUI_.instance487= cc.Sprite:create("btnUp.png")
	referUI_.instance487.name="instance487"
	du:placeAndAddChildToContainer(referUI_.instance487,container_,0.50,0.50,0,0,0,1,1,1,6)
	du:setLogicParent(referUI_.instance487,referUI_)
	du:setBlendToDisplay(referUI_.instance487,"lighten")
	referUI_.instance489= cc.Sprite:create("btnUp.png")
	referUI_.instance489.name="instance489"
	du:placeAndAddChildToContainer(referUI_.instance489,container_,0.50,0.50,0,0,0,1,1,1,7)
	du:setLogicParent(referUI_.instance489,referUI_)
	du:setBlendToDisplay(referUI_.instance489,"lighten")
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
	referUI_.instance492=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("按下"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.instance492.name="instance492"
	du:textSet(referUI_.instance492,255,255,255,nil,24)
	du:placeAndAddChildToContainer(referUI_.instance492,container_,0.50,0.50,0,0,0,1,1,1,9)
	referUI_.instance492.isText=true
	du:setLogicParent(referUI_.instance492,referUI_)
	du.ttfConfig.fontSize = 20
	du.ttfConfig.outlineSize = 0 
	referUI_.instance494=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("正常"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.instance494.name="instance494"
	du:textSet(referUI_.instance494,255,255,255,nil,24)
	du:placeAndAddChildToContainer(referUI_.instance494,container_,0.50,0.50,0,0,0,1,1,1,10)
	referUI_.instance494.isText=true
	du:setLogicParent(referUI_.instance494,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
	--UI state infos----------------------------------------------------------
    referUI_.uiStates={}
    local _statePlaceArr=nil
    ---------------------------------------------------------------btnState1
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance479,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.aaa,0.00,0.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance482,21.05,0.00,1.35,0.50,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.pic,-57.05,0.00,0.20,0.20,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance485,57.05,0.00,0.20,0.20,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance487,0.00,24.00,0.20,0.20,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance489,0.00,-24.00,0.20,0.20,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic_mask_4,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance492,0.00,0.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance494,0.00,0.00,1.00,1.00,0.00,1.00})
    
    referUI_.btnState1 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState1.stateName="btnState1"
    table.insert(referUI_.uiStates,referUI_.btnState1)
    referUI_:stateAniPreset("btnState1",true,0.3,53)
    ---------------------------------------------------------------btnState2
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance479,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.aaa,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance482,55.05,0.00,0.25,0.50,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic,80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance485,-80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance487,0.00,-40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance489,0.00,40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic_mask_4,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance492,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance494,0.00,0.00,1.00,1.00,0.00,0.00})
    
    referUI_.btnState2 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState2.stateName="btnState2"
    table.insert(referUI_.uiStates,referUI_.btnState2)
    referUI_:stateAniPreset("btnState2",true,0.3,53)
    ---------------------------------------------------------------btnState3
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance479,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.aaa,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance482,55.05,0.00,0.25,0.50,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic,80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance485,-80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance487,0.00,-40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance489,0.00,40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic_mask_4,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance492,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance494,0.00,0.00,1.00,1.00,0.00,0.00})
    
    referUI_.btnState3 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState3.stateName="btnState3"
    table.insert(referUI_.uiStates,referUI_.btnState3)
    referUI_:stateAniPreset("btnState3",true,0.3,53)
    

    -----rect infos----------------------------------------------------------
    table.insert(referUI_.rects,cc.rect(-40.00,20.00,80.00,40.00))
    
end

return p_testUIBtn