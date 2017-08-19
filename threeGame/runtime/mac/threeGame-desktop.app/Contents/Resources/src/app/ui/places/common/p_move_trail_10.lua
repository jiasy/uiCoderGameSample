--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_10 = {}

function p_move_trail_10:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{499.5,1,498.5,1,435.6,1,377.05,1,329.4,1,286.05,1,232.75,1,189.7,1,158.9,1,122.55,1,85.95,1,63.5,1,30.9,1,-4,1,-38.75,1,-66.1,1,-75.5,1,-72.15,1,-55.95,1,-32.9,1,-11.25,1,6.55,1,17.35,1,20.25,1,20.8,1,17.65,1,9.5,1,4,1,1.05,1,0,1,},{1.45,1,37.15,1,34.25,1,20.85,1,-12.45,1,-46.25,1,-50.3,1,-18.3,1,20.2,1,46.65,1,24.55,1,-12.85,1,-38.3,1,-51.4,1,-53.1,1,-34.05,1,-4.35,1,23.75,1,44.8,1,53.95,1,52.55,1,44.65,1,30.95,1,16.65,1,4.6,1,-4.7,1,-5.35,1,-2.55,1,-0.55,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_10:setSpecial(referUI_)
end

return p_move_trail_10