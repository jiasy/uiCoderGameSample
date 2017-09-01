--imports----------------------------------------------------------
local C_main_battle_bar_side = require("src.app.ui.controls.three.c_main_battle_bar_side")
local C_bar_shine_1 = require("src.app.ui.controls.ani.c_bar_shine_1")
local C_bar_shine_3 = require("src.app.ui.controls.ani.c_bar_shine_3")
local C_bar_shine_2 = require("src.app.ui.controls.ani.c_bar_shine_2")

local p_main_battle_bar = {}

function p_main_battle_bar:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=120
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.sideRight=C_main_battle_bar_side.new();
	referUI_.sideRight.name="sideRight"
	mcControl:getInstance():addMcObjectToContainer(referUI_.sideRight,container_,0.00,0.00,1,120,{{320,120,},{5,7,4.95,2,4.9,1,4.85,1,4.75,1,4.7,1,4.6,1,4.5,1,4.4,1,4.25,1,4.1,1,3.95,1,3.8,1,3.6,1,3.4,1,3.2,1,2.95,1,2.75,1,2.45,1,2.2,1,1.95,1,1.65,1,1.35,1,1.1,1,0.8,1,0.55,1,0.3,1,0.05,1,-0.2,1,-0.35,1,-0.55,1,-0.7,1,-0.8,1,-0.9,1,-0.95,1,-1,4,-0.95,2,-0.9,2,-0.85,1,-0.75,1,-0.7,1,-0.65,1,-0.55,1,-0.45,1,-0.35,1,-0.25,1,-0.1,1,0,1,0.15,1,0.3,1,0.5,1,0.65,1,0.85,1,1.05,1,1.25,1,1.5,1,1.7,1,1.95,1,2.2,1,2.45,1,2.65,1,2.9,1,3.15,1,3.4,1,3.6,1,3.85,1,4.05,1,4.2,1,4.4,1,4.55,1,4.65,1,4.75,1,4.85,1,4.9,1,4.95,1,5,33,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	table.insert(referUI_.uiList,referUI_.sideRight)
	du:setLogicParent(referUI_.sideRight,referUI_)
	referUI_.sideLeft=C_main_battle_bar_side.new();
	referUI_.sideLeft.name="sideLeft"
	mcControl:getInstance():addMcObjectToContainer(referUI_.sideLeft,container_,0.00,0.00,1,120,{{-320,120,},{5,7,4.95,2,4.9,1,4.85,1,4.75,1,4.7,1,4.6,1,4.5,1,4.4,1,4.25,1,4.1,1,3.95,1,3.8,1,3.6,1,3.4,1,3.2,1,2.95,1,2.75,1,2.45,1,2.2,1,1.95,1,1.65,1,1.35,1,1.1,1,0.8,1,0.55,1,0.3,1,0.05,1,-0.2,1,-0.35,1,-0.55,1,-0.7,1,-0.8,1,-0.9,1,-0.95,1,-1,4,-0.95,2,-0.9,2,-0.85,1,-0.75,1,-0.7,1,-0.65,1,-0.55,1,-0.45,1,-0.35,1,-0.25,1,-0.1,1,0,1,0.15,1,0.3,1,0.5,1,0.65,1,0.85,1,1.05,1,1.25,1,1.5,1,1.7,1,1.95,1,2.2,1,2.45,1,2.65,1,2.9,1,3.15,1,3.4,1,3.6,1,3.85,1,4.05,1,4.2,1,4.4,1,4.55,1,4.65,1,4.75,1,4.85,1,4.9,1,4.95,1,5,33,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},2)
	table.insert(referUI_.uiList,referUI_.sideLeft)
	du:setLogicParent(referUI_.sideLeft,referUI_)
	referUI_.bar_1=C_bar_shine_1.new();
	referUI_.bar_1.name="bar_1"
	mcControl:getInstance():addMcObjectToContainer(referUI_.bar_1,container_,0.00,0.00,1,120,{{0,120,},{-30.2,3,-30.25,1,-30.3,1,-30.35,1,-30.4,1,-30.5,1,-30.6,1,-30.7,1,-30.85,1,-30.95,1,-31.15,1,-31.3,1,-31.5,1,-31.75,1,-31.95,1,-32.2,1,-32.5,1,-32.75,1,-33.05,1,-33.4,1,-33.7,1,-34,1,-34.3,1,-34.65,1,-34.9,1,-35.2,1,-35.4,1,-35.65,1,-35.8,1,-35.95,1,-36.05,1,-36.15,1,-36.2,4,-36.15,2,-36.1,1,-36.05,1,-36,1,-35.9,1,-35.85,1,-35.75,1,-35.6,1,-35.5,1,-35.35,1,-35.25,1,-35.05,1,-34.9,1,-34.7,1,-34.5,1,-34.3,1,-34.05,1,-33.8,1,-33.55,1,-33.3,1,-33,1,-32.75,1,-32.45,1,-32.2,1,-31.9,1,-31.65,1,-31.4,1,-31.2,1,-31,1,-30.8,1,-30.65,1,-30.5,1,-30.4,1,-30.3,1,-30.25,1,-30.2,46,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},4)
	table.insert(referUI_.uiList,referUI_.bar_1)
	du:setLogicParent(referUI_.bar_1,referUI_)
	referUI_.bar_2=C_bar_shine_3.new();
	referUI_.bar_2.name="bar_2"
	mcControl:getInstance():addMcObjectToContainer(referUI_.bar_2,container_,0.00,0.00,1,120,{{0,120,},{-84.6,12,-84.65,3,-84.7,1,-84.75,2,-84.8,1,-84.85,1,-84.9,1,-84.95,1,-85.05,1,-85.1,1,-85.2,1,-85.25,1,-85.35,1,-85.45,1,-85.55,1,-85.65,1,-85.75,1,-85.85,1,-85.95,1,-86.1,1,-86.15,1,-86.25,1,-86.35,1,-86.4,1,-86.45,1,-86.5,1,-86.55,1,-86.6,7,-86.55,3,-86.5,2,-86.45,1,-86.4,1,-86.35,1,-86.3,2,-86.2,1,-86.15,1,-86.1,1,-86.05,1,-85.95,1,-85.9,1,-85.8,1,-85.7,1,-85.65,1,-85.55,1,-85.45,1,-85.35,1,-85.25,1,-85.15,1,-85.1,1,-85,1,-84.95,1,-84.85,1,-84.8,1,-84.75,1,-84.7,1,-84.65,2,-84.6,39,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},5)
	table.insert(referUI_.uiList,referUI_.bar_2)
	du:setLogicParent(referUI_.bar_2,referUI_)
	referUI_.bar_3=C_bar_shine_2.new();
	referUI_.bar_3.name="bar_3"
	mcControl:getInstance():addMcObjectToContainer(referUI_.bar_3,container_,0.00,0.00,1,120,{{0,120,},{-63.6,7,-63.65,1,-63.7,1,-63.75,1,-63.8,1,-63.85,1,-63.95,1,-64.05,1,-64.15,1,-64.3,1,-64.45,1,-64.6,1,-64.8,1,-64.95,1,-65.15,1,-65.4,1,-65.6,1,-65.85,1,-66.1,1,-66.35,1,-66.6,1,-66.85,1,-67.1,1,-67.35,1,-67.55,1,-67.8,1,-67.95,1,-68.15,1,-68.3,1,-68.4,1,-68.5,1,-68.55,1,-68.6,4,-68.55,2,-68.5,1,-68.45,1,-68.4,1,-68.35,1,-68.3,1,-68.2,1,-68.1,1,-68,1,-67.9,1,-67.8,1,-67.65,1,-67.5,1,-67.35,1,-67.2,1,-67,1,-66.8,1,-66.6,1,-66.4,1,-66.2,1,-65.95,1,-65.7,1,-65.5,1,-65.25,1,-65.05,1,-64.8,1,-64.6,1,-64.45,1,-64.25,1,-64.1,1,-63.95,1,-63.85,1,-63.75,1,-63.7,1,-63.65,1,-63.6,42,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},6)
	table.insert(referUI_.uiList,referUI_.bar_3)
	du:setLogicParent(referUI_.bar_3,referUI_)
	referUI_.instance274= cc.Sprite:create("battle_bar_2.png")
	referUI_.instance274.name="instance274"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance274,container_,0.50,1.00,1,120,{{0,120,},{66.05,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},3)
	du:setLogicParent(referUI_.instance274,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_main_battle_bar:setSpecial(referUI_)
end

return p_main_battle_bar