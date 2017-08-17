--imports----------------------------------------------------------
local C_uiJumper_roll = require("src.app.ui.controls.develop.c_uiJumper_roll")
local C_uiJumper_rollh = require("src.app.ui.controls.develop.c_uiJumper_rollh")
local C_testUIBtn = require("src.app.ui.controls.uiBtn.c_testUIBtn")

local uiState=require("src.app.base.ui.uiState")
local p_uiJumper = {}

function p_uiJumper:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.roll=C_uiJumper_roll.new();
	referUI_.roll.name="roll"
	du:placeAndAddChildToContainer(referUI_.roll,container_,0.00,0.00,-755.95,44.25,0,1,1,1,1)
	referUI_.roll:setItemInfo("common","item_uiJumper",3,0.15,-45.2)
	table.insert(referUI_.uiList,referUI_.roll)
	du:setLogicParent(referUI_.roll,referUI_)
	referUI_.roll2=C_uiJumper_rollh.new();
	referUI_.roll2.name="roll2"
	du:placeAndAddChildToContainer(referUI_.roll2,container_,0.00,0.00,-756.95,130.55,0,1,1,1,2)
	referUI_.roll2:setItemInfo("common","item_uiJumper",2,80,-4)
	table.insert(referUI_.uiList,referUI_.roll2)
	du:setLogicParent(referUI_.roll2,referUI_)
	referUI_.btn_state_s2_s1=C_testUIBtn.new();
	referUI_.btn_state_s2_s1.name="btn_state_s2_s1"
	du:placeAndAddChildToContainer(referUI_.btn_state_s2_s1,container_,0.00,0.00,-114,287.55,0,1,1,1,3)
	table.insert(referUI_.disBaseList,referUI_.btn_state_s2_s1)
	table.insert(referUI_.uiBtnList,referUI_.btn_state_s2_s1)
	du:setLogicParent(referUI_.btn_state_s2_s1,referUI_)
	referUI_.btn_state_s3_s1=C_testUIBtn.new();
	referUI_.btn_state_s3_s1.name="btn_state_s3_s1"
	du:placeAndAddChildToContainer(referUI_.btn_state_s3_s1,container_,0.00,0.00,-114,247.55,0,1,1,1,4)
	table.insert(referUI_.disBaseList,referUI_.btn_state_s3_s1)
	table.insert(referUI_.uiBtnList,referUI_.btn_state_s3_s1)
	du:setLogicParent(referUI_.btn_state_s3_s1,referUI_)
	referUI_.instance292= cc.Sprite:create("bg_ball.png")
	referUI_.instance292.name="instance292"
	du:placeAndAddChildToContainer(referUI_.instance292,container_,0.50,0.50,-628.95,-23.45,0,1,1,1,5)
	du:setLogicParent(referUI_.instance292,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
	--UI state infos----------------------------------------------------------
    referUI_.uiStates={}
    local _statePlaceArr=nil
    ---------------------------------------------------------------s1
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.roll,-779.00,83.25,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.roll2,-780.00,169.55,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2_s1,-114.00,287.55,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s3_s1,-114.00,247.55,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance292,-191.05,267.55,1.00,1.00,0.00,1.00})
    
    referUI_.s1 = uiState.new(referUI_,_statePlaceArr)
    referUI_.s1.stateName="s1"
    table.insert(referUI_.uiStates,referUI_.s1)
    referUI_:stateAniPreset("s1",true,UC_STATECHANGE_TIME,UC_STATECHANGE_EASETYPE)
    ---------------------------------------------------------------s2
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.roll,-156.05,143.40,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.roll2,-157.05,31.85,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2_s1,-12.00,287.55,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s3_s1,-79.05,247.55,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance292,-87.05,287.55,1.00,0.13,0.00,1.00})
    
    referUI_.s2 = uiState.new(referUI_,_statePlaceArr)
    referUI_.s2.stateName="s2"
    table.insert(referUI_.uiStates,referUI_.s2)
    referUI_:stateAniPreset("s2",true,UC_STATECHANGE_TIME,UC_STATECHANGE_EASETYPE)
    ---------------------------------------------------------------s3
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.roll,-217.05,140.40,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.roll2,-9.00,141.85,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2_s1,-76.00,287.55,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s3_s1,-12.00,247.55,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.instance292,-84.00,247.55,1.00,0.13,0.00,1.00})
    
    referUI_.s3 = uiState.new(referUI_,_statePlaceArr)
    referUI_.s3.stateName="s3"
    table.insert(referUI_.uiStates,referUI_.s3)
    referUI_:stateAniPreset("s3",true,UC_STATECHANGE_TIME,UC_STATECHANGE_EASETYPE)
    

    self:setSpecial(referUI_)
end

function p_uiJumper:setSpecial(referUI_)
	-----special keys----------------------------------------------------------
    referUI_.alignMode='C'
    
end

return p_uiJumper