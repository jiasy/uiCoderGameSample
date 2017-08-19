--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_17 = {}

function p_move_trail_17:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{501,1,499.1,1,462.05,1,405,1,351.8,1,303.2,1,258.25,1,216.2,1,176.75,1,138.85,1,100.6,1,67.95,1,39.5,1,8.7,1,-17.65,1,-29.9,1,-29.3,1,-17.15,1,4.85,1,22,1,33.75,1,30.4,1,18.95,1,7.55,1,-1,1,-2.3,1,-1.7,1,-0.95,1,-0.35,1,0,1,},{1.8,1,54.15,1,93.85,1,101,1,93.65,1,81.25,1,66.7,1,51.15,1,35.15,1,22.35,1,26.8,1,43.4,1,61.45,1,67.55,1,53.85,1,28.2,1,1.85,1,-18.9,1,-20.55,1,-10.95,1,2.2,1,18.1,1,27.55,1,31,1,25.3,1,15.9,1,8.75,1,3.85,1,0.95,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_17:setSpecial(referUI_)
end

return p_move_trail_17