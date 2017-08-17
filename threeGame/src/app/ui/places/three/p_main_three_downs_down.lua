local p_main_three_downs_down = {}

function p_main_three_downs_down:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=20
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance2206= cc.Sprite:create("png_arrow1.png")
	referUI_.instance2206.name="instance2206"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance2206,container_,0.50,0.50,1,20,{{0,20,},{0,2,-0.05,1,-0.15,1,-0.3,1,-0.5,1,-0.7,1,-0.85,1,-0.95,1,-1,2,-0.95,1,-0.85,1,-0.7,1,-0.6,1,-0.45,1,-0.25,1,-0.1,1,-0.05,1,0,1,},{0,20,},{1,1,0.99,1,0.97,1,0.92,1,0.86,1,0.77,1,0.68,1,0.6,1,0.55,1,0.53,1,0.54,1,0.56,1,0.6,1,0.65,1,0.72,1,0.8,1,0.88,1,0.94,1,0.99,1,1,1,},{1,1,1.01,1,1.03,1,1.07,1,1.13,1,1.21,1,1.29,1,1.37,1,1.42,1,1.43,2,1.41,1,1.37,1,1.32,1,1.26,1,1.19,1,1.11,1,1.05,1,1.01,1,1,1,},{1,20,},{0,20,},{0,20,},{0,20,}},1)
	du:setLogicParent(referUI_.instance2206,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_main_three_downs_down:setSpecial(referUI_)
end

return p_main_three_downs_down