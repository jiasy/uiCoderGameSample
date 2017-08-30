local p_circle_shine = {}

function p_circle_shine:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=120
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance202= cc.Sprite:create("battle_centerCircle.png")
	referUI_.instance202.name="instance202"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance202,container_,0.50,0.50,1,120,{{0,120,},{0,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	du:setLogicParent(referUI_.instance202,referUI_)
	referUI_.instance204= cc.Sprite:create("battle_shineCircle.png")
	referUI_.instance204.name="instance204"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance204,container_,0.50,0.50,1,120,{{0,120,},{-129.05,84,-128.85,1,-128.7,1,-128.65,1,-128.55,1,-128.45,1,-128.35,1,-128.25,1,-128.15,1,-128.1,1,-128,1,-127.95,1,-127.9,1,-127.75,2,-127.65,1,-127.6,1,-127.55,1,-127.45,2,-127.4,1,-127.35,1,-127.3,1,-127.25,2,-127.15,1,-127.1,3,-127.05,3,-127,5,},{0,120,},{0.04,84,0.41,1,0.61,1,0.81,1,1.01,1,1.2,1,1.38,1,1.56,1,1.73,1,1.89,1,2.05,1,2.2,1,2.35,1,2.49,1,2.62,1,2.75,1,2.88,1,2.99,1,3.1,1,3.21,1,3.31,1,3.4,1,3.49,1,3.57,1,3.64,1,3.71,1,3.77,1,3.83,1,3.88,1,3.93,1,3.96,1,4,1,4.02,1,4.05,2,4.07,2,},{0.04,84,0.41,1,0.61,1,0.81,1,1.01,1,1.2,1,1.38,1,1.56,1,1.73,1,1.89,1,2.05,1,2.2,1,2.35,1,2.49,1,2.62,1,2.75,1,2.88,1,2.99,1,3.1,1,3.21,1,3.31,1,3.4,1,3.49,1,3.57,1,3.64,1,3.71,1,3.77,1,3.83,1,3.88,1,3.93,1,3.96,1,4,1,4.02,1,4.05,2,4.07,2,},{1,120,},{0,120,},{0,120,},{0,120,}},2)
	du:setLogicParent(referUI_.instance204,referUI_)
	du:setBlendToDisplay(referUI_.instance204,"add")
	referUI_.pic_mask_1= cc.Sprite:create("battle_centerCircle.png")
	referUI_.pic_mask_1.name="pic_mask_1"
	mcControl:getInstance():addMcObjectToContainer(referUI_.pic_mask_1,container_,0.50,0.50,1,120,{{0,120,},{0,120,},{0,120,},{1,120,},{1,120,},{1,120,},{0,120,},{0,120,},{0,120,}},3)
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

function p_circle_shine:setSpecial(referUI_)
end

return p_circle_shine