--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_15 = {}

function p_move_trail_15:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{499.3,1,457.7,1,416.05,1,373.7,1,331.1,1,288.85,1,248.1,1,210.25,1,176.45,1,147.05,1,120.8,1,96.2,1,72.5,1,49.2,1,26,1,7.8,1,12.55,1,15.75,1,15.5,1,7.9,1,-8.35,1,-21.9,1,-31,1,-30.9,1,-22.15,1,-14.4,1,-8.4,1,-4.15,1,-1.55,1,0,1,},{0.8,1,26.3,1,47.25,1,63.25,1,73.35,1,76.65,1,72.6,1,61.55,1,44.75,1,24.1,1,4.25,1,-13.5,1,-29.5,1,-43.4,1,-53.65,1,-44.85,1,-21.7,1,-1.2,1,17.85,1,33.5,1,37.05,1,31.9,1,23.75,1,13.2,1,7.3,1,4.4,1,2.65,1,1.6,1,1,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_15:setSpecial(referUI_)
end

return p_move_trail_15