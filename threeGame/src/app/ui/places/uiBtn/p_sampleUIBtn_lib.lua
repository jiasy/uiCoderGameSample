local uiState=require("src.app.base.ui.uiState")
local p_sampleUIBtn_lib = {}

function p_sampleUIBtn_lib:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance244= cc.Sprite:create("circle.png")
	referUI_.instance244.name="instance244"
	du:placeAndAddChildToContainer(referUI_.instance244,container_,0.50,0.50,0,0,0,1,1,1,1)
	du:setLogicParent(referUI_.instance244,referUI_)
	referUI_.instance246= cc.Sprite:create("circle.png")
	referUI_.instance246.name="instance246"
	du:placeAndAddChildToContainer(referUI_.instance246,container_,0.50,0.50,0,0,0,1,1,1,2)
	du:setLogicParent(referUI_.instance246,referUI_)
	du:setBlendToDisplay(referUI_.instance246,"screen")
	referUI_.instance248= cc.Sprite:create("circle.png")
	referUI_.instance248.name="instance248"
	du:placeAndAddChildToContainer(referUI_.instance248,container_,0.50,0.50,0,0,0,1,1,1,3)
	du:setLogicParent(referUI_.instance248,referUI_)
	du:setBlendToDisplay(referUI_.instance248,"screen")
	referUI_.instance250= cc.Sprite:create("circle.png")
	referUI_.instance250.name="instance250"
	du:placeAndAddChildToContainer(referUI_.instance250,container_,0.50,0.50,0,0,0,1,1,1,4)
	du:setLogicParent(referUI_.instance250,referUI_)
	du:setBlendToDisplay(referUI_.instance250,"screen")
	referUI_.instance252= cc.Sprite:create("circle.png")
	referUI_.instance252.name="instance252"
	du:placeAndAddChildToContainer(referUI_.instance252,container_,0.50,0.50,0,0,0,1,1,1,5)
	du:setLogicParent(referUI_.instance252,referUI_)
	du:setBlendToDisplay(referUI_.instance252,"screen")
	referUI_.instance254= cc.Sprite:create("circle.png")
	referUI_.instance254.name="instance254"
	du:placeAndAddChildToContainer(referUI_.instance254,container_,0.50,0.50,0,0,0,1,1,1,6)
	du:setLogicParent(referUI_.instance254,referUI_)
	du:setBlendToDisplay(referUI_.instance254,"screen")
	referUI_.pic_mask_4= cc.Sprite:create("circle.png")
	referUI_.pic_mask_4.name="pic_mask_4"
	du:placeAndAddChildToContainer(referUI_.pic_mask_4,container_,0.50,0.50,0,0,0,1,1,1,7)
	du:setLogicParent(referUI_.pic_mask_4,referUI_)
	local _pic_mask_4Mask={}
	_pic_mask_4Mask.stencil=referUI_.pic_mask_4
	_pic_mask_4Mask.maskNumber=4
	table.insert(_maskInfos,_pic_mask_4Mask)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
	--UI state infos----------------------------------------------------------
    referUI_.uiStates={}
    local _statePlaceArr=nil
    ---------------------------------------------------------------btnState1
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance244,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance246,0.00,0.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance248,174.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance250,0.00,181.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance252,-174.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance254,0.00,-181.05,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic_mask_4,0.00,0.00,1.00,1.00,0.00,1.00})
    
    referUI_.btnState1 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState1.stateName="btnState1"
    table.insert(referUI_.uiStates,referUI_.btnState1)
    referUI_:stateAniPreset("btnState1",true,0.3,53)
    ---------------------------------------------------------------btnState2
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance244,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance246,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance248,-161.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance250,0.00,-161.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance252,161.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance254,0.00,161.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic_mask_4,0.00,0.00,1.00,1.00,0.00,1.00})
    
    referUI_.btnState2 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState2.stateName="btnState2"
    table.insert(referUI_.uiStates,referUI_.btnState2)
    referUI_:stateAniPreset("btnState2",true,0.3,53)
    ---------------------------------------------------------------btnState3
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance244,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance246,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance248,-161.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance250,0.00,-161.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance252,161.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance254,0.00,161.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.pic_mask_4,0.00,0.00,1.00,1.00,0.00,1.00})
    
    referUI_.btnState3 = uiState.new(referUI_,_statePlaceArr)
    referUI_.btnState3.stateName="btnState3"
    table.insert(referUI_.uiStates,referUI_.btnState3)
    referUI_:stateAniPreset("btnState3",true,0.3,53)
    

    -----rect infos----------------------------------------------------------
    table.insert(referUI_.rects,cc.rect(-62.95,64.00,50.00,50.00))
    table.insert(referUI_.rects,cc.rect(-35.95,85.00,50.00,50.00))
    table.insert(referUI_.rects,cc.rect(14.05,76.00,50.00,50.00))
    table.insert(referUI_.rects,cc.rect(35.05,51.00,50.00,50.00))
    table.insert(referUI_.rects,cc.rect(41.05,14.00,50.00,50.00))
    table.insert(referUI_.rects,cc.rect(30.50,-10.00,50.00,50.00))
    table.insert(referUI_.rects,cc.rect(0.00,-30.50,50.00,50.00))
    table.insert(referUI_.rects,cc.rect(-35.95,-36.00,50.00,50.00))
    table.insert(referUI_.rects,cc.rect(-62.95,-18.00,50.00,50.00))
    table.insert(referUI_.rects,cc.rect(-80.50,6.00,50.00,50.00))
    table.insert(referUI_.rects,cc.rect(-80.50,40.00,50.00,50.00))
    table.insert(referUI_.rects,cc.rect(-39.00,64.00,89.00,108.00))
    
end

return p_sampleUIBtn_lib