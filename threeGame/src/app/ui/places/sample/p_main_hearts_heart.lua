--imports----------------------------------------------------------
local C_testUIBtn = require("src.app.ui.controls.uiBtn.c_testUIBtn")

local uiState=require("src.app.base.ui.uiState")
local p_main_hearts_heart = {}

function p_main_hearts_heart:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.btn_state_s2=C_testUIBtn.new();
	referUI_.btn_state_s2.name="btn_state_s2"
	du:placeAndAddChildToContainer(referUI_.btn_state_s2,container_,0.00,0.00,0,-119,0,1,1,0,7)
	table.insert(referUI_.disBaseList,referUI_.btn_state_s2)
	table.insert(referUI_.uiBtnList,referUI_.btn_state_s2)
	du:setLogicParent(referUI_.btn_state_s2,referUI_)
	referUI_.btn_state_s3=C_testUIBtn.new();
	referUI_.btn_state_s3.name="btn_state_s3"
	du:placeAndAddChildToContainer(referUI_.btn_state_s3,container_,0.00,0.00,0,-119,0,1,1,0,8)
	table.insert(referUI_.disBaseList,referUI_.btn_state_s3)
	table.insert(referUI_.uiBtnList,referUI_.btn_state_s3)
	du:setLogicParent(referUI_.btn_state_s3,referUI_)
	referUI_.btn_state_s4=C_testUIBtn.new();
	referUI_.btn_state_s4.name="btn_state_s4"
	du:placeAndAddChildToContainer(referUI_.btn_state_s4,container_,0.00,0.00,0,-119,0,1,1,0,9)
	table.insert(referUI_.disBaseList,referUI_.btn_state_s4)
	table.insert(referUI_.uiBtnList,referUI_.btn_state_s4)
	du:setLogicParent(referUI_.btn_state_s4,referUI_)
	referUI_.btn_state_s1=C_testUIBtn.new();
	referUI_.btn_state_s1.name="btn_state_s1"
	du:placeAndAddChildToContainer(referUI_.btn_state_s1,container_,0.00,0.00,0,-119,0,1,1,0,10)
	table.insert(referUI_.disBaseList,referUI_.btn_state_s1)
	table.insert(referUI_.uiBtnList,referUI_.btn_state_s1)
	du:setLogicParent(referUI_.btn_state_s1,referUI_)
	referUI_.instance81= cc.Sprite:create("redHeart.png")
	referUI_.instance81.name="instance81"
	du:placeAndAddChildToContainer(referUI_.instance81,container_,0.50,0.50,0,0,0,2.07,2.07,1,1)
	du:setLogicParent(referUI_.instance81,referUI_)
	referUI_.instance83= cc.Sprite:create("redHeart.png")
	referUI_.instance83.name="instance83"
	du:placeAndAddChildToContainer(referUI_.instance83,container_,0.50,0.50,0,0,0,2.07,2.07,1,2)
	du:setLogicParent(referUI_.instance83,referUI_)
	du:setBlendToDisplay(referUI_.instance83,"multiply")
	referUI_.instance85= cc.Sprite:create("redHeart.png")
	referUI_.instance85.name="instance85"
	du:placeAndAddChildToContainer(referUI_.instance85,container_,0.50,0.50,0,0,0,2.07,2.07,1,3)
	du:setLogicParent(referUI_.instance85,referUI_)
	du:setBlendToDisplay(referUI_.instance85,"multiply")
	referUI_.instance87= cc.Sprite:create("redHeart.png")
	referUI_.instance87.name="instance87"
	du:placeAndAddChildToContainer(referUI_.instance87,container_,0.50,0.50,0,0,0,2.07,2.07,1,4)
	du:setLogicParent(referUI_.instance87,referUI_)
	du:setBlendToDisplay(referUI_.instance87,"screen")
	referUI_.instance89= cc.Sprite:create("redHeart.png")
	referUI_.instance89.name="instance89"
	du:placeAndAddChildToContainer(referUI_.instance89,container_,0.50,0.50,0,0,0,2.07,2.07,1,5)
	du:setLogicParent(referUI_.instance89,referUI_)
	du:setBlendToDisplay(referUI_.instance89,"screen")
	referUI_.heart_mask_4= cc.Sprite:create("redHeart.png")
	referUI_.heart_mask_4.name="heart_mask_4"
	du:placeAndAddChildToContainer(referUI_.heart_mask_4,container_,0.50,0.50,0,0,0,2.03,2.03,1,6)
	du:setLogicParent(referUI_.heart_mask_4,referUI_)
	local _heart_mask_4Mask={}
	_heart_mask_4Mask.stencil=referUI_.heart_mask_4
	_heart_mask_4Mask.maskNumber=4
	table.insert(_maskInfos,_heart_mask_4Mask)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
	--UI state infos----------------------------------------------------------
    referUI_.uiStates={}
    local _statePlaceArr=nil
    ---------------------------------------------------------------s1
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance81,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance83,-171.95,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance85,171.95,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance87,0.00,144.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance89,0.00,-145.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.heart_mask_4,0.00,0.00,0.98,0.98,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2,-88.00,-119.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s3,0.00,-119.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s4,88.00,-119.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s1,0.00,-119.00,1.00,1.00,0.00,0.00})
    
    referUI_.s1 = uiState.new(referUI_,_statePlaceArr)
    referUI_.s1.stateName="s1"
    table.insert(referUI_.uiStates,referUI_.s1)
    referUI_:stateAniPreset("s1",true,UC_STATECHANGE_TIME,UC_STATECHANGE_EASETYPE)
    ---------------------------------------------------------------s2
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance81,0.00,-10.20,0.80,0.80,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance83,-39.20,-10.00,0.40,0.40,180.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance85,39.20,-10.00,0.40,0.40,180.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance87,0.00,18.80,0.40,0.40,180.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance89,0.00,-34.80,0.40,0.40,180.00,1.00})
    table.insert(_statePlaceArr,{referUI_.heart_mask_4,0.00,-10.00,0.78,0.78,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2,0.00,-119.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s3,0.00,-119.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s4,88.00,-119.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s1,0.00,-119.00,1.00,1.00,0.00,0.00})
    
    referUI_.s2 = uiState.new(referUI_,_statePlaceArr)
    referUI_.s2.stateName="s2"
    table.insert(referUI_.uiStates,referUI_.s2)
    referUI_:stateAniPreset("s2",true,UC_STATECHANGE_TIME,UC_STATECHANGE_EASETYPE)
    ---------------------------------------------------------------s3
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance81,0.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance83,84.65,0.00,0.86,0.86,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance85,-84.65,0.00,0.86,0.86,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance87,0.00,-55.40,0.86,0.86,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance89,0.00,60.40,0.86,0.86,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.heart_mask_4,0.00,0.00,0.98,0.98,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2,0.00,-119.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s3,88.00,-119.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s4,88.00,-119.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s1,0.00,-119.00,1.00,1.00,0.00,0.00})
    
    referUI_.s3 = uiState.new(referUI_,_statePlaceArr)
    referUI_.s3.stateName="s3"
    table.insert(referUI_.uiStates,referUI_.s3)
    referUI_:stateAniPreset("s3",true,UC_STATECHANGE_TIME,UC_STATECHANGE_EASETYPE)
    ---------------------------------------------------------------s4
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.instance81,0.00,0.00,1.01,1.01,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance83,35.45,9.00,1.04,1.04,90.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance85,-35.45,9.00,1.04,1.04,-90.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance87,0.00,39.20,1.04,1.04,180.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance89,0.00,2.80,1.04,1.04,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.heart_mask_4,0.00,0.00,0.98,0.98,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2,0.00,-119.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s3,88.00,-119.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s4,0.00,-119.00,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s1,0.00,-119.00,1.00,1.00,0.00,1.00})
    
    referUI_.s4 = uiState.new(referUI_,_statePlaceArr)
    referUI_.s4.stateName="s4"
    table.insert(referUI_.uiStates,referUI_.s4)
    referUI_:stateAniPreset("s4",true,UC_STATECHANGE_TIME,UC_STATECHANGE_EASETYPE)
    

    self:setSpecial(referUI_)
end

function p_main_hearts_heart:setSpecial(referUI_)
end

return p_main_hearts_heart