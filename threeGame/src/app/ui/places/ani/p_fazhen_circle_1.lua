--imports----------------------------------------------------------
local C_fazhen_circle_1_single = require("src.app.ui.controls.ani.c_fazhen_circle_1_single")

local uiState=require("src.app.base.ui.uiState")
local p_fazhen_circle_1 = {}

function p_fazhen_circle_1:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.p1=C_fazhen_circle_1_single.new();
	referUI_.p1.name="p1"
	du:placeAndAddChildToContainer(referUI_.p1,container_,0.00,0.00,0,0,0,1,1,1,1)
	table.insert(referUI_.uiList,referUI_.p1)
	du:setLogicParent(referUI_.p1,referUI_)
	referUI_.p2=C_fazhen_circle_1_single.new();
	referUI_.p2.name="p2"
	du:placeAndAddChildToContainer(referUI_.p2,container_,0.00,0.00,0,0,30,1,1,1,2)
	table.insert(referUI_.uiList,referUI_.p2)
	du:setLogicParent(referUI_.p2,referUI_)
	referUI_.p3=C_fazhen_circle_1_single.new();
	referUI_.p3.name="p3"
	du:placeAndAddChildToContainer(referUI_.p3,container_,0.00,0.00,-0.05,0.05,60,1,1,1,3)
	table.insert(referUI_.uiList,referUI_.p3)
	du:setLogicParent(referUI_.p3,referUI_)
	referUI_.p4=C_fazhen_circle_1_single.new();
	referUI_.p4.name="p4"
	du:placeAndAddChildToContainer(referUI_.p4,container_,0.00,0.00,0,0,90,1,1,1,4)
	table.insert(referUI_.uiList,referUI_.p4)
	du:setLogicParent(referUI_.p4,referUI_)
	referUI_.p5=C_fazhen_circle_1_single.new();
	referUI_.p5.name="p5"
	du:placeAndAddChildToContainer(referUI_.p5,container_,0.00,0.00,0,0,120,1,1,1,5)
	table.insert(referUI_.uiList,referUI_.p5)
	du:setLogicParent(referUI_.p5,referUI_)
	referUI_.p6=C_fazhen_circle_1_single.new();
	referUI_.p6.name="p6"
	du:placeAndAddChildToContainer(referUI_.p6,container_,0.00,0.00,0,0,150,1,1,1,6)
	table.insert(referUI_.uiList,referUI_.p6)
	du:setLogicParent(referUI_.p6,referUI_)
	referUI_.p7=C_fazhen_circle_1_single.new();
	referUI_.p7.name="p7"
	du:placeAndAddChildToContainer(referUI_.p7,container_,0.00,0.00,0,0,180,1,1,1,7)
	table.insert(referUI_.uiList,referUI_.p7)
	du:setLogicParent(referUI_.p7,referUI_)
	referUI_.p8=C_fazhen_circle_1_single.new();
	referUI_.p8.name="p8"
	du:placeAndAddChildToContainer(referUI_.p8,container_,0.00,0.00,0,0,-150,1,1,1,8)
	table.insert(referUI_.uiList,referUI_.p8)
	du:setLogicParent(referUI_.p8,referUI_)
	referUI_.p9=C_fazhen_circle_1_single.new();
	referUI_.p9.name="p9"
	du:placeAndAddChildToContainer(referUI_.p9,container_,0.00,0.00,0,0,-120,1,1,1,9)
	table.insert(referUI_.uiList,referUI_.p9)
	du:setLogicParent(referUI_.p9,referUI_)
	referUI_.p10=C_fazhen_circle_1_single.new();
	referUI_.p10.name="p10"
	du:placeAndAddChildToContainer(referUI_.p10,container_,0.00,0.00,0,0,-90,1,1,1,10)
	table.insert(referUI_.uiList,referUI_.p10)
	du:setLogicParent(referUI_.p10,referUI_)
	referUI_.p11=C_fazhen_circle_1_single.new();
	referUI_.p11.name="p11"
	du:placeAndAddChildToContainer(referUI_.p11,container_,0.00,0.00,0,0,-60,1,1,1,11)
	table.insert(referUI_.uiList,referUI_.p11)
	du:setLogicParent(referUI_.p11,referUI_)
	referUI_.p12=C_fazhen_circle_1_single.new();
	referUI_.p12.name="p12"
	du:placeAndAddChildToContainer(referUI_.p12,container_,0.00,0.00,0,0,-30,1,1,1,12)
	table.insert(referUI_.uiList,referUI_.p12)
	du:setLogicParent(referUI_.p12,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_fazhen_circle_1:setSpecial(referUI_)
end

return p_fazhen_circle_1