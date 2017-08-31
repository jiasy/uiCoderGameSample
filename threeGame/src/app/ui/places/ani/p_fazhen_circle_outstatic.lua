--imports----------------------------------------------------------
local C_fazhen_circle_outStatic_single = require("src.app.ui.controls.ani.c_fazhen_circle_outStatic_single")

local p_fazhen_circle_outstatic = {}

function p_fazhen_circle_outstatic:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=1
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance338=C_fazhen_circle_outStatic_single.new();
	referUI_.instance338.name="instance338"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance338,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-68.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},1)
	table.insert(referUI_.uiList,referUI_.instance338)
	du:setLogicParent(referUI_.instance338,referUI_)
	referUI_.instance345=C_fazhen_circle_outStatic_single.new();
	referUI_.instance345.name="instance345"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance345,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-88.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},2)
	table.insert(referUI_.uiList,referUI_.instance345)
	du:setLogicParent(referUI_.instance345,referUI_)
	referUI_.instance352=C_fazhen_circle_outStatic_single.new();
	referUI_.instance352.name="instance352"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance352,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-108.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},3)
	table.insert(referUI_.uiList,referUI_.instance352)
	du:setLogicParent(referUI_.instance352,referUI_)
	referUI_.instance359=C_fazhen_circle_outStatic_single.new();
	referUI_.instance359.name="instance359"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance359,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-128.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},4)
	table.insert(referUI_.uiList,referUI_.instance359)
	du:setLogicParent(referUI_.instance359,referUI_)
	referUI_.instance366=C_fazhen_circle_outStatic_single.new();
	referUI_.instance366.name="instance366"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance366,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-148.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},5)
	table.insert(referUI_.uiList,referUI_.instance366)
	du:setLogicParent(referUI_.instance366,referUI_)
	referUI_.instance373=C_fazhen_circle_outStatic_single.new();
	referUI_.instance373.name="instance373"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance373,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-168.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},6)
	table.insert(referUI_.uiList,referUI_.instance373)
	du:setLogicParent(referUI_.instance373,referUI_)
	referUI_.instance380=C_fazhen_circle_outStatic_single.new();
	referUI_.instance380.name="instance380"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance380,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{171.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},7)
	table.insert(referUI_.uiList,referUI_.instance380)
	du:setLogicParent(referUI_.instance380,referUI_)
	referUI_.instance387=C_fazhen_circle_outStatic_single.new();
	referUI_.instance387.name="instance387"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance387,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{151.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},8)
	table.insert(referUI_.uiList,referUI_.instance387)
	du:setLogicParent(referUI_.instance387,referUI_)
	referUI_.instance394=C_fazhen_circle_outStatic_single.new();
	referUI_.instance394.name="instance394"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance394,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{131.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},9)
	table.insert(referUI_.uiList,referUI_.instance394)
	du:setLogicParent(referUI_.instance394,referUI_)
	referUI_.instance401=C_fazhen_circle_outStatic_single.new();
	referUI_.instance401.name="instance401"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance401,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{111.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},10)
	table.insert(referUI_.uiList,referUI_.instance401)
	du:setLogicParent(referUI_.instance401,referUI_)
	referUI_.instance408=C_fazhen_circle_outStatic_single.new();
	referUI_.instance408.name="instance408"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance408,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{91.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},11)
	table.insert(referUI_.uiList,referUI_.instance408)
	du:setLogicParent(referUI_.instance408,referUI_)
	referUI_.instance415=C_fazhen_circle_outStatic_single.new();
	referUI_.instance415.name="instance415"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance415,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{71.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},12)
	table.insert(referUI_.uiList,referUI_.instance415)
	du:setLogicParent(referUI_.instance415,referUI_)
	referUI_.instance422=C_fazhen_circle_outStatic_single.new();
	referUI_.instance422.name="instance422"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance422,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{51.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},13)
	table.insert(referUI_.uiList,referUI_.instance422)
	du:setLogicParent(referUI_.instance422,referUI_)
	referUI_.instance429=C_fazhen_circle_outStatic_single.new();
	referUI_.instance429.name="instance429"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance429,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{31.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},14)
	table.insert(referUI_.uiList,referUI_.instance429)
	du:setLogicParent(referUI_.instance429,referUI_)
	referUI_.instance436=C_fazhen_circle_outStatic_single.new();
	referUI_.instance436.name="instance436"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance436,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{11.59,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},15)
	table.insert(referUI_.uiList,referUI_.instance436)
	du:setLogicParent(referUI_.instance436,referUI_)
	referUI_.instance443=C_fazhen_circle_outStatic_single.new();
	referUI_.instance443.name="instance443"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance443,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-8.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},16)
	table.insert(referUI_.uiList,referUI_.instance443)
	du:setLogicParent(referUI_.instance443,referUI_)
	referUI_.instance450=C_fazhen_circle_outStatic_single.new();
	referUI_.instance450.name="instance450"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance450,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-28.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},17)
	table.insert(referUI_.uiList,referUI_.instance450)
	du:setLogicParent(referUI_.instance450,referUI_)
	referUI_.instance457=C_fazhen_circle_outStatic_single.new();
	referUI_.instance457.name="instance457"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance457,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{-48.41,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},18)
	table.insert(referUI_.uiList,referUI_.instance457)
	du:setLogicParent(referUI_.instance457,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_fazhen_circle_outstatic:setSpecial(referUI_)
end

return p_fazhen_circle_outstatic