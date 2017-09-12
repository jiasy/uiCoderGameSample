local p_zhiye_shine_5 = {}

function p_zhiye_shine_5:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=120
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance429= cc.Sprite:create("battle_biankuang.png")
	referUI_.instance429.name="instance429"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance429,container_,1.00,1.00,1,120,{{15,120,},{14,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	du:setLogicParent(referUI_.instance429,referUI_)
	referUI_.instance431= cc.Sprite:create("battle_shineCircle.png")
	referUI_.instance431.name="instance431"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance431,container_,0.50,0.50,1,120,{{120.05,85,0.15,34,-0.45,1,},{35.75,85,-0.3,1,-0.2,1,-0.1,1,0.05,1,0.1,1,0.2,1,0.35,1,0.45,1,0.5,1,0.6,1,0.7,1,0.75,1,0.85,1,0.9,1,1,1,1.05,1,1.1,1,1.15,1,1.25,1,1.3,1,1.35,2,1.4,2,1.45,1,1.5,1,1.55,3,1.6,2,1.65,3,1.05,1,},{0,120,},{0.4,85,0.1,1,0.33,1,0.55,1,0.76,1,0.96,1,1.16,1,1.35,1,1.54,1,1.72,1,1.89,1,2.06,1,2.22,1,2.37,1,2.51,1,2.65,1,2.78,1,2.91,1,3.02,1,3.14,1,3.24,1,3.34,1,3.43,1,3.51,1,3.59,1,3.66,1,3.73,1,3.78,1,3.83,1,3.88,1,3.92,1,3.95,1,3.97,1,3.99,1,4,2,},{0.4,85,0.1,1,0.33,1,0.55,1,0.76,1,0.96,1,1.16,1,1.35,1,1.54,1,1.72,1,1.89,1,2.06,1,2.22,1,2.37,1,2.51,1,2.65,1,2.78,1,2.91,1,3.02,1,3.14,1,3.24,1,3.34,1,3.43,1,3.51,1,3.59,1,3.66,1,3.73,1,3.78,1,3.83,1,3.88,1,3.92,1,3.95,1,3.97,1,3.99,1,4,2,},{1,120,},{0,120,},{0,120,},{0,120,}},2)
	du:setLogicParent(referUI_.instance431,referUI_)
	du:setBlendToDisplay(referUI_.instance431,"add")
	referUI_.pic_mask_1= cc.Sprite:create("battle_biankuang.png")
	referUI_.pic_mask_1.name="pic_mask_1"
	mcControl:getInstance():addMcObjectToContainer(referUI_.pic_mask_1,container_,1.00,1.00,1,120,{{19.8,120,},{18.8,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},3)
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

function p_zhiye_shine_5:setSpecial(referUI_)
end

return p_zhiye_shine_5