--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_19 = {}

function p_move_trail_19:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{500,1,499.9,1,499.3,1,497.05,1,488.15,1,460.65,1,436,1,413.2,1,387.8,1,356.95,1,314.4,1,288.8,1,283.8,1,279.1,1,265.55,1,221.5,1,189.3,1,165.5,1,146.95,1,121.9,1,85.75,1,65.55,1,52.7,1,40.5,1,24.35,1,9.55,1,4.3,1,1.7,1,0.4,1,0,1,},{0,1,3.3,1,12.7,1,27.95,1,46.8,1,40.55,1,13.85,1,-18.25,1,-50.45,1,-80.8,1,-94.75,1,-48.6,1,5,1,54,1,101.1,1,98.85,1,54.25,1,10.8,1,-29.2,1,-60.4,1,-50.8,1,-18.9,1,10.15,1,33.25,1,47.8,1,34.55,1,19.2,1,8.5,1,2.1,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_19:setSpecial(referUI_)
end

return p_move_trail_19