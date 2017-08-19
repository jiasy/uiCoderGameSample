--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_20 = {}

function p_move_trail_20:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{500,1,496.45,1,486.3,1,469.95,1,447.2,1,418.65,1,384.8,1,396.8,1,418.35,1,375.5,1,322.25,1,311.85,1,330.7,1,348.35,1,310.75,1,266.8,1,229.3,1,192.45,1,152.15,1,107.8,1,67.05,1,38.75,1,18.1,1,0.25,1,-15.45,1,-20.05,1,-11.05,1,-4.9,1,-1.25,1,0,1,},{0,1,0.95,1,3.55,1,7.6,1,12.8,1,18.15,1,19.8,1,-11,1,-47.75,1,-74,1,-74.2,1,-20.5,1,36.15,1,87.3,1,86.25,1,42.65,1,1.1,1,-33.9,1,-59.9,1,-69.8,1,-55.75,1,-28,1,-1.5,1,20.5,1,38.45,1,34.75,1,18.5,1,8.1,1,2,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_20:setSpecial(referUI_)
end

return p_move_trail_20