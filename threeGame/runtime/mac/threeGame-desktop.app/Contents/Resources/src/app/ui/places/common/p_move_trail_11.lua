--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_11 = {}

function p_move_trail_11:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{500,1,500.5,1,501.9,1,504.35,1,507.7,1,511.9,1,514.8,1,507.6,1,496.45,1,483.55,1,468.65,1,451.45,1,431.9,1,410.2,1,385.45,1,358.75,1,358.4,1,366.25,1,319.65,1,270.4,1,221.7,1,173.75,1,131,1,91.9,1,57.5,1,29.65,1,11.2,1,3.1,1,0.55,1,0,1,},{0.5,1,0.7,1,1.3,1,2.4,1,4.2,1,7.1,1,12.85,1,19.7,1,23.9,1,27.2,1,30.15,1,32.9,1,35.4,1,37,1,36.5,1,27.8,1,-3.95,1,-36,1,-43.35,1,-33.75,1,-20.25,1,-4.7,1,13.65,1,26.75,1,33.35,1,31.85,1,22.15,1,10.4,1,2.9,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_11:setSpecial(referUI_)
end

return p_move_trail_11