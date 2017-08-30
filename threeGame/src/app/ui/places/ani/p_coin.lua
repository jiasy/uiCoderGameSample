local p_coin = {}

function p_coin:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=12
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance205= cc.Sprite:create("spriteSheets_icon_1.png")
	referUI_.instance205.name="instance205"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance205,container_,0.50,0.50,1,3,{{0,3,},{0,3,},{0,3,},{1,3,},{1,3,},{1,3,},{0,3,},{0,3,},{0,3,}},4)
	du:setLogicParent(referUI_.instance205,referUI_)
	referUI_.instance599= cc.Sprite:create("spriteSheets_icon_2.png")
	referUI_.instance599.name="instance599"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance599,container_,0.50,0.50,4,5,{{0,2,},{0,2,},{0,2,},{1,2,},{1,2,},{1,2,},{0,2,},{0,2,},{0,2,}},3)
	du:setLogicParent(referUI_.instance599,referUI_)
	referUI_.instance602= cc.Sprite:create("spriteSheets_icon_3.png")
	referUI_.instance602.name="instance602"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance602,container_,0.50,0.50,7,9,{{0,3,},{0,3,},{0,3,},{1,3,},{1,3,},{1,3,},{0,3,},{0,3,},{0,3,}},2)
	du:setLogicParent(referUI_.instance602,referUI_)
	referUI_.instance605= cc.Sprite:create("spriteSheets_icon_4.png")
	referUI_.instance605.name="instance605"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance605,container_,0.50,0.50,10,12,{{0,3,},{0,3,},{0,3,},{1,3,},{1,3,},{1,3,},{0,3,},{0,3,},{0,3,}},1)
	du:setLogicParent(referUI_.instance605,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_coin:setSpecial(referUI_)
end

return p_coin