local p_block_glassBlock = {}

function p_block_glassBlock:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=40
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.blockPic= cc.Sprite:create("glassBlock_greenB.png")
	referUI_.blockPic.name="blockPic"
	mcControl:getInstance():addMcObjectToContainer(referUI_.blockPic,container_,0.50,0.50,1,40,{{0,40,},{0,1,-0.25,1,-0.45,1,-0.6,1,-0.75,1,-0.9,1,-1,1,-1.05,1,-1.1,3,-1.05,1,-1,1,-0.9,1,-0.85,1,-0.7,1,-0.55,1,-0.4,1,-0.2,1,0,1,0.2,1,0.4,1,0.55,1,0.7,1,0.8,1,0.9,1,1,1,1.05,1,1.1,3,1.05,1,1,1,0.9,1,0.85,1,0.75,1,0.6,1,0.45,1,0.2,1,0,1,},{0,40,},{1,1,1.01,2,1.02,3,1.03,8,1.02,3,1.01,2,1,2,0.99,3,0.98,11,0.99,3,1,2,},{1,2,0.99,3,0.98,10,0.99,3,1,2,1.01,2,1.02,3,1.03,9,1.02,3,1.01,2,1,1,},{1,40,},{0,40,},{0,40,},{0,40,}},1)
	du:setLogicParent(referUI_.blockPic,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_block_glassBlock:setSpecial(referUI_)
end

return p_block_glassBlock