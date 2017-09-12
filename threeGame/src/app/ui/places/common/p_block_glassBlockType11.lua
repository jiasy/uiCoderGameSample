local p_block_glassBlockType11 = {}

function p_block_glassBlockType11:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=40
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.blockPic= cc.Sprite:create("glassBlock_six.png")
	referUI_.blockPic.name="blockPic"
	mcControl:getInstance():addMcObjectToContainer(referUI_.blockPic,container_,0.50,0.50,1,40,{{0,40,},{0,1,-0.25,1,-0.45,1,-0.6,1,-0.75,1,-0.9,1,-1,1,-1.05,1,-1.1,3,-1.05,1,-1,1,-0.9,1,-0.85,1,-0.7,1,-0.55,1,-0.4,1,-0.2,1,0,1,0.2,1,0.4,1,0.55,1,0.7,1,0.8,1,0.9,1,1,1,1.05,1,1.1,3,1.05,1,1,1,0.9,1,0.85,1,0.75,1,0.6,1,0.45,1,0.2,1,0,1,},{0,40,},{1,1,1.01,2,1.02,3,1.03,8,1.02,3,1.01,2,1,2,0.99,3,0.98,11,0.99,3,1,2,},{1,2,0.99,3,0.98,10,0.99,3,1,2,1.01,2,1.02,3,1.03,9,1.02,3,1.01,2,1,1,},{1,40,},{0,40,},{0,40,},{0,40,}},1)
	du:setLogicParent(referUI_.blockPic,referUI_)
	referUI_.instance460= cc.Sprite:create("three_three_block_special.png")
	referUI_.instance460.name="instance460"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance460,container_,0.50,0.50,1,40,{{0.45,4,0,36,},{-56,4,64.05,1,62.8,1,59.25,1,53.7,1,46.35,1,37.6,1,27.75,1,17.15,1,6.15,1,-4.9,1,-15.65,1,-25.8,1,-35.05,1,-43.1,1,-49.7,1,-54.6,1,-57.7,1,-58.75,1,-55.35,18,},{0,40,},{1,4,1.4,18,1,18,},{1,4,1.4,18,1,18,},{1,40,},{0,40,},{0,40,},{0,40,}},2)
	du:setLogicParent(referUI_.instance460,referUI_)
	du:setBlendToDisplay(referUI_.instance460,"add")
	referUI_.instance462= cc.Sprite:create("three_three_block_special.png")
	referUI_.instance462.name="instance462"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance462,container_,0.50,0.50,1,40,{{0.45,10,0,30,},{-56,10,64.05,1,63.25,1,60.85,1,57.1,1,52.1,1,45.95,1,38.9,1,31.1,1,22.75,1,14,1,5.1,1,-3.85,1,-12.65,1,-21.1,1,-29,1,-36.25,1,-42.75,1,-48.25,1,-52.7,1,-56,1,-58.05,1,-58.75,1,-55.35,8,},{0,40,},{1,10,1.4,22,1,8,},{1,10,1.4,22,1,8,},{1,40,},{0,40,},{0,40,},{0,40,}},3)
	du:setLogicParent(referUI_.instance462,referUI_)
	du:setBlendToDisplay(referUI_.instance462,"add")
	referUI_.pic_mask_2= cc.Sprite:create("glassBlock_six.png")
	referUI_.pic_mask_2.name="pic_mask_2"
	mcControl:getInstance():addMcObjectToContainer(referUI_.pic_mask_2,container_,0.50,0.50,1,40,{{0,40,},{0.35,1,0.2,1,0.05,1,-0.05,1,-0.15,1,-0.2,1,-0.25,1,-0.3,1,-0.35,3,-0.3,2,-0.25,1,-0.2,1,-0.1,1,0,1,0.1,1,0.2,1,0.35,1,0.5,1,0.6,1,0.75,1,0.85,1,0.9,1,1,1,1.05,2,1.1,3,1.05,2,1,1,0.9,1,0.85,1,0.8,1,0.65,1,0.5,1,0.35,1,},{0,40,},{0.64,2,0.65,3,0.66,9,0.65,4,0.64,4,0.63,15,0.64,3,},{0.64,2,0.63,15,0.64,4,0.65,4,0.66,9,0.65,4,0.64,2,},{1,40,},{0,40,},{0,40,},{0,40,}},4)
	du:setLogicParent(referUI_.pic_mask_2,referUI_)
	local _pic_mask_2Mask={}
	_pic_mask_2Mask.stencil=referUI_.pic_mask_2
	_pic_mask_2Mask.maskNumber=2
	table.insert(_maskInfos,_pic_mask_2Mask)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_block_glassBlockType11:setSpecial(referUI_)
end

return p_block_glassBlockType11