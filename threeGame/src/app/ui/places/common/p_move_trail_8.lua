--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_8 = {}

function p_move_trail_8:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{502,1,502.55,1,503.95,1,505.7,1,504.4,1,491.9,1,475.85,1,458.2,1,438.35,1,416.15,1,391.5,1,364.75,1,334.95,1,301.45,1,264.05,1,227.3,1,198,1,161.9,1,117.4,1,82.05,1,49.2,1,17.1,1,-14.55,1,-0.85,1,12.9,1,23.05,1,19.1,1,8.35,1,2.75,1,0,1,},{0.35,1,1.35,1,4.35,1,9.55,1,17.55,1,20.85,1,18.25,1,13.05,1,5.85,1,-3.2,1,-14,1,-25.35,1,-36.45,1,-46.25,1,-51.3,1,-36.6,1,-5.75,1,18.9,1,19.85,1,-9.3,1,-36.5,1,-60.4,1,-69.9,1,-34.75,1,-9.2,1,12.1,1,19.45,1,7.9,1,1.35,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_8:setSpecial(referUI_)
end

return p_move_trail_8