--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_6 = {}

function p_move_trail_6:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{500.35,1,449.3,1,400.15,1,351.35,1,307.25,1,289.45,1,254,1,212.05,1,179.3,1,149.3,1,120.4,1,91.8,1,66.35,1,76.5,1,79.5,1,64.35,1,39.5,1,17,1,11.2,1,21.1,1,21.45,1,6.05,1,-7.7,1,-17.8,1,-23.4,1,-16.25,1,-8.9,1,-3.95,1,-1.05,1,0,1,},{1.45,1,17.85,1,29.5,1,33.5,1,17.5,1,-25.1,1,-47.95,1,-29.2,1,-2.15,1,21,1,41.65,1,58.95,1,56.25,1,25.45,1,-3.25,1,-26.2,1,-34.9,1,-35.2,1,-16.05,1,2.65,1,19.8,1,23.8,1,19.25,1,11.55,1,3.35,1,-0.95,1,-0.7,1,-0.1,1,0.35,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_6:setSpecial(referUI_)
end

return p_move_trail_6