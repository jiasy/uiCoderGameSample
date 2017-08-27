local p_ani_coin = {}

function p_ani_coin:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=12
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance174= cc.Sprite:create("spriteSheets_icon_1.png")
	referUI_.instance174.name="instance174"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance174,container_,0.50,0.50,1,3,{{0,3,},{0,3,},{0,3,},{1,3,},{1,3,},{1,3,},{0,3,},{0,3,},{0,3,}},4)
	du:setLogicParent(referUI_.instance174,referUI_)
	referUI_.instance530= cc.Sprite:create("spriteSheets_icon_2.png")
	referUI_.instance530.name="instance530"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance530,container_,0.50,0.50,4,5,{{0,2,},{0,2,},{0,2,},{1,2,},{1,2,},{1,2,},{0,2,},{0,2,},{0,2,}},3)
	du:setLogicParent(referUI_.instance530,referUI_)
	referUI_.instance533= cc.Sprite:create("spriteSheets_icon_3.png")
	referUI_.instance533.name="instance533"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance533,container_,0.50,0.50,7,9,{{0,3,},{0,3,},{0,3,},{1,3,},{1,3,},{1,3,},{0,3,},{0,3,},{0,3,}},2)
	du:setLogicParent(referUI_.instance533,referUI_)
	referUI_.instance536= cc.Sprite:create("spriteSheets_icon_4.png")
	referUI_.instance536.name="instance536"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance536,container_,0.50,0.50,10,12,{{0,3,},{0,3,},{0,3,},{1,3,},{1,3,},{1,3,},{0,3,},{0,3,},{0,3,}},1)
	du:setLogicParent(referUI_.instance536,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_ani_coin:setSpecial(referUI_)
end

return p_ani_coin