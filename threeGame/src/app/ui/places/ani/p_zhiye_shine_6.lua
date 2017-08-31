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
	referUI_.instance343= cc.Sprite:create("battle_upCircle.png")
	referUI_.instance343.name="instance343"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance343,container_,0.50,1.00,1,120,{{0,120,},{0,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	du:setLogicParent(referUI_.instance343,referUI_)
	referUI_.instance345= cc.Sprite:create("battle_shineCircle.png")
	referUI_.instance345.name="instance345"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance345,container_,0.50,0.50,1,120,{{0,84,-1.7,1,-1.5,1,-1.35,1,-1.25,1,-1.1,1,-1,1,-0.95,1,-0.85,1,-0.75,1,-0.7,1,-0.65,1,-0.6,1,-0.5,1,-0.4,2,-0.35,1,-0.3,2,-0.2,3,-0.15,2,-0.1,2,-0.05,1,0,2,-0.05,1,0,1,0.05,1,0,2,0.05,1,0,2,},{-288.9,84,-170.6,1,-168.55,1,-166.8,1,-165.35,1,-164.1,1,-162.95,1,-162,1,-161,1,-160.15,1,-159.35,1,-158.6,1,-157.95,1,-157.3,1,-156.65,1,-156.15,1,-155.65,1,-155.15,1,-154.7,1,-154.3,1,-153.9,1,-153.6,1,-153.25,1,-153,1,-152.75,1,-152.45,1,-152.3,1,-152.15,1,-151.9,1,-151.8,1,-151.65,1,-151.55,1,-151.5,2,-151.4,1,-151.45,1,-288.9,1,},{0,120,},{0.1,84,0.68,1,0.93,1,1.12,1,1.29,1,1.44,1,1.57,1,1.7,1,1.81,1,1.91,1,2,1,2.09,1,2.17,1,2.24,1,2.31,1,2.38,1,2.44,1,2.49,1,2.54,1,2.59,1,2.64,1,2.68,1,2.71,1,2.75,1,2.78,1,2.81,1,2.83,1,2.85,1,2.87,1,2.89,1,2.9,1,2.91,1,2.92,1,2.93,3,0.1,1,},{0.1,84,0.68,1,0.93,1,1.12,1,1.29,1,1.44,1,1.57,1,1.7,1,1.81,1,1.91,1,2,1,2.09,1,2.17,1,2.24,1,2.31,1,2.38,1,2.44,1,2.49,1,2.54,1,2.59,1,2.64,1,2.68,1,2.71,1,2.75,1,2.78,1,2.81,1,2.83,1,2.85,1,2.87,1,2.89,1,2.9,1,2.91,1,2.92,1,2.93,3,0.1,1,},{1,120,},{0,120,},{0,120,},{0,120,}},2)
	du:setLogicParent(referUI_.instance345,referUI_)
	du:setBlendToDisplay(referUI_.instance345,"add")
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