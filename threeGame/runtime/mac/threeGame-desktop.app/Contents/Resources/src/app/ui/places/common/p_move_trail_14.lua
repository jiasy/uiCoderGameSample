--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_14 = {}

function p_move_trail_14:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{500.3,1,499.7,1,497.8,1,494.55,1,489.8,1,483.45,1,475.3,1,465.2,1,452.85,1,437.95,1,420.2,1,399.1,1,374.05,1,344.75,1,310.55,1,271.7,1,229.55,1,186.9,1,146.85,1,108.45,1,68.9,1,26.9,1,12.9,1,17.1,1,-0.1,1,-26.7,1,-26.6,1,-11.5,1,-2.75,1,0,1,},{0.1,1,-0.35,1,-1.75,1,-4.2,1,-7.65,1,-12.15,1,-17.8,1,-24.5,1,-32.3,1,-41.1,1,-50.65,1,-60.7,1,-70.55,1,-79.1,1,-84.65,1,-84.5,1,-75.5,1,-55.55,1,-25.1,1,7.2,1,37.55,1,61.55,1,29,1,-12.5,1,-40.9,1,-29.95,1,-10.65,1,-3.3,1,-0.7,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_14:setSpecial(referUI_)
end

return p_move_trail_14