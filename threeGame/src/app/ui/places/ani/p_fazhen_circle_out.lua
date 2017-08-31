--imports----------------------------------------------------------
local C_fazhen_circle_out_single = require("src.app.ui.controls.ani.c_fazhen_circle_out_single")

local p_fazhen_circle_out = {}

function p_fazhen_circle_out:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=1
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance471=C_fazhen_circle_out_single.new();
	referUI_.instance471.name="instance471"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance471,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-68.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},1)
	table.insert(referUI_.uiList,referUI_.instance471)
	du:setLogicParent(referUI_.instance471,referUI_)
	referUI_.instance478=C_fazhen_circle_out_single.new();
	referUI_.instance478.name="instance478"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance478,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-88.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},2)
	table.insert(referUI_.uiList,referUI_.instance478)
	du:setLogicParent(referUI_.instance478,referUI_)
	referUI_.instance485=C_fazhen_circle_out_single.new();
	referUI_.instance485.name="instance485"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance485,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-108.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},3)
	table.insert(referUI_.uiList,referUI_.instance485)
	du:setLogicParent(referUI_.instance485,referUI_)
	referUI_.instance492=C_fazhen_circle_out_single.new();
	referUI_.instance492.name="instance492"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance492,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-128.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},4)
	table.insert(referUI_.uiList,referUI_.instance492)
	du:setLogicParent(referUI_.instance492,referUI_)
	referUI_.instance499=C_fazhen_circle_out_single.new();
	referUI_.instance499.name="instance499"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance499,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-148.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},5)
	table.insert(referUI_.uiList,referUI_.instance499)
	du:setLogicParent(referUI_.instance499,referUI_)
	referUI_.instance506=C_fazhen_circle_out_single.new();
	referUI_.instance506.name="instance506"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance506,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-168.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},6)
	table.insert(referUI_.uiList,referUI_.instance506)
	du:setLogicParent(referUI_.instance506,referUI_)
	referUI_.instance513=C_fazhen_circle_out_single.new();
	referUI_.instance513.name="instance513"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance513,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{171.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},7)
	table.insert(referUI_.uiList,referUI_.instance513)
	du:setLogicParent(referUI_.instance513,referUI_)
	referUI_.instance520=C_fazhen_circle_out_single.new();
	referUI_.instance520.name="instance520"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance520,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{151.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},8)
	table.insert(referUI_.uiList,referUI_.instance520)
	du:setLogicParent(referUI_.instance520,referUI_)
	referUI_.instance527=C_fazhen_circle_out_single.new();
	referUI_.instance527.name="instance527"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance527,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{131.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},9)
	table.insert(referUI_.uiList,referUI_.instance527)
	du:setLogicParent(referUI_.instance527,referUI_)
	referUI_.instance534=C_fazhen_circle_out_single.new();
	referUI_.instance534.name="instance534"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance534,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{111.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},10)
	table.insert(referUI_.uiList,referUI_.instance534)
	du:setLogicParent(referUI_.instance534,referUI_)
	referUI_.instance541=C_fazhen_circle_out_single.new();
	referUI_.instance541.name="instance541"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance541,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{91.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},11)
	table.insert(referUI_.uiList,referUI_.instance541)
	du:setLogicParent(referUI_.instance541,referUI_)
	referUI_.instance548=C_fazhen_circle_out_single.new();
	referUI_.instance548.name="instance548"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance548,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{71.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},12)
	table.insert(referUI_.uiList,referUI_.instance548)
	du:setLogicParent(referUI_.instance548,referUI_)
	referUI_.instance555=C_fazhen_circle_out_single.new();
	referUI_.instance555.name="instance555"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance555,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{51.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},13)
	table.insert(referUI_.uiList,referUI_.instance555)
	du:setLogicParent(referUI_.instance555,referUI_)
	referUI_.instance562=C_fazhen_circle_out_single.new();
	referUI_.instance562.name="instance562"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance562,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{31.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},14)
	table.insert(referUI_.uiList,referUI_.instance562)
	du:setLogicParent(referUI_.instance562,referUI_)
	referUI_.instance569=C_fazhen_circle_out_single.new();
	referUI_.instance569.name="instance569"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance569,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{11.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},15)
	table.insert(referUI_.uiList,referUI_.instance569)
	du:setLogicParent(referUI_.instance569,referUI_)
	referUI_.instance576=C_fazhen_circle_out_single.new();
	referUI_.instance576.name="instance576"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance576,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-8.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},16)
	table.insert(referUI_.uiList,referUI_.instance576)
	du:setLogicParent(referUI_.instance576,referUI_)
	referUI_.instance583=C_fazhen_circle_out_single.new();
	referUI_.instance583.name="instance583"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance583,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-28.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},17)
	table.insert(referUI_.uiList,referUI_.instance583)
	du:setLogicParent(referUI_.instance583,referUI_)
	referUI_.instance590=C_fazhen_circle_out_single.new();
	referUI_.instance590.name="instance590"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance590,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-48.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},18)
	table.insert(referUI_.uiList,referUI_.instance590)
	du:setLogicParent(referUI_.instance590,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_fazhen_circle_out:setSpecial(referUI_)
end

return p_fazhen_circle_out