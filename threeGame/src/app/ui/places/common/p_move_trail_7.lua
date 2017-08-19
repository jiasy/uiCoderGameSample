--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_7 = {}

function p_move_trail_7:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{501.1,1,500.4,1,498.3,1,494.75,1,489.75,1,482.7,1,474.55,1,482.05,1,491.6,1,502.75,1,513.15,1,498.3,1,467.05,1,437.95,1,408.2,1,376.2,1,333.05,1,296.2,1,264.65,1,218.25,1,173,1,132.8,1,97.1,1,66.65,1,40.15,1,17.65,1,-0.35,1,-4.95,1,-1.6,1,0,1,},{0.85,1,0,1,-2.55,1,-6.75,1,-12.55,1,-20.05,1,-22.3,1,-3.7,1,15,1,35.55,1,57.15,1,67.45,1,46.8,1,23.75,1,-1.4,1,-24.5,1,-18.3,1,9.55,1,42.55,1,47.95,1,36.95,1,22.2,1,6.75,1,-6.1,1,-15.75,1,-21.75,1,-21.95,1,-10.2,1,-2.35,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_7:setSpecial(referUI_)
end

return p_move_trail_7