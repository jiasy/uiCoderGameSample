local p_zhiye_shine_6 = {}

function p_zhiye_shine_6:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=120
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance315= cc.Sprite:create("battle_upCircle.png")
	referUI_.instance315.name="instance315"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance315,container_,0.50,1.00,1,120,{{0,120,},{0,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	du:setLogicParent(referUI_.instance315,referUI_)
	referUI_.instance317= cc.Sprite:create("battle_shineCircle.png")
	referUI_.instance317.name="instance317"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance317,container_,0.50,0.50,1,120,{{0,84,-1.7,1,-1.6,1,-1.5,1,-1.4,1,-1.3,1,-1.25,1,-1.15,1,-1.05,1,-1,1,-0.9,1,-0.85,1,-0.8,1,-0.65,2,-0.6,1,-0.5,2,-0.45,1,-0.4,1,-0.3,2,-0.25,1,-0.2,2,-0.15,1,-0.1,2,-0.05,3,0,6,},{-288.9,84,-170.6,1,-169.4,1,-168.35,1,-167.25,1,-166.2,1,-165.2,1,-164.2,1,-163.25,1,-162.45,1,-161.55,1,-160.65,1,-159.85,1,-159.1,1,-158.3,1,-157.65,1,-157,1,-156.4,1,-155.8,1,-155.2,1,-154.7,1,-154.15,1,-153.7,1,-153.3,1,-152.9,1,-152.5,1,-152.15,1,-151.9,1,-151.65,1,-151.4,1,-151.25,1,-151.1,1,-150.95,1,-150.9,1,-150.85,1,-150.9,1,-288.9,1,},{0,120,},{0.1,84,0.68,1,0.88,1,1.07,1,1.25,1,1.43,1,1.6,1,1.77,1,1.93,1,2.09,1,2.24,1,2.38,1,2.52,1,2.65,1,2.78,1,2.9,1,3.01,1,3.12,1,3.22,1,3.32,1,3.41,1,3.5,1,3.58,1,3.65,1,3.72,1,3.78,1,3.83,1,3.88,1,3.93,1,3.97,1,4,1,4.03,1,4.05,2,4.07,2,0.1,1,},{0.1,84,0.68,1,0.88,1,1.07,1,1.25,1,1.43,1,1.6,1,1.77,1,1.93,1,2.09,1,2.24,1,2.38,1,2.52,1,2.65,1,2.78,1,2.9,1,3.01,1,3.12,1,3.22,1,3.32,1,3.41,1,3.5,1,3.58,1,3.65,1,3.72,1,3.78,1,3.83,1,3.88,1,3.93,1,3.97,1,4,1,4.03,1,4.05,2,4.07,2,0.1,1,},{1,120,},{0,120,},{0,120,},{0,120,}},2)
	du:setLogicParent(referUI_.instance317,referUI_)
	du:setBlendToDisplay(referUI_.instance317,"add")
	referUI_.pic_mask_1= cc.Sprite:create("battle_upCircle.png")
	referUI_.pic_mask_1.name="pic_mask_1"
	mcControl:getInstance():addMcObjectToContainer(referUI_.pic_mask_1,container_,0.50,1.00,1,120,{{0,120,},{0,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},3)
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

function p_zhiye_shine_6:setSpecial(referUI_)
end

return p_zhiye_shine_6