--imports----------------------------------------------------------
local C_four_cricle = require("src.app.ui.controls.ani.c_four_cricle")
local C_up_shine = require("src.app.ui.controls.ani.c_up_shine")
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
	referUI_.instance323=C_four_cricle.new();
	referUI_.instance323.name="instance323"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance323,container_,0.00,0.00,1,1,{{0,1,},{-75,1,},{0,1,},{0.75,1,},{0.75,1,},{1,1,},{0,1,},{0,1,},{0,1,}},10)
	table.insert(referUI_.uiList,referUI_.instance323)
	du:setLogicParent(referUI_.instance323,referUI_)
	referUI_.instance332=C_up_shine.new();
	referUI_.instance332.name="instance332"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance332,container_,0.00,0.00,1,1,{{0,1,},{-80,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},11)
	table.insert(referUI_.uiList,referUI_.instance332)
	du:setLogicParent(referUI_.instance332,referUI_)
	referUI_.instance338=C_up_shine.new();
	referUI_.instance338.name="instance338"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance338,container_,0.00,0.00,1,1,{{0,1,},{-74.95,1,},{0,1,},{0.62,1,},{0.62,1,},{1,1,},{0,1,},{0,1,},{0,1,}},12)
	table.insert(referUI_.uiList,referUI_.instance338)
	du:setLogicParent(referUI_.instance338,referUI_)
	referUI_.instance344=C_zhiye_shine_6.new();
	referUI_.instance344.name="instance344"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance344,container_,0.00,0.00,1,1,{{0,1,},{-252.5,1,},{180,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},13)
	table.insert(referUI_.uiList,referUI_.instance344)
	du:setLogicParent(referUI_.instance344,referUI_)
	referUI_.instance351=C_zhiye_shine_6.new();
	referUI_.instance351.name="instance351"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance351,container_,0.00,0.00,1,1,{{0,1,},{107.5,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},15)
	table.insert(referUI_.uiList,referUI_.instance351)
	du:setLogicParent(referUI_.instance351,referUI_)
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
	referUI_.instance302= cc.Sprite:create("battle_yuyi_1.png")
	referUI_.instance302.name="instance302"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance302,container_,0.50,0.50,1,1,{{-625.5,1,},{-670.1,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},1)
	du:setLogicParent(referUI_.instance302,referUI_)
	referUI_.instance304= cc.Sprite:create("battle_maisui_right.png")
	referUI_.instance304.name="instance304"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance304,container_,0.11,0.40,1,1,{{-542.75,1,},{-749.1,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},2)
	du:setLogicParent(referUI_.instance304,referUI_)
	referUI_.instance306= cc.Sprite:create("battle_maisui_left.png")
	referUI_.instance306.name="instance306"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance306,container_,0.94,0.35,1,1,{{-579.6,1,},{-737.25,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},3)
	du:setLogicParent(referUI_.instance306,referUI_)
	referUI_.instance311= cc.Sprite:create("battle_genjing_7.png")
	referUI_.instance311.name="instance311"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance311,container_,0.50,0.50,1,1,{{-667,1,},{-834.3,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},4)
	du:setLogicParent(referUI_.instance311,referUI_)
	referUI_.instance313= cc.Sprite:create("battle_hua_1.png")
	referUI_.instance313.name="instance313"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance313,container_,0.50,0.50,1,1,{{-552.5,1,},{-665.1,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},5)
	du:setLogicParent(referUI_.instance313,referUI_)
	referUI_.instance315= cc.Sprite:create("battle_ye_1.png")
	referUI_.instance315.name="instance315"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance315,container_,0.52,0.88,1,1,{{-675.9,1,},{-606.65,1,},{22.58,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},6)
	du:setLogicParent(referUI_.instance315,referUI_)
	referUI_.instance317= cc.Sprite:create("battle_genjing_3.png")
	referUI_.instance317.name="instance317"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance317,container_,0.33,0.17,1,1,{{-678.25,1,},{-600.45,1,},{-108.21,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},7)
	du:setLogicParent(referUI_.instance317,referUI_)
	referUI_.instance319= cc.Sprite:create("battle_genjing_1.png")
	referUI_.instance319.name="instance319"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance319,container_,0.79,0.84,1,1,{{-664.9,1,},{-593.55,1,},{-71.18,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},8)
	du:setLogicParent(referUI_.instance319,referUI_)
	referUI_.instance321= cc.Sprite:create("battle_genjing_2.png")
	referUI_.instance321.name="instance321"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance321,container_,0.84,0.80,1,1,{{-673.95,1,},{-593.5,1,},{65.8,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},9)
	du:setLogicParent(referUI_.instance321,referUI_)
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