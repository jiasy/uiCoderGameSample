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
	referUI_.instance401= cc.Sprite:create("battle_yuyi_3.png")
	referUI_.instance401.name="instance401"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance401,container_,0.50,0.50,1,120,{{0,120,},{0,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	du:setLogicParent(referUI_.instance401,referUI_)
	referUI_.instance403= cc.Sprite:create("battle_shine.png")
	referUI_.instance403.name="instance403"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance403,container_,0.50,0.50,1,120,{{-9.3,85,76.65,1,69.45,1,62.5,1,55.75,1,49.2,1,42.85,1,36.75,1,30.85,1,25.15,1,19.7,1,14.45,1,9.4,1,4.55,1,-0.05,1,-4.45,1,-8.65,1,-12.6,1,-16.35,1,-19.9,1,-23.2,1,-26.35,1,-29.2,1,-31.9,1,-34.35,1,-36.6,1,-38.65,1,-40.5,1,-42.1,1,-43.5,1,-44.65,1,-45.65,1,-46.4,1,-46.9,1,-47.25,1,-47.35,1,},{147.55,85,-127.6,1,-113,1,-98.95,1,-85.35,1,-72.15,1,-59.4,1,-47.05,1,-35.15,1,-23.7,1,-12.7,1,-2.1,1,8.05,1,17.8,1,27.1,1,35.95,1,44.4,1,52.4,1,59.95,1,67.1,1,73.8,1,80.05,1,85.9,1,91.3,1,96.3,1,100.85,1,104.95,1,108.6,1,111.85,1,114.65,1,117.05,1,119,1,120.5,1,121.6,1,122.25,1,122.35,1,},{60.6,86,60.67,33,60.6,1,},{0.1,85,1.03,35,},{0.1,85,1,35,},{1,120,},{0,120,},{0,120,},{0,120,}},2)
	du:setLogicParent(referUI_.instance403,referUI_)
	du:setBlendToDisplay(referUI_.instance403,"add")
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