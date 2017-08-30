--imports----------------------------------------------------------
local C_four_cricle = require("src.app.ui.controls.ani.c_four_cricle")
local C_zhiye_shine_6 = require("src.app.ui.controls.ani.c_zhiye_shine_6")
local C_main_up_side = require("src.app.ui.controls.three.c_main_up_side")

local p_main_up = {}

function p_main_up:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=1
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance298=C_four_cricle.new();
	referUI_.instance298.name="instance298"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance298,container_,0.00,0.00,1,1,{{0,1,},{-75,1,},{0,1,},{0.75,1,},{0.75,1,},{1,1,},{0,1,},{0,1,},{0,1,}},12)
	table.insert(referUI_.uiList,referUI_.instance298)
	du:setLogicParent(referUI_.instance298,referUI_)
	referUI_.instance307=C_zhiye_shine_6.new();
	referUI_.instance307.name="instance307"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance307,container_,0.00,0.00,1,1,{{0,1,},{-252.5,1,},{180,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},13)
	table.insert(referUI_.uiList,referUI_.instance307)
	du:setLogicParent(referUI_.instance307,referUI_)
	referUI_.instance314=C_zhiye_shine_6.new();
	referUI_.instance314.name="instance314"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance314,container_,0.00,0.00,1,1,{{0,1,},{107.5,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},15)
	table.insert(referUI_.uiList,referUI_.instance314)
	du:setLogicParent(referUI_.instance314,referUI_)
	referUI_.sideLeft=C_main_up_side.new();
	referUI_.sideLeft.name="sideLeft"
	mcControl:getInstance():addMcObjectToContainer(referUI_.sideLeft,container_,0.00,0.00,1,1,{{-320,1,},{0,1,},{0,1,},{0.8,1,},{0.8,1,},{1,1,},{0,1,},{0,1,},{0,1,}},16)
	table.insert(referUI_.uiList,referUI_.sideLeft)
	du:setLogicParent(referUI_.sideLeft,referUI_)
	referUI_.sideRight=C_main_up_side.new();
	referUI_.sideRight.name="sideRight"
	mcControl:getInstance():addMcObjectToContainer(referUI_.sideRight,container_,0.00,0.00,1,1,{{320,1,},{0,1,},{0,1,},{0.8,1,},{0.8,1,},{1,1,},{0,1,},{0,1,},{0,1,}},17)
	table.insert(referUI_.uiList,referUI_.sideRight)
	du:setLogicParent(referUI_.sideRight,referUI_)
	referUI_.instance273= cc.Sprite:create("battle_yuyi_1.png")
	referUI_.instance273.name="instance273"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance273,container_,0.50,0.50,1,1,{{-677.55,1,},{-676.15,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},1)
	du:setLogicParent(referUI_.instance273,referUI_)
	referUI_.instance275= cc.Sprite:create("battle_yuyi_2.png")
	referUI_.instance275.name="instance275"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance275,container_,0.50,0.50,1,1,{{-704.7,1,},{-613.1,1,},{-68.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},2)
	du:setLogicParent(referUI_.instance275,referUI_)
	referUI_.instance277= cc.Sprite:create("battle_hua_1.png")
	referUI_.instance277.name="instance277"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance277,container_,0.50,0.50,1,1,{{-725.4,1,},{-777.1,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},3)
	du:setLogicParent(referUI_.instance277,referUI_)
	referUI_.instance279= cc.Sprite:create("battle_ye_1.png")
	referUI_.instance279.name="instance279"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance279,container_,0.50,0.50,1,1,{{-522,1,},{-818.35,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},4)
	du:setLogicParent(referUI_.instance279,referUI_)
	referUI_.instance281= cc.Sprite:create("battle_maisui_right.png")
	referUI_.instance281.name="instance281"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance281,container_,0.11,0.40,1,1,{{-542.75,1,},{-749.1,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},5)
	du:setLogicParent(referUI_.instance281,referUI_)
	referUI_.instance283= cc.Sprite:create("battle_maisui_left.png")
	referUI_.instance283.name="instance283"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance283,container_,0.94,0.35,1,1,{{-579.6,1,},{-737.25,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},6)
	du:setLogicParent(referUI_.instance283,referUI_)
	referUI_.instance285= cc.Sprite:create("battle_gutongse.png")
	referUI_.instance285.name="instance285"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance285,container_,0.50,0.50,1,1,{{-555.15,1,},{-548.35,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},7)
	du:setLogicParent(referUI_.instance285,referUI_)
	referUI_.instance287= cc.Sprite:create("battle_genjing_2.png")
	referUI_.instance287.name="instance287"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance287,container_,0.84,0.80,1,1,{{-758.7,1,},{-953.45,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},8)
	du:setLogicParent(referUI_.instance287,referUI_)
	referUI_.instance289= cc.Sprite:create("battle_genjing_3.png")
	referUI_.instance289.name="instance289"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance289,container_,0.50,0.50,1,1,{{-740.2,1,},{-857.45,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},9)
	du:setLogicParent(referUI_.instance289,referUI_)
	referUI_.instance291= cc.Sprite:create("battle_genjing_1.png")
	referUI_.instance291.name="instance291"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance291,container_,0.50,0.50,1,1,{{-497.75,1,},{-703.75,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},10)
	du:setLogicParent(referUI_.instance291,referUI_)
	referUI_.instance296= cc.Sprite:create("battle_genjing_7.png")
	referUI_.instance296.name="instance296"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance296,container_,0.50,0.50,1,1,{{-600.7,1,},{-896.45,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},11)
	du:setLogicParent(referUI_.instance296,referUI_)
	referUI_.up_circle_mask_= cc.Sprite:create("battle_upCircle_mask.png")
	referUI_.up_circle_mask_.name="up_circle_mask_"
	mcControl:getInstance():addMcObjectToContainer(referUI_.up_circle_mask_,container_,0.50,1.00,1,1,{{0.5,1,},{107.5,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},14)
	du:setLogicParent(referUI_.up_circle_mask_,referUI_)
	local _up_circle_mask_Mask={}
	_up_circle_mask_Mask.stencil=referUI_.up_circle_mask_
	_up_circle_mask_Mask.maskNumber=99999
	table.insert(_maskInfos,_up_circle_mask_Mask)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_main_up:setSpecial(referUI_)
	-----special keys----------------------------------------------------------
    referUI_.alignMode='T'
    
end

return p_main_up