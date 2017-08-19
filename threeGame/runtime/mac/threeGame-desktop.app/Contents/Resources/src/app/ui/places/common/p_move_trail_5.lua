--imports----------------------------------------------------------
local C_move_trail_container = require("src.app.ui.controls.common.c_move_trail_container")

local p_move_trail_5 = {}

function p_move_trail_5:initPlace(referUI_,container_)
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
	mcControl:getInstance():addMcObjectToContainer(referUI_.container,container_,0.00,0.00,1,30,{{500,1,499.1,1,496.5,1,491.85,1,484.6,1,478.35,1,478.45,1,481.2,1,491.3,1,509.15,1,531.2,1,553.15,1,570.15,1,574.45,1,566.2,1,540.7,1,504,1,467.8,1,436.45,1,414.55,1,383.55,1,341.7,1,310.6,1,272,1,218.9,1,172.25,1,124.85,1,63.7,1,-0.35,1,0,1,},{0.5,1,1.2,1,3.1,1,5.85,1,7.75,1,-0.2,1,-13.7,1,-28.65,1,-42.25,1,-50.75,1,-52.4,1,-44.3,1,-24.3,1,4.55,1,33.65,1,53.9,1,53.3,1,39.8,1,15.6,1,-19.65,1,-46.1,1,-20.55,1,18.25,1,49.5,1,50.55,1,17,1,-18.05,1,-32.6,1,-35.55,1,0,1,},{0,30,},{1,30,},{1,30,},{1,30,},{0,30,},{0,30,},{0,30,}},1)
	table.insert(referUI_.uiList,referUI_.container)
	du:setLogicParent(referUI_.container,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_move_trail_5:setSpecial(referUI_)
end

return p_move_trail_5