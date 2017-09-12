local p_circle_round_shine_circle = {}

function p_circle_round_shine_circle:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=120
	local t=referUI_
	--Frame names and frame actions-----------------------------------------
	referUI_.frameNames[2]="start"
	
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance194= cc.Sprite:create("battle_shineCircle.png")
	referUI_.instance194.name="instance194"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance194,container_,0.50,0.50,1,120,{{0,120,},{-1.5,93,-1.45,1,-1.5,26,},{0,120,},{0.03,70,0.18,1,0.32,1,0.46,1,0.6,1,0.72,1,0.84,1,0.96,1,1.07,1,1.18,1,1.28,1,1.37,1,1.46,1,1.55,1,1.63,1,1.7,1,1.77,1,1.83,1,1.89,1,1.94,1,1.99,1,2.03,1,2.06,1,2.09,1,2.12,1,2.14,1,2.15,1,2.16,2,0.03,22,},{0.03,70,0.18,1,0.32,1,0.46,1,0.6,1,0.72,1,0.84,1,0.96,1,1.07,1,1.18,1,1.28,1,1.37,1,1.46,1,1.55,1,1.63,1,1.7,1,1.77,1,1.83,1,1.89,1,1.94,1,1.99,1,2.03,1,2.06,1,2.09,1,2.12,1,2.14,1,2.15,1,2.16,2,0.03,22,},{1,120,},{0,120,},{0,120,},{0,120,}},1)
	du:setLogicParent(referUI_.instance194,referUI_)
	du:setBlendToDisplay(referUI_.instance194,"add")
	referUI_.instance196= cc.Sprite:create("battle_shineCircle.png")
	referUI_.instance196.name="instance196"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance196,container_,0.50,0.50,1,120,{{0,120,},{-1.5,120,},{0,120,},{0.03,76,0.24,1,0.43,1,0.62,1,0.8,1,0.96,1,1.12,1,1.26,1,1.39,1,1.52,1,1.63,1,1.73,1,1.82,1,1.9,1,1.97,1,2.03,1,2.07,1,2.11,1,2.14,1,2.15,1,2.16,1,0.03,24,},{0.03,76,0.24,1,0.43,1,0.62,1,0.8,1,0.96,1,1.12,1,1.26,1,1.39,1,1.52,1,1.63,1,1.73,1,1.82,1,1.9,1,1.97,1,2.03,1,2.07,1,2.11,1,2.14,1,2.15,1,2.16,1,0.03,24,},{1,120,},{0,120,},{0,120,},{0,120,}},2)
	du:setLogicParent(referUI_.instance196,referUI_)
	du:setBlendToDisplay(referUI_.instance196,"add")
	referUI_.pic_mask_= cc.Sprite:create("battle_circle_add.png")
	referUI_.pic_mask_.name="pic_mask_"
	mcControl:getInstance():addMcObjectToContainer(referUI_.pic_mask_,container_,0.50,0.50,1,120,{{2.5,120,},{0.05,120,},{0,120,},{0.77,120,},{0.76,120,},{1,120,},{0,120,},{0,120,},{0,120,}},3)
	du:setLogicParent(referUI_.pic_mask_,referUI_)
	local _pic_mask_Mask={}
	_pic_mask_Mask.stencil=referUI_.pic_mask_
	_pic_mask_Mask.maskNumber=99999
	table.insert(_maskInfos,_pic_mask_Mask)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_circle_round_shine_circle:setSpecial(referUI_)
end

return p_circle_round_shine_circle