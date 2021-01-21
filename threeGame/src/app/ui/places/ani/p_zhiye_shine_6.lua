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
	referUI_.instance359= cc.Sprite:create("battle_upCircle.png")
	referUI_.instance359.name="instance359"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance359,container_,0.50,1.00,1,120,{{0,120,},{0,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	du:setLogicParent(referUI_.instance359,referUI_)
	referUI_.instance361= cc.Sprite:create("battle_shineCircle.png")
	referUI_.instance361.name="instance361"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance361,container_,0.50,0.50,1,120,{{0,84,-1.7,1,-1.5,1,-1.35,1,-1.25,1,-1.1,1,-1,1,-0.95,1,-0.85,1,-0.75,1,-0.65,2,-0.6,1,-0.5,1,-0.45,1,-0.4,1,-0.35,2,-0.3,1,-0.25,1,-0.2,2,-0.15,2,-0.1,3,-0.05,3,0,7,},{-288.9,84,-170.6,1,-168.5,1,-166.8,1,-165.35,1,-164.1,1,-163,1,-161.9,1,-161,1,-160.1,1,-159.3,1,-158.55,1,-157.9,1,-157.25,1,-156.65,1,-156.1,1,-155.55,1,-155.15,1,-154.7,1,-154.3,1,-153.95,1,-153.5,1,-153.25,1,-152.95,1,-152.7,1,-152.45,1,-152.2,1,-152.05,1,-151.9,1,-151.75,1,-151.65,1,-151.55,1,-151.5,1,-151.4,1,-151.35,1,-151.45,1,-288.9,1,},{0,120,},{0.1,84,0.68,1,0.93,1,1.12,1,1.29,1,1.44,1,1.57,1,1.7,1,1.81,1,1.91,1,2,1,2.09,1,2.17,1,2.24,1,2.31,1,2.38,1,2.44,1,2.49,1,2.54,1,2.59,1,2.64,1,2.68,1,2.71,1,2.75,1,2.78,1,2.81,1,2.83,1,2.85,1,2.87,1,2.89,1,2.9,1,2.91,1,2.92,1,2.93,3,0.1,1,},{0.1,84,0.68,1,0.93,1,1.12,1,1.29,1,1.44,1,1.57,1,1.7,1,1.81,1,1.91,1,2,1,2.09,1,2.17,1,2.24,1,2.31,1,2.38,1,2.44,1,2.49,1,2.54,1,2.59,1,2.64,1,2.68,1,2.71,1,2.75,1,2.78,1,2.81,1,2.83,1,2.85,1,2.87,1,2.89,1,2.9,1,2.91,1,2.92,1,2.93,3,0.1,1,},{1,120,},{0,120,},{0,120,},{0,120,}},2)
	du:setLogicParent(referUI_.instance361,referUI_)
	du:setBlendToDisplay(referUI_.instance361,"add")
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