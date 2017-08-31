--imports----------------------------------------------------------
local C_glassBlock_glow_in = require("src.app.ui.controls.ani.c_glassBlock_glow_in")
local C_glassBlock_glow_out = require("src.app.ui.controls.ani.c_glassBlock_glow_out")

local uiState=require("src.app.base.ui.uiState")
local p_glassBlock_shine = {}

function p_glassBlock_shine:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.in1=C_glassBlock_glow_in.new();
	referUI_.in1.name="in1"
	du:placeAndAddChildToContainer(referUI_.in1,container_,0.00,0.00,0.15,2.35,135,1,1,1,1)
	table.insert(referUI_.uiList,referUI_.in1)
	du:setLogicParent(referUI_.in1,referUI_)
	referUI_.in2=C_glassBlock_glow_in.new();
	referUI_.in2.name="in2"
	du:placeAndAddChildToContainer(referUI_.in2,container_,0.00,0.00,0.15,2.35,90,1,1,1,2)
	table.insert(referUI_.uiList,referUI_.in2)
	du:setLogicParent(referUI_.in2,referUI_)
	referUI_.in3=C_glassBlock_glow_in.new();
	referUI_.in3.name="in3"
	du:placeAndAddChildToContainer(referUI_.in3,container_,0.00,0.00,0.15,2.35,45,1,1,1,3)
	table.insert(referUI_.uiList,referUI_.in3)
	du:setLogicParent(referUI_.in3,referUI_)
	referUI_.in4=C_glassBlock_glow_in.new();
	referUI_.in4.name="in4"
	du:placeAndAddChildToContainer(referUI_.in4,container_,0.00,0.00,0.15,2.35,0,1,1,1,4)
	table.insert(referUI_.uiList,referUI_.in4)
	du:setLogicParent(referUI_.in4,referUI_)
	referUI_.out1=C_glassBlock_glow_out.new();
	referUI_.out1.name="out1"
	du:placeAndAddChildToContainer(referUI_.out1,container_,0.00,0.00,0.15,2.35,135,1,1,1,5)
	table.insert(referUI_.uiList,referUI_.out1)
	du:setLogicParent(referUI_.out1,referUI_)
	referUI_.out2=C_glassBlock_glow_out.new();
	referUI_.out2.name="out2"
	du:placeAndAddChildToContainer(referUI_.out2,container_,0.00,0.00,0.15,2.35,90,1,1,1,6)
	table.insert(referUI_.uiList,referUI_.out2)
	du:setLogicParent(referUI_.out2,referUI_)
	referUI_.out3=C_glassBlock_glow_out.new();
	referUI_.out3.name="out3"
	du:placeAndAddChildToContainer(referUI_.out3,container_,0.00,0.00,0.15,2.35,45,1,1,1,7)
	table.insert(referUI_.uiList,referUI_.out3)
	du:setLogicParent(referUI_.out3,referUI_)
	referUI_.out4=C_glassBlock_glow_out.new();
	referUI_.out4.name="out4"
	du:placeAndAddChildToContainer(referUI_.out4,container_,0.00,0.00,0.15,2.35,0,1,1,1,8)
	table.insert(referUI_.uiList,referUI_.out4)
	du:setLogicParent(referUI_.out4,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_glassBlock_shine:setSpecial(referUI_)
end

return p_glassBlock_shine