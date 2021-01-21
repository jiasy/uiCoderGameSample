local p_up_shine = {}

function p_up_shine:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=120
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance346= cc.Sprite:create("battle_up_frame.png")
	referUI_.instance346.name="instance346"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance346,container_,0.50,0.50,1,120,{{0,120,},{0,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	du:setLogicParent(referUI_.instance346,referUI_)
	referUI_.instance348= cc.Sprite:create("battle_shineCircle.png")
	referUI_.instance348.name="instance348"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance348,container_,0.50,0.50,1,120,{{0,120,},{-129.05,69,-13.9,1,-20.3,1,-26.5,1,-32.55,1,-38.45,1,-44.1,1,-49.6,1,-54.85,1,-59.95,1,-64.9,1,-69.65,1,-74.25,1,-78.6,1,-82.75,1,-86.75,1,-90.6,1,-94.2,1,-97.65,1,-100.85,1,-103.95,1,-106.9,1,-109.55,1,-112.05,1,-114.35,1,-116.5,1,-118.4,1,-120.2,1,-121.8,1,-123.2,1,-124.4,1,-125.45,1,-126.25,1,-126.9,1,-127.35,1,-127.65,1,-127.75,1,-129.05,15,},{0,120,},{0.04,69,0.41,1,0.53,1,0.66,1,0.78,1,0.89,1,1.01,1,1.11,1,1.22,1,1.32,1,1.42,1,1.51,1,1.6,1,1.69,1,1.77,1,1.85,1,1.92,1,2,1,2.06,1,2.13,1,2.19,1,2.25,1,2.3,1,2.35,1,2.4,1,2.44,1,2.48,1,2.51,1,2.54,1,2.57,1,2.59,1,2.61,1,2.63,1,2.64,1,2.65,1,2.66,2,0.04,15,},{0.04,69,0.41,1,0.53,1,0.66,1,0.78,1,0.89,1,1.01,1,1.11,1,1.22,1,1.32,1,1.42,1,1.51,1,1.6,1,1.69,1,1.77,1,1.85,1,1.92,1,2,1,2.06,1,2.13,1,2.19,1,2.25,1,2.3,1,2.35,1,2.4,1,2.44,1,2.48,1,2.51,1,2.54,1,2.57,1,2.59,1,2.61,1,2.63,1,2.64,1,2.65,1,2.66,2,0.04,15,},{1,120,},{0,120,},{0,120,},{0,120,}},2)
	du:setLogicParent(referUI_.instance348,referUI_)
	du:setBlendToDisplay(referUI_.instance348,"add")
	referUI_.pic_mask_1= cc.Sprite:create("battle_up_frame.png")
	referUI_.pic_mask_1.name="pic_mask_1"
	mcControl:getInstance():addMcObjectToContainer(referUI_.pic_mask_1,container_,0.50,0.50,1,120,{{0,120,},{0,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},3)
	du:setLogicParent(referUI_.pic_mask_1,referUI_)
	local _pic_mask_1Mask={}
	_pic_mask_1Mask.stencil=referUI_.pic_mask_1
	_pic_mask_1Mask.maskNumber=1
	table.insert(_maskInfos,_pic_mask_1Mask)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_up_shine:setSpecial(referUI_)
end

return p_up_shine