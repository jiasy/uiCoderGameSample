--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_1 = {}

function p_move_trail_1:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=30
	local t=referUI_
	--Frame names and frame actions-----------------------------------------
	referUI_.frameNames[30]="s_"
	
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.container=C_move_trail_container.new();
	referUI_.container.name="container"
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{500.2,1,500.45,1,501.25,1,502.55,1,504.35,1,506.7,1,509.4,1,512.3,1,514.8,1,515.4,1,508.7,1,489.4,1,465.55,1,440.05,1,412.3,1,381.8,1,348.2,1,311.25,1,271.15,1,229.65,1,185.05,1,139.05,1,93.35,1,50.65,1,14.6,1,-3.45,1,-4.8,1,-2.55,1,-0.65,1,0,1,},{0.1,1,-0.4,1,-1.85,1,-4.4,1,-8.1,1,-13.05,1,-19.5,1,-27.55,1,-37.5,1,-50.05,1,-63.85,1,-70.9,1,-69.8,1,-64.45,1,-56.1,1,-45.1,1,-31.4,1,-15,1,4.1,1,23.95,1,43.5,1,61.1,1,74.6,1,80.65,1,73.6,1,49.3,1,26.1,1,11.1,1,3,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_1:setSpecial(referUI_)
end

return p_move_trail_1