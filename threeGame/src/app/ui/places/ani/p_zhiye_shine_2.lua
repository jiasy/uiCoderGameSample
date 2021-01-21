local p_zhiye_shine_2 = {}

function p_zhiye_shine_2:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=120
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance423= cc.Sprite:create("battle_genjing_6.png")
	referUI_.instance423.name="instance423"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance423,container_,0.50,0.50,1,120,{{-100,120,},{40,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	du:setLogicParent(referUI_.instance423,referUI_)
	referUI_.instance425= cc.Sprite:create("battle_shine.png")
	referUI_.instance425.name="instance425"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance425,container_,0.50,0.50,1,120,{{-223.35,85,88.4,1,78.85,1,69.25,1,59.55,1,49.95,1,40.25,1,30.65,1,20.95,1,11.35,1,1.7,1,-7.9,1,-17.6,1,-27.25,1,-36.9,1,-46.55,1,-56.15,1,-65.85,1,-75.45,1,-85.15,1,-94.75,1,-104.45,1,-114.05,1,-123.75,1,-133.35,1,-143.05,1,-152.65,1,-162.35,1,-171.95,1,-181.65,1,-191.25,1,-201,1,-210.55,1,-220.25,1,-229.85,1,-239.95,1,},{192.45,85,-68.55,1,-62.1,1,-55.65,1,-49.25,1,-42.85,1,-36.45,1,-30,1,-23.6,1,-17.15,1,-10.7,1,-4.35,1,2.1,1,8.45,1,14.9,1,21.35,1,27.75,1,34.15,1,40.6,1,47,1,53.4,1,59.9,1,66.3,1,72.7,1,79.1,1,85.55,1,91.95,1,98.35,1,104.8,1,111.2,1,117.65,1,124.1,1,130.5,1,136.85,1,143.35,1,149.9,1,},{25.38,86,25.32,33,25.38,1,},{0.1,85,1.46,1,1.45,1,1.43,1,1.42,1,1.41,1,1.4,1,1.38,1,1.37,1,1.36,1,1.35,1,1.33,1,1.32,1,1.31,1,1.3,1,1.28,1,1.27,1,1.26,1,1.25,1,1.23,1,1.22,1,1.21,1,1.19,1,1.18,1,1.17,1,1.16,1,1.14,1,1.13,2,1.11,1,1.09,1,1.08,1,1.07,1,1.06,1,1.04,1,1.03,1,},{0.1,85,1.34,1,1.33,1,1.32,1,1.31,1,1.3,1,1.29,1,1.28,1,1.27,1,1.26,1,1.25,1,1.24,1,1.23,1,1.22,1,1.21,1,1.2,1,1.19,1,1.18,1,1.17,1,1.16,1,1.15,1,1.14,1,1.13,2,1.11,1,1.1,1,1.09,1,1.08,1,1.07,1,1.06,1,1.05,1,1.04,1,1.03,1,1.02,1,1.01,1,1,1,},{1,120,},{0,120,},{0,120,},{0,120,}},2)
	du:setLogicParent(referUI_.instance425,referUI_)
	du:setBlendToDisplay(referUI_.instance425,"add")
	referUI_.pic_mask_1= cc.Sprite:create("battle_genjing_6.png")
	referUI_.pic_mask_1.name="pic_mask_1"
	mcControl:getInstance():addMcObjectToContainer(referUI_.pic_mask_1,container_,0.50,0.50,1,120,{{-97,120,},{50,120,},{4.22,120,},{0.9,120,},{0.73,120,},{1,120,},{0,120,},{0,120,},{0,120,}},3)
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

function p_zhiye_shine_2:setSpecial(referUI_)
end

return p_zhiye_shine_2