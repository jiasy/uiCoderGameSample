--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_3 = {}

function p_move_trail_3:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{500,1,499.6,1,498.35,1,496.2,1,493.1,1,488.95,1,483.55,1,476.9,1,468.8,1,459.05,1,447.45,1,433.75,1,417.65,1,398.75,1,376.6,1,350.7,1,320.8,1,286.5,1,248.25,1,207.2,1,165.6,1,126.25,1,92,1,61.2,1,33.25,1,8.75,1,-0.9,1,-1.1,1,-0.4,1,0,1,},{0.5,1,0.75,1,1.55,1,2.85,1,4.75,1,7.3,1,10.5,1,14.35,1,18.9,1,24.15,1,30.05,1,36.6,1,43.7,1,51.05,1,58.4,1,65.15,1,70.35,1,72.7,1,70.35,1,61.55,1,45.4,1,22.65,1,-3.05,1,-24.5,1,-38.65,1,-39.85,1,-22.8,1,-9.4,1,-2.2,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_3:setSpecial(referUI_)
end

return p_move_trail_3