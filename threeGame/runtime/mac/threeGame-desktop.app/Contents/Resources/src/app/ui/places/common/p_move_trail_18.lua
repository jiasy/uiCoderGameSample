--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_18 = {}

function p_move_trail_18:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{501.1,1,501.3,1,501.85,1,502.6,1,503.2,1,502.4,1,495.1,1,482.05,1,470.85,1,466.85,1,480.1,1,499.2,1,520.5,1,531.1,1,529.95,1,515.65,1,487.15,1,455.05,1,425.7,1,392.2,1,353.7,1,317.15,1,276.1,1,236.65,1,203.5,1,157.85,1,106.55,1,52.95,1,1.55,1,0,1,},{1.85,1,0.9,1,-1.95,1,-6.6,1,-13.25,1,-21.75,1,-28.95,1,-25.65,1,-16.55,1,-1,1,13.8,1,23.55,1,18.9,1,-3.55,1,-30.15,1,-54.7,1,-65.85,1,-56.25,1,-36.6,1,-22.45,1,-21.8,1,-38.95,1,-46.65,1,-25.35,1,8.65,1,30.35,1,41.05,1,44.6,1,34.5,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_18:setSpecial(referUI_)
end

return p_move_trail_18