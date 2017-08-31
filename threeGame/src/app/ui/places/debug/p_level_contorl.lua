--imports----------------------------------------------------------
local C_testUIBtn = require("src.app.ui.controls.uiBtn.c_testUIBtn")

local uiState=require("src.app.base.ui.uiState")
local p_level_contorl = {}

function p_level_contorl:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.btn_state_s2=C_testUIBtn.new();
	referUI_.btn_state_s2.name="btn_state_s2"
	du:placeAndAddChildToContainer(referUI_.btn_state_s2,container_,0.00,0.00,0,0,0,1,1,1,7)
	table.insert(referUI_.disBaseList,referUI_.btn_state_s2)
	table.insert(referUI_.uiBtnList,referUI_.btn_state_s2)
	du:setLogicParent(referUI_.btn_state_s2,referUI_)
	referUI_.btn_state_s1=C_testUIBtn.new();
	referUI_.btn_state_s1.name="btn_state_s1"
	du:placeAndAddChildToContainer(referUI_.btn_state_s1,container_,0.00,0.00,277.45,0,0,1,1,1,8)
	table.insert(referUI_.disBaseList,referUI_.btn_state_s1)
	table.insert(referUI_.uiBtnList,referUI_.btn_state_s1)
	du:setLogicParent(referUI_.btn_state_s1,referUI_)
	referUI_.btn_next=ccui.Button:create("btnUp.png", "btnDown.png","btnDown.png")
	referUI_.btn_next.name="btn_next"
	du:setBtnText(referUI_.btn_next,lu:tansWord("next"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	du:placeAndAddChildToContainer(referUI_.btn_next,container_,0.50,0.50,-56,0,0,1,1,1,1)
	referUI_.btn_next:addClickEventListener(
		function(sender) 
			if referUI_:isTouchAble()==false then return end
			if referUI_.btn_next:isVisible()==false then return end
			if referUI_:getParentUIByLayerType("roll") then assert(false,"disBtn cann't contains by rollLayer.") end
			referUI_:btnClicked("btn_next")
		end
	)
	du:setLogicParent(referUI_.btn_next,referUI_)
	referUI_.btn_prev=ccui.Button:create("btnUp.png", "btnDown.png","btnDown.png")
	referUI_.btn_prev.name="btn_prev"
	du:setBtnText(referUI_.btn_prev,lu:tansWord("prev"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	du:placeAndAddChildToContainer(referUI_.btn_prev,container_,0.50,0.50,-280,0,0,1,1,1,2)
	referUI_.btn_prev:addClickEventListener(
		function(sender) 
			if referUI_:isTouchAble()==false then return end
			if referUI_.btn_prev:isVisible()==false then return end
			if referUI_:getParentUIByLayerType("roll") then assert(false,"disBtn cann't contains by rollLayer.") end
			referUI_:btnClicked("btn_prev")
		end
	)
	du:setLogicParent(referUI_.btn_prev,referUI_)
	referUI_.btn_reset=ccui.Button:create("btnUp.png", "btnDown.png","btnDown.png")
	referUI_.btn_reset.name="btn_reset"
	du:setBtnText(referUI_.btn_reset,lu:tansWord("reset"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	du:placeAndAddChildToContainer(referUI_.btn_reset,container_,0.50,0.50,-168,0,0,1,1,1,3)
	referUI_.btn_reset:addClickEventListener(
		function(sender) 
			if referUI_:isTouchAble()==false then return end
			if referUI_.btn_reset:isVisible()==false then return end
			if referUI_:getParentUIByLayerType("roll") then assert(false,"disBtn cann't contains by rollLayer.") end
			referUI_:btnClicked("btn_reset")
		end
	)
	du:setLogicParent(referUI_.btn_reset,referUI_)
	referUI_.btn_aiNormal=ccui.Button:create("btnUp.png", "btnDown.png","btnDown.png")
	referUI_.btn_aiNormal.name="btn_aiNormal"
	du:setBtnText(referUI_.btn_aiNormal,lu:tansWord("ai"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	du:placeAndAddChildToContainer(referUI_.btn_aiNormal,container_,0.50,0.50,56,0,0,1,1,1,4)
	referUI_.btn_aiNormal:addClickEventListener(
		function(sender) 
			if referUI_:isTouchAble()==false then return end
			if referUI_.btn_aiNormal:isVisible()==false then return end
			if referUI_:getParentUIByLayerType("roll") then assert(false,"disBtn cann't contains by rollLayer.") end
			referUI_:btnClicked("btn_aiNormal")
		end
	)
	du:setLogicParent(referUI_.btn_aiNormal,referUI_)
	referUI_.btn_aiQuick=ccui.Button:create("btnUp.png", "btnDown.png","btnDown.png")
	referUI_.btn_aiQuick.name="btn_aiQuick"
	du:setBtnText(referUI_.btn_aiQuick,lu:tansWord("ai"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	du:placeAndAddChildToContainer(referUI_.btn_aiQuick,container_,0.50,0.50,168,0,0,1,1,1,5)
	referUI_.btn_aiQuick:addClickEventListener(
		function(sender) 
			if referUI_:isTouchAble()==false then return end
			if referUI_.btn_aiQuick:isVisible()==false then return end
			if referUI_:getParentUIByLayerType("roll") then assert(false,"disBtn cann't contains by rollLayer.") end
			referUI_:btnClicked("btn_aiQuick")
		end
	)
	du:setLogicParent(referUI_.btn_aiQuick,referUI_)
	referUI_.btn_aiFly=ccui.Button:create("btnUp.png", "btnDown.png","btnDown.png")
	referUI_.btn_aiFly.name="btn_aiFly"
	du:setBtnText(referUI_.btn_aiFly,lu:tansWord("ai"),du.ttfConfig.fontFilePath,20,"center",cc.c3b(255, 255, 255))
	du:placeAndAddChildToContainer(referUI_.btn_aiFly,container_,0.50,0.50,280,0,0,1,1,1,6)
	referUI_.btn_aiFly:addClickEventListener(
		function(sender) 
			if referUI_:isTouchAble()==false then return end
			if referUI_.btn_aiFly:isVisible()==false then return end
			if referUI_:getParentUIByLayerType("roll") then assert(false,"disBtn cann't contains by rollLayer.") end
			referUI_:btnClicked("btn_aiFly")
		end
	)
	du:setLogicParent(referUI_.btn_aiFly,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
	--UI state infos----------------------------------------------------------
    referUI_.uiStates={}
    local _statePlaceArr=nil
    ---------------------------------------------------------------s1
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.btn_next,380.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_prev,380.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_reset,380.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_aiNormal,380.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_aiQuick,380.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_aiFly,380.00,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2,277.45,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s1,277.45,-45.00,1.00,1.00,0.00,1.00})
    
    referUI_.s1 = uiState.new(referUI_,_statePlaceArr)
    referUI_.s1.stateName="s1"
    table.insert(referUI_.uiStates,referUI_.s1)
    referUI_:stateAniPreset("s1",true,UC_STATECHANGE_TIME,UC_STATECHANGE_EASETYPE)
    ---------------------------------------------------------------s2
    _statePlaceArr={}
    table.insert(_statePlaceArr,{referUI_.btn_next,-264.40,597.90,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_prev,-291.00,624.90,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_reset,-222.90,568.90,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_aiNormal,292.90,624.90,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_aiQuick,264.40,597.90,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_aiFly,222.90,574.90,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s2,364.80,0.00,1.00,1.00,0.00,1.00})
    table.insert(_statePlaceArr,{referUI_.btn_state_s1,277.45,0.00,1.00,1.00,0.00,1.00})
    
    referUI_.s2 = uiState.new(referUI_,_statePlaceArr)
    referUI_.s2.stateName="s2"
    table.insert(referUI_.uiStates,referUI_.s2)
    referUI_:stateAniPreset("s2",true,UC_STATECHANGE_TIME,UC_STATECHANGE_EASETYPE)
    

    self:setSpecial(referUI_)
end

function p_level_contorl:setSpecial(referUI_)
end

return p_level_contorl