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
	referUI_.instance379= cc.Sprite:create("battle_genjing_6.png")
	referUI_.instance379.name="instance379"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance379,container_,0.50,0.50,1,120,{{-100,120,},{40,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	du:setLogicParent(referUI_.instance379,referUI_)
	referUI_.instance381= cc.Sprite:create("battle_shine.png")
	referUI_.instance381.name="instance381"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance381,container_,0.50,0.50,1,120,{{-223.35,85,88.4,1,78.85,1,69.2,1,59.55,1,49.9,1,40.2,1,30.55,1,20.9,1,11.35,1,1.65,1,-8,1,-17.65,1,-27.3,1,-37,1,-46.6,1,-56.25,1,-65.85,1,-75.5,1,-85.2,1,-94.75,1,-104.5,1,-114.2,1,-123.85,1,-133.45,1,-143.2,1,-152.75,1,-162.45,1,-172,1,-181.7,1,-191.35,1,-201,1,-210.65,1,-220.35,1,-229.95,1,-239.95,1,},{192.45,85,-68.55,1,-62.05,1,-55.65,1,-49.25,1,-42.85,1,-36.45,1,-30.05,1,-23.6,1,-17.15,1,-10.7,1,-4.3,1,2.1,1,8.5,1,14.95,1,21.35,1,27.8,1,34.2,1,40.6,1,47,1,53.5,1,59.9,1,66.35,1,72.7,1,79.2,1,85.6,1,92,1,98.45,1,104.8,1,111.3,1,117.7,1,124.1,1,130.5,1,136.95,1,143.3,1,149.9,1,},{25.38,86,25.32,33,25.38,1,},{0.1,85,1.46,1,1.45,1,1.43,1,1.42,1,1.41,1,1.4,1,1.38,1,1.37,1,1.36,1,1.35,1,1.33,1,1.32,1,1.31,1,1.3,1,1.28,1,1.27,1,1.26,1,1.25,1,1.23,1,1.22,1,1.21,1,1.19,1,1.18,1,1.17,1,1.16,1,1.14,1,1.13,2,1.11,1,1.09,1,1.08,1,1.07,1,1.06,1,1.04,1,1.03,1,},{0.1,85,1.34,1,1.33,1,1.32,1,1.31,1,1.3,1,1.29,1,1.28,1,1.27,1,1.26,1,1.25,1,1.24,1,1.23,1,1.22,1,1.21,1,1.2,1,1.19,1,1.18,1,1.17,1,1.16,1,1.15,1,1.14,1,1.13,2,1.11,1,1.1,1,1.09,1,1.08,1,1.07,1,1.06,1,1.05,1,1.04,1,1.03,1,1.02,1,1.01,1,1,1,},{1,120,},{0,120,},{0,120,},{0,120,}},2)
	du:setLogicParent(referUI_.instance381,referUI_)
	du:setBlendToDisplay(referUI_.instance381,"add")
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