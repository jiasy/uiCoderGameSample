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
	referUI_.instance314=C_four_cricle.new();
	referUI_.instance314.name="instance314"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance314,container_,0.00,0.00,1,1,{{0,1,},{-75,1,},{0,1,},{0.75,1,},{0.75,1,},{1,1,},{0,1,},{0,1,},{0,1,}},10)
	table.insert(referUI_.uiList,referUI_.instance314)
	du:setLogicParent(referUI_.instance314,referUI_)
	referUI_.instance323=C_up_shine.new();
	referUI_.instance323.name="instance323"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance323,container_,0.00,0.00,1,1,{{0,1,},{-80,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},11)
	table.insert(referUI_.uiList,referUI_.instance323)
	du:setLogicParent(referUI_.instance323,referUI_)
	referUI_.instance329=C_up_shine.new();
	referUI_.instance329.name="instance329"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance329,container_,0.00,0.00,1,1,{{0,1,},{-74.95,1,},{0,1,},{0.62,1,},{0.62,1,},{1,1,},{0,1,},{0,1,},{0,1,}},12)
	table.insert(referUI_.uiList,referUI_.instance329)
	du:setLogicParent(referUI_.instance329,referUI_)
	referUI_.instance335=C_zhiye_shine_6.new();
	referUI_.instance335.name="instance335"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance335,container_,0.00,0.00,1,1,{{0,1,},{-252.5,1,},{180,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},13)
	table.insert(referUI_.uiList,referUI_.instance335)
	du:setLogicParent(referUI_.instance335,referUI_)
	referUI_.instance342=C_zhiye_shine_6.new();
	referUI_.instance342.name="instance342"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance342,container_,0.00,0.00,1,1,{{0,1,},{107.5,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},15)
	table.insert(referUI_.uiList,referUI_.instance342)
	du:setLogicParent(referUI_.instance342,referUI_)
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
	referUI_.instance293= cc.Sprite:create("battle_yuyi_1.png")
	referUI_.instance293.name="instance293"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance293,container_,0.50,0.50,1,1,{{-625.5,1,},{-670.1,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},1)
	du:setLogicParent(referUI_.instance293,referUI_)
	referUI_.instance295= cc.Sprite:create("battle_maisui_right.png")
	referUI_.instance295.name="instance295"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance295,container_,0.11,0.40,1,1,{{-542.75,1,},{-749.1,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},2)
	du:setLogicParent(referUI_.instance295,referUI_)
	referUI_.instance297= cc.Sprite:create("battle_maisui_left.png")
	referUI_.instance297.name="instance297"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance297,container_,0.94,0.35,1,1,{{-579.6,1,},{-737.25,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},3)
	du:setLogicParent(referUI_.instance297,referUI_)
	referUI_.instance302= cc.Sprite:create("battle_genjing_7.png")
	referUI_.instance302.name="instance302"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance302,container_,0.50,0.50,1,1,{{-667,1,},{-834.3,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},4)
	du:setLogicParent(referUI_.instance302,referUI_)
	referUI_.instance304= cc.Sprite:create("battle_hua_1.png")
	referUI_.instance304.name="instance304"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance304,container_,0.50,0.50,1,1,{{-552.5,1,},{-665.1,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},5)
	du:setLogicParent(referUI_.instance304,referUI_)
	referUI_.instance306= cc.Sprite:create("battle_ye_1.png")
	referUI_.instance306.name="instance306"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance306,container_,0.52,0.88,1,1,{{-675.9,1,},{-606.65,1,},{22.58,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},6)
	du:setLogicParent(referUI_.instance306,referUI_)
	referUI_.instance308= cc.Sprite:create("battle_genjing_3.png")
	referUI_.instance308.name="instance308"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance308,container_,0.33,0.17,1,1,{{-678.25,1,},{-600.45,1,},{-108.21,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},7)
	du:setLogicParent(referUI_.instance308,referUI_)
	referUI_.instance310= cc.Sprite:create("battle_genjing_1.png")
	referUI_.instance310.name="instance310"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance310,container_,0.79,0.84,1,1,{{-664.9,1,},{-593.55,1,},{-71.18,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},8)
	du:setLogicParent(referUI_.instance310,referUI_)
	referUI_.instance312= cc.Sprite:create("battle_genjing_2.png")
	referUI_.instance312.name="instance312"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance312,container_,0.84,0.80,1,1,{{-673.95,1,},{-593.5,1,},{65.8,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},9)
	du:setLogicParent(referUI_.instance312,referUI_)
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