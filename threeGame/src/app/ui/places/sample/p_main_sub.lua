--imports----------------------------------------------------------
local C_sampleUIBtn_lib = require("src.app.ui.controls.uiBtn.c_sampleUIBtn_lib")

local uiState=require("src.app.base.ui.uiState")
local p_main_sub = {}

function p_main_sub:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.btn_state_s3_s1=C_sampleUIBtn_lib.new();
	referUI_.btn_state_s3_s1.name="btn_state_s3_s1"
	du:placeAndAddChildToContainer(referUI_.btn_state_s3_s1,container_,0.00,0.00,113.65,460.3,0,1,1,1,1)
	table.insert(referUI_.disBaseList,referUI_.btn_state_s3_s1)
	table.insert(referUI_.uiBtnList,referUI_.btn_state_s3_s1)
	du:setLogicParent(referUI_.btn_state_s3_s1,referUI_)
	referUI_.btn_state_s2_s1=C_sampleUIBtn_lib.new();
	referUI_.btn_state_s2_s1.name="btn_state_s2_s1"
	du:placeAndAddChildToContainer(referUI_.btn_state_s2_s1,container_,0.00,0.00,-124.2,460.3,0,1,1,1,2)
	table.insert(referUI_.disBaseList,referUI_.btn_state_s2_s1)
	table.insert(referUI_.uiBtnList,referUI_.btn_state_s2_s1)
	du:setLogicParent(referUI_.btn_state_s2_s1,referUI_)
	referUI_.instance285= cc.Sprite:create("btnUp.png")
	referUI_.instance285.name="instance285"
	du:placeAndAddChildToContainer(referUI_.instance285,container_,0.50,0.50,0,439.8,0,1,1,1,4)
	du:setLogicParent(referUI_.instance285,referUI_)
	referUI_.instance281=cc.Scale9Sprite:create("circle.png", cc.rect(0,0,161.00,161.00), cc.rect(78.10,78.00,4.80,5.00))
	referUI_.instance281.name="instance281"
	du:placeAndAddChildToContainer(referUI_.instance281,container_,0.00,1.00,-80.5,409.8,0,1,1,1,3)
	referUI_.instance281:setContentSize(cc.size(398.90, 391.00))
	du:setLogicParent(referUI_.instance281,referUI_)
	referUI_.instance281.isSp9=true
	du:setSp9Info(referUI_.instance281,"circle.png")
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
	--UI state infos----------------------------------------------------------
    referUI_.uiStates={}
    local _statePlaceArr=nil
    ---------------------------------------------------------------s1
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.btn_state_s3_s1,113.70,0.50,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2_s1,-124.25,0.50,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance281,-83.95,85.50,1.00,1.00,0.00,0.00})
    table.insert(_statePlaceArr,{referUI_.instance285,0.00,0.55,1.00,1.00,0.00,1.00})
    
    referUI_.s1 = uiState.new(referUI_,_statePlaceArr)
    referUI_.s1.stateName="s1"
    table.insert(referUI_.uiStates,referUI_.s1)
    referUI_:stateAniPreset("s1",true,0.3,53)
    ---------------------------------------------------------------s2
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.btn_state_s3_s1,-100.35,0.50,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2_s1,-265.20,0.50,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance281,54.05,170.95,1.00,2.16,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance285,-180.80,74.55,1.00,1.00,0.00,1.00})
    
    referUI_.s2 = uiState.new(referUI_,_statePlaceArr)
    referUI_.s2.stateName="s2"
    table.insert(referUI_.uiStates,referUI_.s2)
    referUI_:stateAniPreset("s2",true,0.3,53)
    ---------------------------------------------------------------s3
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.btn_state_s3_s1,251.65,0.50,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2_s1,86.80,0.50,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance281,-409.90,186.90,2.48,2.43,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance285,171.20,74.55,1.00,1.00,0.00,1.00})
    
    referUI_.s3 = uiState.new(referUI_,_statePlaceArr)
    referUI_.s3.stateName="s3"
    table.insert(referUI_.uiStates,referUI_.s3)
    referUI_:stateAniPreset("s3",true,0.3,53)
    

end

return p_main_sub