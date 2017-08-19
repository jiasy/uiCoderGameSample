--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_4 = {}

function p_move_trail_4:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{500,1,500.2,1,500.8,1,501.8,1,503.2,1,505,1,507.1,1,509.4,1,511.7,1,513.4,1,513,1,506.55,1,489.2,1,465.7,1,439.8,1,411.65,1,381.2,1,348.5,1,312.1,1,271.9,1,228.95,1,184.7,1,141.25,1,101.3,1,67.1,1,40.05,1,20.65,1,8.45,1,2.1,1,0,1,},{0.5,1,0.95,1,2.35,1,4.8,1,8.3,1,13.05,1,19.15,1,26.7,1,35.95,1,47.3,1,60.95,1,75.85,1,85.8,1,87.1,1,82.9,1,74.95,1,63.5,1,50.5,1,36.8,1,22.6,1,8.9,1,-3.25,1,-12.65,1,-18.15,1,-19.25,1,-16.35,1,-10.95,1,-5.2,1,-1.1,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_4:setSpecial(referUI_)
end

return p_move_trail_4