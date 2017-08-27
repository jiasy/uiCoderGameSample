local p_sprieSheet_fire_around = {}

function p_sprieSheet_fire_around:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=14
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.a1= cc.Sprite:create("fireSqu1.png")
	referUI_.a1.name="a1"
	mcControl:getInstance():addMcObjectToContainer(referUI_.a1,container_,0.50,0.50,1,2,{{0,2,},{0,2,},{0,2,},{1,2,},{1,2,},{1,2,},{0,2,},{0,2,},{0,2,}},7)
	du:setLogicParent(referUI_.a1,referUI_)
	du:setBlendToDisplay(referUI_.a1,"add")
	referUI_.a2= cc.Sprite:create("fireSqu2.png")
	referUI_.a2.name="a2"
	mcControl:getInstance():addMcObjectToContainer(referUI_.a2,container_,0.50,0.50,3,4,{{0,2,},{0,2,},{0,2,},{1,2,},{1,2,},{1,2,},{0,2,},{0,2,},{0,2,}},6)
	du:setLogicParent(referUI_.a2,referUI_)
	du:setBlendToDisplay(referUI_.a2,"add")
	referUI_.a3= cc.Sprite:create("fireSqu3.png")
	referUI_.a3.name="a3"
	mcControl:getInstance():addMcObjectToContainer(referUI_.a3,container_,0.50,0.50,5,6,{{0,2,},{0,2,},{0,2,},{1,2,},{1,2,},{1,2,},{0,2,},{0,2,},{0,2,}},5)
	du:setLogicParent(referUI_.a3,referUI_)
	du:setBlendToDisplay(referUI_.a3,"add")
	referUI_.instance533= cc.Sprite:create("fireSqu4.png")
	referUI_.instance533.name="instance533"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance533,container_,0.50,0.50,7,8,{{0,2,},{0,2,},{0,2,},{1,2,},{1,2,},{1,2,},{0,2,},{0,2,},{0,2,}},4)
	du:setLogicParent(referUI_.instance533,referUI_)
	du:setBlendToDisplay(referUI_.instance533,"add")
	referUI_.instance536= cc.Sprite:create("fireSqu5.png")
	referUI_.instance536.name="instance536"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance536,container_,0.50,0.50,9,10,{{0,2,},{0,2,},{0,2,},{1,2,},{1,2,},{1,2,},{0,2,},{0,2,},{0,2,}},3)
	du:setLogicParent(referUI_.instance536,referUI_)
	du:setBlendToDisplay(referUI_.instance536,"add")
	referUI_.instance539= cc.Sprite:create("fireSqu6.png")
	referUI_.instance539.name="instance539"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance539,container_,0.50,0.50,11,12,{{0,2,},{0,2,},{0,2,},{1,2,},{1,2,},{1,2,},{0,2,},{0,2,},{0,2,}},2)
	du:setLogicParent(referUI_.instance539,referUI_)
	du:setBlendToDisplay(referUI_.instance539,"add")
	referUI_.instance542= cc.Sprite:create("fireSqu7.png")
	referUI_.instance542.name="instance542"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance542,container_,0.50,0.50,13,14,{{0,2,},{0,2,},{0,2,},{1,2,},{1,2,},{1,2,},{0,2,},{0,2,},{0,2,}},1)
	du:setLogicParent(referUI_.instance542,referUI_)
	du:setBlendToDisplay(referUI_.instance542,"add")
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_sprieSheet_fire_around:setSpecial(referUI_)
end

return p_sprieSheet_fire_around