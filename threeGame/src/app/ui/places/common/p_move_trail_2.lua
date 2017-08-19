--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_2 = {}

function p_move_trail_2:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{500.2,1,500.45,1,501.2,1,502.45,1,504.1,1,506.05,1,508.05,1,509.45,1,508.95,1,503.8,1,491.5,1,473.15,1,450.8,1,425.25,1,396.45,1,364.2,1,328.25,1,288.2,1,244.3,1,196.9,1,147,1,96.65,1,48.45,1,8.2,1,-24.5,1,-46.75,1,-25.75,1,-10.55,1,-2.5,1,0,1,},{0.1,1,-0.35,1,-1.8,1,-4.3,1,-8,1,-13.05,1,-19.7,1,-28.2,1,-38.85,1,-51.5,1,-63.55,1,-72.7,1,-78.85,1,-82.7,1,-84.7,1,-85.05,1,-83.85,1,-81.05,1,-76.7,1,-70.85,1,-63.65,1,-55.6,1,-47.05,1,-35.8,1,-24.75,1,-10.7,1,-1.6,1,-0.1,1,0.4,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_2:setSpecial(referUI_)
end

return p_move_trail_2