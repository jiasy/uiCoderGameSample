local p_zhiye_shine_3 = {}

function p_zhiye_shine_3:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=120
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance417= cc.Sprite:create("battle_yuyi_3.png")
	referUI_.instance417.name="instance417"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance417,container_,0.50,0.50,1,120,{{0,120,},{0,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	du:setLogicParent(referUI_.instance417,referUI_)
	referUI_.instance419= cc.Sprite:create("battle_shine.png")
	referUI_.instance419.name="instance419"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance419,container_,0.50,0.50,1,120,{{-9.3,85,76.65,1,69.5,1,62.55,1,55.8,1,49.25,1,42.9,1,36.8,1,30.9,1,25.2,1,19.75,1,14.5,1,9.45,1,4.6,1,0,1,-4.35,1,-8.55,1,-12.5,1,-16.25,1,-19.8,1,-23.1,1,-26.25,1,-29.1,1,-31.8,1,-34.25,1,-36.5,1,-38.55,1,-40.4,1,-42,1,-43.4,1,-44.55,1,-45.55,1,-46.3,1,-46.8,1,-47.15,1,-47.35,1,},{147.55,85,-127.6,1,-113,1,-98.95,1,-85.35,1,-72.15,1,-59.4,1,-47.05,1,-35.15,1,-23.7,1,-12.7,1,-2.1,1,8,1,17.75,1,27.05,1,35.9,1,44.35,1,52.35,1,59.9,1,67.05,1,73.75,1,80,1,85.85,1,91.25,1,96.25,1,100.8,1,104.9,1,108.55,1,111.8,1,114.6,1,117,1,118.95,1,120.45,1,121.55,1,122.2,1,122.35,1,},{60.6,86,60.67,33,60.6,1,},{0.1,85,1.03,35,},{0.1,85,1,35,},{1,120,},{0,120,},{0,120,},{0,120,}},2)
	du:setLogicParent(referUI_.instance419,referUI_)
	du:setBlendToDisplay(referUI_.instance419,"add")
	referUI_.pic_mask_1= cc.Sprite:create("battle_yuyi_3.png")
	referUI_.pic_mask_1.name="pic_mask_1"
	mcControl:getInstance():addMcObjectToContainer(referUI_.pic_mask_1,container_,0.50,0.50,1,120,{{4.65,120,},{1.55,120,},{0,120,},{0.81,120,},{0.81,120,},{1,120,},{0,120,},{0,120,},{0,120,}},3)
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

function p_zhiye_shine_3:setSpecial(referUI_)
end

return p_zhiye_shine_3