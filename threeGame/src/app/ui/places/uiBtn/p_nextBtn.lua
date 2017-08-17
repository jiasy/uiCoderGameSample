local uiState=require("src.app.base.ui.uiState")
local p_nextBtn = {}

function p_nextBtn:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance196= cc.Sprite:create("btnUp.png")
	referUI_.instance196.name="instance196"
	du:placeAndAddChildToContainer(referUI_.instance196,container_,0.50,0.50,0,0,0,1,1,1,1)
	du:setLogicParent(referUI_.instance196,referUI_)
	referUI_.aaa= cc.Sprite:create("btnUp.png")
	referUI_.aaa.name="aaa"
	du:placeAndAddChildToContainer(referUI_.aaa,container_,0.50,0.50,0,0,0,1,1,1,2)
	du:setLogicParent(referUI_.aaa,referUI_)
	du:setBlendToDisplay(referUI_.aaa,"screen")
	referUI_.pic= cc.Sprite:create("btnUp.png")
	referUI_.pic.name="pic"
	du:placeAndAddChildToContainer(referUI_.pic,container_,0.50,0.50,0,0,0,1,1,1,3)
	du:setLogicParent(referUI_.pic,referUI_)
	du:setBlendToDisplay(referUI_.pic,"lighten")
	referUI_.instance200= cc.Sprite:create("btnUp.png")
	referUI_.instance200.name="instance200"
	du:placeAndAddChildToContainer(referUI_.instance200,container_,0.50,0.50,0,0,0,1,1,1,4)
	du:setLogicParent(referUI_.instance200,referUI_)
	du:setBlendToDisplay(referUI_.instance200,"lighten")
	referUI_.instance202= cc.Sprite:create("btnUp.png")
	referUI_.instance202.name="instance202"
	du:placeAndAddChildToContainer(referUI_.instance202,container_,0.50,0.50,0,0,0,1,1,1,5)
	du:setLogicParent(referUI_.instance202,referUI_)
	du:setBlendToDisplay(referUI_.instance202,"lighten")
	referUI_.instance204= cc.Sprite:create("btnUp.png")
	referUI_.instance204.name="instance204"
	du:placeAndAddChildToContainer(referUI_.instance204,container_,0.50,0.50,0,0,0,1,1,1,6)
	du:setLogicParent(referUI_.instance204,referUI_)
	du:setBlendToDisplay(referUI_.instance204,"lighten")
	referUI_.instance206= cc.Sprite:create("bg_ball.png")
	referUI_.instance206.name="instance206"
	du:placeAndAddChildToContainer(referUI_.instance206,container_,0.50,0.50,-2.5,-1,45,0.13,0.12,1,7)
	du:setLogicParent(referUI_.instance206,referUI_)
	du:setBlendToDisplay(referUI_.instance206,"lighten")
	referUI_.instance208= cc.Sprite:create("bg_ball.png")
	referUI_.instance208.name="instance208"
	du:placeAndAddChildToContainer(referUI_.instance208,container_,0.50,0.50,-8.15,-6.65,45,0.13,0.12,1,8)
	du:setLogicParent(referUI_.instance208,referUI_)
	du:setBlendToDisplay(referUI_.instance208,"lighten")
	referUI_.instance210= cc.Sprite:create("bg_ball.png")
	referUI_.instance210.name="instance210"
	du:placeAndAddChildToContainer(referUI_.instance210,container_,0.50,0.50,-8.15,4.65,45,0.13,0.12,1,9)
	du:setLogicParent(referUI_.instance210,referUI_)
	du:setBlendToDisplay(referUI_.instance210,"lighten")
	referUI_.instance212= cc.Sprite:create("bg_ball.png")
	referUI_.instance212.name="instance212"
	du:placeAndAddChildToContainer(referUI_.instance212,container_,0.50,0.50,14.55,-1,45,0.13,0.12,1,10)
	du:setLogicParent(referUI_.instance212,referUI_)
	du:setBlendToDisplay(referUI_.instance212,"lighten")
	referUI_.instance214= cc.Sprite:create("bg_ball.png")
	referUI_.instance214.name="instance214"
	du:placeAndAddChildToContainer(referUI_.instance214,container_,0.50,0.50,8.9,-6.65,45,0.13,0.12,1,11)
	du:setLogicParent(referUI_.instance214,referUI_)
	du:setBlendToDisplay(referUI_.instance214,"lighten")
	referUI_.instance216= cc.Sprite:create("bg_ball.png")
	referUI_.instance216.name="instance216"
	du:placeAndAddChildToContainer(referUI_.instance216,container_,0.50,0.50,8.9,4.65,45,0.13,0.12,1,12)
	du:setLogicParent(referUI_.instance216,referUI_)
	du:setBlendToDisplay(referUI_.instance216,"lighten")
	referUI_.pic_mask_10= cc.Sprite:create("btnUp.png")
	referUI_.pic_mask_10.name="pic_mask_10"
	du:placeAndAddChildToContainer(referUI_.pic_mask_10,container_,0.50,0.50,0,0,0,1,1,1,13)
	du:setLogicParent(referUI_.pic_mask_10,referUI_)
	local _pic_mask_10Mask={}
	_pic_mask_10Mask.stencil=referUI_.pic_mask_10
	_pic_mask_10Mask.maskNumber=10
	table.insert(_maskInfos,_pic_mask_10Mask)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
	--UI state infos----------------------------------------------------------
    referUI_.uiStates={}
    local _statePlaceArr=nil
    ---------------------------------------------------------------btnState1
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance196,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.aaa,0.00,0.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.pic,-57.05,0.00,0.20,0.20,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance200,57.05,0.00,0.20,0.20,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance202,0.00,24.00,0.20,0.20,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance204,0.00,-24.00,0.20,0.20,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance206,-3.60,-31.35,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance208,-9.25,-37.00,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance210,-9.25,-25.70,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance212,13.45,-31.35,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance214,7.80,-37.00,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance216,7.80,-25.70,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic_mask_10,0.00,0.00,1.00,1.00,0.00,1.00})
    
    referUI_.btnState1 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState1.stateName="btnState1"
    table.insert(referUI_.uiStates,referUI_.btnState1)
    referUI_:stateAniPreset("btnState1",true,0.3,53)
    ---------------------------------------------------------------btnState2
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance196,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.aaa,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic,80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance200,-80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance202,0.00,-40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance204,0.00,40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance206,-3.60,-1.35,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance208,-9.25,-7.00,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance210,-9.25,4.30,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance212,13.45,-1.35,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance214,7.80,-7.00,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance216,7.80,4.30,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic_mask_10,0.00,0.00,1.00,1.00,0.00,1.00})
    
    referUI_.btnState2 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState2.stateName="btnState2"
    table.insert(referUI_.uiStates,referUI_.btnState2)
    referUI_:stateAniPreset("btnState2",true,0.3,53)
    ---------------------------------------------------------------btnState3
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance196,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.aaa,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic,80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance200,-80.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance202,0.00,-40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance204,0.00,40.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance206,-3.60,-1.35,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance208,-9.25,-7.00,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance210,-9.25,4.30,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance212,13.45,-1.35,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance214,7.80,-7.00,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance216,7.80,4.30,0.13,0.12,45.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic_mask_10,0.00,0.00,1.00,1.00,0.00,1.00})
    
    referUI_.btnState3 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState3.stateName="btnState3"
    table.insert(referUI_.uiStates,referUI_.btnState3)
    referUI_:stateAniPreset("btnState3",true,0.3,53)
    

    -----rect infos----------------------------------------------------------
    table.insert(referUI_.rects,cc.rect(-40.00,20.00,80.00,40.00))
    
end

return p_nextBtn