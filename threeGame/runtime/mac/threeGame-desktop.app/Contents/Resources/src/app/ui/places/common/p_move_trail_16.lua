--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_16 = {}

function p_move_trail_16:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{500,1,500.8,1,503.2,1,507.05,1,512.3,1,519.1,1,526.85,1,532.25,1,524.65,1,512.1,1,497.1,1,485.1,1,483.25,1,486.1,1,491.05,1,478.7,1,450.05,1,424.4,1,399.25,1,373.7,1,347.55,1,319.45,1,286.9,1,250.15,1,210.2,1,168.35,1,125.9,1,83.6,1,41.9,1,0,1,},{1.95,1,1.75,1,1.25,1,0.3,1,-1.2,1,-3.55,1,-7.55,1,-16.05,1,-26.65,1,-33.5,1,-33.75,1,-20.75,1,-0.2,1,21.25,1,43,1,57.55,1,46.15,1,30.7,1,13.55,1,-5.05,1,-25.05,1,-44,1,-59.6,1,-70.05,1,-73.9,1,-70.65,1,-60.6,1,-44.65,1,-23.75,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_16:setSpecial(referUI_)
end

return p_move_trail_16