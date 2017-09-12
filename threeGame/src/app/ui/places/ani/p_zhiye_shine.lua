local p_zhiye_shine = {}

function p_zhiye_shine:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=120
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance447= cc.Sprite:create("battle_genjing_5.png")
	referUI_.instance447.name="instance447"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance447,container_,0.50,0.50,1,120,{{0,120,},{0,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	du:setLogicParent(referUI_.instance447,referUI_)
	referUI_.instance449= cc.Sprite:create("battle_shine.png")
	referUI_.instance449.name="instance449"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance449,container_,0.50,0.50,1,120,{{129.95,85,-126.65,1,-126.4,1,-125.85,1,-124.9,1,-123.6,1,-121.95,1,-119.75,1,-117.15,1,-114.25,1,-111,1,-107.15,1,-103.05,1,-98.35,1,-93.2,1,-87.6,1,-81.5,1,-74.9,1,-67.75,1,-60.1,1,-51.85,1,-43.15,1,-33.8,1,-24,1,-13.55,1,-2.55,1,9.15,1,21.25,1,34.05,1,47.25,1,61,1,75.55,1,90.25,1,105.35,1,121,1,138.7,1,},{-26.95,85,-88.2,1,-88.15,1,-87.7,1,-86.8,1,-85.85,1,-84.65,1,-82.9,1,-81,1,-78.85,1,-76.55,1,-73.7,1,-70.75,1,-67.5,1,-64.15,1,-60.45,1,-56.45,1,-52.35,1,-48.1,1,-43.7,1,-39.1,1,-34.35,1,-29.55,1,-24.7,1,-19.8,1,-14.85,1,-9.9,1,-5.1,1,-0.35,1,4.2,1,8.55,1,12.8,1,16.8,1,20.35,1,23.65,1,26.5,1,},{-167.65,85,106.36,1,106.31,1,106.56,1,107.02,1,107.53,1,108.07,1,109.03,1,110.02,1,111.06,1,112.31,1,113.79,1,115.31,1,117.06,1,118.84,1,120.85,1,123.08,1,125.35,1,127.85,1,130.38,1,133.14,1,136.13,1,139.15,1,142.4,1,145.68,1,149.19,1,152.92,1,156.7,1,160.69,1,164.72,1,168.97,1,173.45,1,177.96,1,-177.49,1,-172.72,1,-167.65,1,},{0.13,85,1.46,6,1.45,4,1.44,3,1.43,2,1.42,2,1.41,1,1.4,2,1.39,2,1.38,1,1.37,1,1.36,2,1.35,1,1.34,1,1.33,1,1.32,1,1.31,1,1.3,1,1.29,1,1.28,1,1.27,1,},{0.12,85,1.38,4,1.37,5,1.36,3,1.35,2,1.34,2,1.33,2,1.32,2,1.31,1,1.3,2,1.29,1,1.28,1,1.27,1,1.26,2,1.25,1,1.24,1,1.23,1,1.22,1,1.21,1,1.2,1,1.19,1,},{1,120,},{0,120,},{0,120,},{0,120,}},2)
	du:setLogicParent(referUI_.instance449,referUI_)
	du:setBlendToDisplay(referUI_.instance449,"add")
	referUI_.pic_mask_1= cc.Sprite:create("battle_genjing_5.png")
	referUI_.pic_mask_1.name="pic_mask_1"
	mcControl:getInstance():addMcObjectToContainer(referUI_.pic_mask_1,container_,0.50,0.50,1,120,{{-6.5,120,},{-2.4,120,},{-4.94,120,},{0.94,120,},{0.9,120,},{1,120,},{0,120,},{0,120,},{0,120,}},3)
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

function p_zhiye_shine:setSpecial(referUI_)
end

return p_zhiye_shine