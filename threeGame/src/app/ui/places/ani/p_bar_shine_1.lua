local p_bar_shine_1 = {}

function p_bar_shine_1:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=120
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance247= cc.Sprite:create("battle_bar_2.png")
	referUI_.instance247.name="instance247"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance247,container_,0.50,1.00,1,120,{{0,120,},{125,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	du:setLogicParent(referUI_.instance247,referUI_)
	referUI_.instance249= cc.Sprite:create("battle_shine.png")
	referUI_.instance249.name="instance249"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance249,container_,0.50,0.50,1,120,{{18.5,74,263.6,1,263.15,1,262.3,1,260.75,1,258.45,1,254.7,1,250,1,243.7,1,235.5,1,225,1,211.85,1,194.9,1,175.35,1,151.9,1,124.7,1,92.75,1,57.8,1,20.05,1,-18.75,1,-54.6,1,-87.2,1,-116.35,1,-141.85,1,-164.6,1,-183.2,1,-199.4,1,-212.05,1,-222.85,1,-230.85,1,-237.6,1,-242.65,1,-246.3,1,-248.45,1,-249.85,1,-250.2,1,18.5,11,},{79.25,74,351.15,1,350.65,1,347.2,1,341.55,1,333.75,1,322.85,1,310.85,1,296.9,1,281.25,1,264.3,1,246.3,1,227.05,1,208.5,1,190.7,1,174.45,1,160.3,1,150,1,143.7,1,143.6,1,148.45,1,157.3,1,169.15,1,182.85,1,198.4,1,213.95,1,229.95,1,244.6,1,258.95,1,271.25,1,282.55,1,292.1,1,299.45,1,304.15,1,307.45,1,309.1,1,79.25,11,},{54.98,74,-73.56,1,-73.44,1,-72.68,1,-71.43,1,-69.67,1,-67.22,1,-64.45,1,-61.19,1,-57.42,1,-53.14,1,-48.36,1,-42.89,1,-37.11,1,-30.82,1,-24.04,1,-16.56,1,-8.78,1,-0.51,1,7.5,1,15.02,1,22.04,1,28.57,1,34.61,1,40.34,1,45.38,1,50.11,1,54.15,1,57.89,1,60.94,1,63.67,1,65.91,1,67.47,1,68.71,1,69.46,1,69.68,1,54.98,11,},{0.1,74,3.96,2,3.97,1,3.99,1,4.02,1,4.05,1,4.09,1,4.14,1,4.2,1,4.26,1,4.33,1,4.41,1,4.5,1,4.6,1,4.7,1,4.81,1,4.93,1,5.06,1,4.88,1,4.72,1,4.56,1,4.42,1,4.28,1,4.16,1,4.05,1,3.95,1,3.86,1,3.78,1,3.71,1,3.65,1,3.61,1,3.57,1,3.54,1,3.53,2,0.1,11,},{0.28,74,5.36,1,5.35,16,5.36,1,5.35,16,5.36,1,0.28,11,},{1,120,},{0,120,},{0,120,},{0,120,}},2)
	du:setLogicParent(referUI_.instance249,referUI_)
	du:setBlendToDisplay(referUI_.instance249,"add")
	referUI_.pic_mask_1= cc.Sprite:create("battle_bar_2.png")
	referUI_.pic_mask_1.name="pic_mask_1"
	mcControl:getInstance():addMcObjectToContainer(referUI_.pic_mask_1,container_,0.50,1.00,1,120,{{0,120,},{117,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},3)
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

function p_bar_shine_1:setSpecial(referUI_)
end

return p_bar_shine_1