--imports----------------------------------------------------------
local C_four_cricle = require("src.app.ui.controls.ani.c_four_cricle")
local C_up_shine = require("src.app.ui.controls.ani.c_up_shine")
local C_zhiye_shine_6 = require("src.app.ui.controls.ani.c_zhiye_shine_6")
local C_main_up_side = require("src.app.ui.controls.three.c_main_up_side")

local uiState=require("src.app.base.ui.uiState")
local p_main_up = {}

function p_main_up:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.type11Target=C_four_cricle.new();
	referUI_.type11Target.name="type11Target"
	du:placeAndAddChildToContainer(referUI_.type11Target,container_,0.00,0.00,0,-75,0,0.75,0.75,1,10)
	table.insert(referUI_.uiList,referUI_.type11Target)
	du:setLogicParent(referUI_.type11Target,referUI_)
	referUI_.instance339=C_up_shine.new();
	referUI_.instance339.name="instance339"
	du:placeAndAddChildToContainer(referUI_.instance339,container_,0.00,0.00,0,-80,0,1,1,1,11)
	table.insert(referUI_.uiList,referUI_.instance339)
	du:setLogicParent(referUI_.instance339,referUI_)
	referUI_.instance345=C_up_shine.new();
	referUI_.instance345.name="instance345"
	du:placeAndAddChildToContainer(referUI_.instance345,container_,0.00,0.00,0,-74.95,0,0.62,0.62,1,12)
	table.insert(referUI_.uiList,referUI_.instance345)
	du:setLogicParent(referUI_.instance345,referUI_)
	referUI_.instance351=C_zhiye_shine_6.new();
	referUI_.instance351.name="instance351"
	du:placeAndAddChildToContainer(referUI_.instance351,container_,0.00,0.00,0,-252.5,180,1,1,1,13)
	table.insert(referUI_.uiList,referUI_.instance351)
	du:setLogicParent(referUI_.instance351,referUI_)
	referUI_.instance358=C_zhiye_shine_6.new();
	referUI_.instance358.name="instance358"
	du:placeAndAddChildToContainer(referUI_.instance358,container_,0.00,0.00,0,107.5,0,1,1,1,15)
	table.insert(referUI_.uiList,referUI_.instance358)
	du:setLogicParent(referUI_.instance358,referUI_)
	referUI_.sideLeft=C_main_up_side.new();
	referUI_.sideLeft.name="sideLeft"
	du:placeAndAddChildToContainer(referUI_.sideLeft,container_,0.00,0.00,-320,0,0,0.8,0.8,1,16)
	table.insert(referUI_.uiList,referUI_.sideLeft)
	du:setLogicParent(referUI_.sideLeft,referUI_)
	referUI_.sideRight=C_main_up_side.new();
	referUI_.sideRight.name="sideRight"
	du:placeAndAddChildToContainer(referUI_.sideRight,container_,0.00,0.00,320,0,0,0.8,0.8,1,17)
	table.insert(referUI_.uiList,referUI_.sideRight)
	du:setLogicParent(referUI_.sideRight,referUI_)
	referUI_.instance310= cc.Sprite:create("battle_yuyi_1.png")
	referUI_.instance310.name="instance310"
	du:placeAndAddChildToContainer(referUI_.instance310,container_,0.50,0.50,-625.5,-670.1,0,1,1,1,1)
	du:setLogicParent(referUI_.instance310,referUI_)
	referUI_.instance312= cc.Sprite:create("battle_maisui_right.png")
	referUI_.instance312.name="instance312"
	du:placeAndAddChildToContainer(referUI_.instance312,container_,0.11,0.40,-542.75,-749.1,0,1,1,1,2)
	du:setLogicParent(referUI_.instance312,referUI_)
	referUI_.instance314= cc.Sprite:create("battle_maisui_left.png")
	referUI_.instance314.name="instance314"
	du:placeAndAddChildToContainer(referUI_.instance314,container_,0.94,0.35,-579.6,-737.25,0,1,1,1,3)
	du:setLogicParent(referUI_.instance314,referUI_)
	referUI_.instance319= cc.Sprite:create("battle_genjing_7.png")
	referUI_.instance319.name="instance319"
	du:placeAndAddChildToContainer(referUI_.instance319,container_,0.50,0.50,-667,-834.3,0,1,1,1,4)
	du:setLogicParent(referUI_.instance319,referUI_)
	referUI_.instance321= cc.Sprite:create("battle_hua_1.png")
	referUI_.instance321.name="instance321"
	du:placeAndAddChildToContainer(referUI_.instance321,container_,0.50,0.50,-552.5,-665.1,0,1,1,1,5)
	du:setLogicParent(referUI_.instance321,referUI_)
	referUI_.instance323= cc.Sprite:create("battle_ye_1.png")
	referUI_.instance323.name="instance323"
	du:placeAndAddChildToContainer(referUI_.instance323,container_,0.52,0.88,-675.9,-606.65,22.58,1,1,1,6)
	du:setLogicParent(referUI_.instance323,referUI_)
	referUI_.instance325= cc.Sprite:create("battle_genjing_3.png")
	referUI_.instance325.name="instance325"
	du:placeAndAddChildToContainer(referUI_.instance325,container_,0.33,0.17,-678.25,-600.45,-108.21,1,1,1,7)
	du:setLogicParent(referUI_.instance325,referUI_)
	referUI_.instance327= cc.Sprite:create("battle_genjing_1.png")
	referUI_.instance327.name="instance327"
	du:placeAndAddChildToContainer(referUI_.instance327,container_,0.79,0.84,-664.9,-593.55,-71.18,1,1,1,8)
	du:setLogicParent(referUI_.instance327,referUI_)
	referUI_.instance329= cc.Sprite:create("battle_genjing_2.png")
	referUI_.instance329.name="instance329"
	du:placeAndAddChildToContainer(referUI_.instance329,container_,0.84,0.80,-673.95,-593.5,65.8,1,1,1,9)
	du:setLogicParent(referUI_.instance329,referUI_)
	referUI_.up_circle_mask_= cc.Sprite:create("battle_upCircle_mask.png")
	referUI_.up_circle_mask_.name="up_circle_mask_"
	du:placeAndAddChildToContainer(referUI_.up_circle_mask_,container_,0.50,1.00,0.5,107.5,0,1,1,1,14)
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