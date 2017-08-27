local p_block_x = {}

function p_block_x:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=30
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance174= cc.Sprite:create("three_three_block_special.png")
	referUI_.instance174.name="instance174"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance174,container_,0.50,0.50,1,15,{{0,1,-0.15,1,-0.6,1,-1.4,1,-2.45,1,-3.85,1,-5.5,1,-7.5,1,-9.8,1,-12.4,1,-15.3,1,-18.5,1,-22.05,1,-25.85,1,-30,1,},{0,15,},{90,15,},{0.32,2,0.33,2,0.35,1,0.36,1,0.38,1,0.4,1,0.42,1,0.45,1,0.48,1,0.52,1,0.56,1,0.6,1,0.64,1,},{0.05,2,0.06,2,0.07,1,0.08,1,0.1,1,0.11,1,0.13,1,0.15,1,0.18,1,0.2,1,0.23,1,0.27,1,0.3,1,},{1,15,},{0,15,},{0,15,},{0,15,}},1)
	du:setLogicParent(referUI_.instance174,referUI_)
	referUI_.instance176= cc.Sprite:create("three_three_block_special.png")
	referUI_.instance176.name="instance176"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance176,container_,0.50,0.50,1,15,{{0,1,0.15,1,0.6,1,1.4,1,2.45,1,3.85,1,5.5,1,7.5,1,9.8,1,12.4,1,15.3,1,18.5,1,22.05,1,25.85,1,30,1,},{0,15,},{-90,15,},{0.32,2,0.33,2,0.35,1,0.36,1,0.38,1,0.4,1,0.42,1,0.45,1,0.48,1,0.52,1,0.56,1,0.6,1,0.64,1,},{0.05,2,0.06,2,0.07,1,0.08,1,0.1,1,0.11,1,0.13,1,0.15,1,0.18,1,0.2,1,0.23,1,0.27,1,0.3,1,},{1,15,},{0,15,},{0,15,},{0,15,}},2)
	du:setLogicParent(referUI_.instance176,referUI_)
	referUI_.instance533= cc.Sprite:create("three_three_block_special.png")
	referUI_.instance533.name="instance533"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance533,container_,0.50,0.50,11,30,{{0,1,-0.1,1,-0.4,1,-0.9,1,-1.6,1,-2.5,1,-3.6,1,-4.85,1,-6.35,1,-8.05,1,-9.95,1,-12.05,1,-14.35,1,-16.8,1,-19.5,1,-24.7,1,-28.8,1,-31.7,1,-33.4,1,-34,1,},{0,20,},{90,14,89.99,1,90,5,},{0.32,2,0.33,2,0.34,1,0.35,1,0.37,1,0.38,1,0.4,1,0.43,1,0.45,1,0.48,1,0.51,1,0.54,1,0.58,6,},{0.02,1,0.03,1,0.04,1,0.06,1,0.09,1,0.12,1,0.17,1,0.22,1,0.28,1,0.34,1,0.42,1,0.5,1,0.59,1,0.69,1,0.8,1,0.69,1,0.61,1,0.55,1,0.51,1,0.5,1,},{1,20,},{0,20,},{0,20,},{0,20,}},3)
	du:setLogicParent(referUI_.instance533,referUI_)
	referUI_.instance535= cc.Sprite:create("three_three_block_special.png")
	referUI_.instance535.name="instance535"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance535,container_,0.50,0.50,11,30,{{0,1,0.1,1,0.4,1,0.85,1,1.55,1,2.4,1,3.45,1,4.7,1,6.1,1,7.75,1,9.55,1,11.55,1,13.75,1,16.1,1,18.7,1,24.2,1,28.5,1,31.55,1,33.4,1,34,1,},{0,20,},{-90,14,-89.99,1,-90,4,-89.99,1,},{0.32,2,0.33,2,0.34,1,0.35,1,0.37,1,0.38,1,0.4,1,0.43,1,0.45,1,0.48,1,0.51,1,0.54,1,0.58,1,0.57,5,},{0.02,1,0.03,1,0.04,1,0.06,1,0.09,1,0.12,1,0.17,1,0.22,1,0.28,1,0.34,1,0.42,1,0.5,1,0.59,1,0.69,1,0.8,1,0.69,1,0.61,1,0.55,1,0.51,1,0.5,1,},{1,20,},{0,20,},{0,20,},{0,20,}},4)
	du:setLogicParent(referUI_.instance535,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_block_x:setSpecial(referUI_)
end

return p_block_x