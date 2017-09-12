local p_zhiye_shine_4 = {}

function p_zhiye_shine_4:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=120
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance265= cc.Sprite:create("battle_huawen_2.png")
	referUI_.instance265.name="instance265"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance265,container_,1.00,0.50,1,120,{{0,120,},{0,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	du:setLogicParent(referUI_.instance265,referUI_)
	referUI_.instance267= cc.Sprite:create("battle_shine.png")
	referUI_.instance267.name="instance267"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance267,container_,0.50,0.50,1,120,{{77.05,85,-63.75,1,-63.8,1,-63.7,1,-63.6,1,-63.5,1,-63.25,1,-62.95,1,-62.5,1,-61.8,1,-61,1,-59.85,1,-58.4,1,-56.4,1,-53.75,1,-50.45,1,-46.45,1,-41.3,1,-35.3,1,-28.2,1,-20.05,1,-11,1,-1.35,1,8.9,1,19.3,1,29.7,1,39.45,1,48.75,1,57.1,1,64.35,1,70.1,1,75.35,1,78.9,1,81.65,1,83.15,1,83.95,1,},{-70.45,85,-162.7,1,-162.4,1,-161.5,1,-160.6,1,-158.9,1,-156.4,1,-153.6,1,-149.8,1,-145.45,1,-140.35,1,-134.55,1,-127.65,1,-120.05,1,-111.35,1,-101.8,1,-91.5,1,-80.35,1,-68.95,1,-57.15,1,-45.2,1,-33.45,1,-22.4,1,-12.05,1,-2.75,1,5.5,1,12.45,1,18.5,1,23.3,1,27.25,1,30.2,1,32.5,1,34.2,1,35.25,1,35.9,1,36.2,1,},{-174.62,85,89.08,1,89.23,1,89.69,1,90.02,1,90.79,1,92,1,93.28,1,95.01,1,97,1,99.27,1,101.8,1,104.8,1,108.07,1,111.8,1,115.81,1,120.09,1,124.82,1,129.61,1,134.63,1,139.88,1,145.13,1,150.18,1,155.19,1,159.95,1,164.45,1,168.48,1,172.21,1,175.46,1,178.21,1,-179.71,1,-177.75,1,-176.46,1,-175.47,1,-174.95,1,-174.62,1,},{0.1,85,1.03,35,},{0.23,85,1.5,1,1.51,3,1.52,1,1.53,1,1.54,1,1.56,1,1.57,1,1.59,1,1.62,1,1.64,1,1.67,1,1.7,1,1.74,1,1.77,1,1.81,1,1.85,1,1.9,1,1.94,1,1.99,1,2.03,1,2.08,1,2.12,1,2.16,1,2.19,1,2.23,1,2.26,1,2.28,1,2.3,1,2.32,1,2.33,1,2.34,3,},{1,120,},{0,120,},{0,120,},{0,120,}},2)
	du:setLogicParent(referUI_.instance267,referUI_)
	du:setBlendToDisplay(referUI_.instance267,"add")
	referUI_.pic_mask_1= cc.Sprite:create("battle_huawen_2.png")
	referUI_.pic_mask_1.name="pic_mask_1"
	mcControl:getInstance():addMcObjectToContainer(referUI_.pic_mask_1,container_,1.00,0.50,1,120,{{-1.1,120,},{-2,120,},{0,120,},{0.95,120,},{0.95,120,},{1,120,},{0,120,},{0,120,},{0,120,}},3)
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

function p_zhiye_shine_4:setSpecial(referUI_)
end

return p_zhiye_shine_4