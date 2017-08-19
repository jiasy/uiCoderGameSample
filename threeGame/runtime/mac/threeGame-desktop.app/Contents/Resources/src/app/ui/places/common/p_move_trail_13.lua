--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_13 = {}

function p_move_trail_13:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{500,1,500.85,1,503.3,1,507.25,1,512.7,1,519.65,1,527.4,1,532.25,1,524.9,1,512.35,1,496.8,1,485.1,1,483.2,1,485.55,1,490.15,1,486.15,1,455.9,1,429.2,1,403.8,1,378.3,1,352.25,1,324.8,1,292.6,1,255.4,1,214.1,1,170.55,1,126.6,1,83.3,1,41.1,1,0,1,},{0.5,1,0.7,1,1.35,1,2.45,1,4.2,1,7,1,11.65,1,21.15,1,32.55,1,40.4,1,40.6,1,26.05,1,4.6,1,-17.8,1,-41.1,1,-61.8,1,-52.8,1,-35.4,1,-16.25,1,4.5,1,26.8,1,48.7,1,67.35,1,80.55,1,86,1,82.75,1,71.25,1,52.9,1,28.95,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_13:setSpecial(referUI_)
end

return p_move_trail_13