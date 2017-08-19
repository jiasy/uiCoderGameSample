--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_12 = {}

function p_move_trail_12:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{500,1,500.5,1,502.1,1,504.75,1,508.65,1,513.95,1,520.95,1,529.05,1,528.3,1,522.2,1,512.9,1,496.3,1,473.55,1,447.8,1,419.9,1,389.6,1,356.65,1,321,1,280.7,1,234.7,1,183.85,1,131.05,1,83.1,1,47.45,1,18.6,1,-5.3,1,-14.2,1,-6.25,1,-1.65,1,0,1,},{0.5,1,0.7,1,1.4,1,2.45,1,3.9,1,5.55,1,6.8,1,3.9,1,-8.15,1,-20.9,1,-33.7,1,-42.75,1,-44.95,1,-41,1,-32.4,1,-19.8,1,-3.4,1,15.05,1,32.65,1,47.6,1,56.2,1,53,1,34.15,1,5.85,1,-17.4,1,-33.45,1,-24.15,1,-9.4,1,-2.05,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_12:setSpecial(referUI_)
end

return p_move_trail_12