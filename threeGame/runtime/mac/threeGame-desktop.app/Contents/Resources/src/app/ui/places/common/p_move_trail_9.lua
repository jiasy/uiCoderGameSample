--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_9 = {}

function p_move_trail_9:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{501.3,1,502.2,1,504.9,1,509.3,1,515.5,1,523.2,1,521.05,1,511.95,1,499.1,1,483.55,1,479.05,1,487.55,1,491.1,1,468.45,1,443.95,1,424.5,1,422.75,1,432.8,1,418.35,1,383.5,1,352.2,1,321.2,1,291.2,1,255.7,1,216.7,1,199.65,1,157.2,1,103.75,1,51.7,1,0,1,},{0.4,1,0.55,1,0.95,1,1.5,1,1.9,1,0.55,1,-8.55,1,-16.55,1,-22.15,1,-22.05,1,-5.85,1,11.2,1,30.7,1,36.8,1,30.85,1,13.05,1,-16.65,1,-46,1,-61.95,1,-42.5,1,-20.25,1,3.7,1,28.7,1,47.35,1,34.2,1,-9,1,-32,1,-29.05,1,-16.85,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_9:setSpecial(referUI_)
end

return p_move_trail_9