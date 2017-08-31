--imports----------------------------------------------------------
local C_main_yuzhou_pics = require("src.app.ui.controls.three.c_main_yuzhou_pics")

local p_main_yuzhou = {}

function p_main_yuzhou:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=120
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance5=C_main_yuzhou_pics.new();
	referUI_.instance5.name="instance5"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance5,container_,0.00,0.00,1,120,{{0,120,},{0,120,},{0,1,-0.51,1,-2.04,1,-4.8,1,-8.77,1,-13.79,1,-20.07,1,-27.58,1,-36.36,1,-46.4,1,-57.9,1,-70.48,1,-84.69,1,-99.8,1,-116.79,1,-135,1,-154.71,1,-175.97,1,161.48,1,137.39,1,111.78,1,84.73,1,56.16,1,26.06,1,-5.29,1,-38.33,1,-72.69,1,-108.06,1,-144.94,1,177,1,137.88,1,97.77,1,56.92,1,15.27,1,-26.83,1,-69.47,1,-112.09,1,-155.16,1,162.46,1,120.3,1,78.94,1,38.1,1,-1.29,1,-39.63,1,-76.48,1,-111.54,1,-144.88,1,-175.99,1,155.16,1,128.33,1,103.81,1,82.21,1,62.9,1,45.91,1,31.82,1,20.29,1,11.29,1,5.01,1,1.25,1,0,61,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	table.insert(referUI_.uiList,referUI_.instance5)
	du:setLogicParent(referUI_.instance5,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_main_yuzhou:setSpecial(referUI_)
end

return p_main_yuzhou