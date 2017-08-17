--imports----------------------------------------------------------
local C_main_three_downs_down = require("src.app.ui.controls.three.c_main_three_downs_down")

local uiState=require("src.app.base.ui.uiState")
local p_main_three_downs = {}

function p_main_three_downs:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.down_2=C_main_three_downs_down.new();
	referUI_.down_2.name="down_2"
	du:placeAndAddChildToContainer(referUI_.down_2,container_,0.00,0.00,-199.25,0,0,1,1,1,1)
	table.insert(referUI_.uiList,referUI_.down_2)
	du:setLogicParent(referUI_.down_2,referUI_)
	referUI_.down_3=C_main_three_downs_down.new();
	referUI_.down_3.name="down_3"
	du:placeAndAddChildToContainer(referUI_.down_3,container_,0.00,0.00,-132.85,0,0,1,1,1,2)
	table.insert(referUI_.uiList,referUI_.down_3)
	du:setLogicParent(referUI_.down_3,referUI_)
	referUI_.down_4=C_main_three_downs_down.new();
	referUI_.down_4.name="down_4"
	du:placeAndAddChildToContainer(referUI_.down_4,container_,0.00,0.00,-66.45,0,0,1,1,1,3)
	table.insert(referUI_.uiList,referUI_.down_4)
	du:setLogicParent(referUI_.down_4,referUI_)
	referUI_.down_5=C_main_three_downs_down.new();
	referUI_.down_5.name="down_5"
	du:placeAndAddChildToContainer(referUI_.down_5,container_,0.00,0.00,-0.05,0,0,1,1,1,4)
	table.insert(referUI_.uiList,referUI_.down_5)
	du:setLogicParent(referUI_.down_5,referUI_)
	referUI_.down_6=C_main_three_downs_down.new();
	referUI_.down_6.name="down_6"
	du:placeAndAddChildToContainer(referUI_.down_6,container_,0.00,0.00,66.35,0,0,1,1,1,5)
	table.insert(referUI_.uiList,referUI_.down_6)
	du:setLogicParent(referUI_.down_6,referUI_)
	referUI_.down_7=C_main_three_downs_down.new();
	referUI_.down_7.name="down_7"
	du:placeAndAddChildToContainer(referUI_.down_7,container_,0.00,0.00,132.75,0,0,1,1,1,6)
	table.insert(referUI_.uiList,referUI_.down_7)
	du:setLogicParent(referUI_.down_7,referUI_)
	referUI_.down_8=C_main_three_downs_down.new();
	referUI_.down_8.name="down_8"
	du:placeAndAddChildToContainer(referUI_.down_8,container_,0.00,0.00,199.15,0,0,1,1,1,7)
	table.insert(referUI_.uiList,referUI_.down_8)
	du:setLogicParent(referUI_.down_8,referUI_)
	referUI_.down_9=C_main_three_downs_down.new();
	referUI_.down_9.name="down_9"
	du:placeAndAddChildToContainer(referUI_.down_9,container_,0.00,0.00,265.55,0,0,1,1,1,8)
	table.insert(referUI_.uiList,referUI_.down_9)
	du:setLogicParent(referUI_.down_9,referUI_)
	referUI_.down_1=C_main_three_downs_down.new();
	referUI_.down_1.name="down_1"
	du:placeAndAddChildToContainer(referUI_.down_1,container_,0.00,0.00,-265.65,0,0,1,1,1,9)
	table.insert(referUI_.uiList,referUI_.down_1)
	du:setLogicParent(referUI_.down_1,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_main_three_downs:setSpecial(referUI_)
end

return p_main_three_downs