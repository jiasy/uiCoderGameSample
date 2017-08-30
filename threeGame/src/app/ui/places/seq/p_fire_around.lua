local p_fire_around = {}

function p_fire_around:initPlace(referUI_,container_)
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
	referUI_.instance625= cc.Sprite:create("fireSqu4.png")
	referUI_.instance625.name="instance625"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance625,container_,0.50,0.50,7,8,{{0,2,},{0,2,},{0,2,},{1,2,},{1,2,},{1,2,},{0,2,},{0,2,},{0,2,}},4)
	du:setLogicParent(referUI_.instance625,referUI_)
	du:setBlendToDisplay(referUI_.instance625,"add")
	referUI_.instance628= cc.Sprite:create("fireSqu5.png")
	referUI_.instance628.name="instance628"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance628,container_,0.50,0.50,9,10,{{0,2,},{0,2,},{0,2,},{1,2,},{1,2,},{1,2,},{0,2,},{0,2,},{0,2,}},3)
	du:setLogicParent(referUI_.instance628,referUI_)
	du:setBlendToDisplay(referUI_.instance628,"add")
	referUI_.instance631= cc.Sprite:create("fireSqu6.png")
	referUI_.instance631.name="instance631"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance631,container_,0.50,0.50,11,12,{{0,2,},{0,2,},{0,2,},{1,2,},{1,2,},{1,2,},{0,2,},{0,2,},{0,2,}},2)
	du:setLogicParent(referUI_.instance631,referUI_)
	du:setBlendToDisplay(referUI_.instance631,"add")
	referUI_.instance634= cc.Sprite:create("fireSqu7.png")
	referUI_.instance634.name="instance634"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance634,container_,0.50,0.50,13,14,{{0,2,},{0,2,},{0,2,},{1,2,},{1,2,},{1,2,},{0,2,},{0,2,},{0,2,}},1)
	du:setLogicParent(referUI_.instance634,referUI_)
	du:setBlendToDisplay(referUI_.instance634,"add")
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_fire_around:setSpecial(referUI_)
end

return p_fire_around