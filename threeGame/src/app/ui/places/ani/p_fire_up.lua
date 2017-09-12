local p_fire_up = {}

function p_fire_up:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=16
	local t=referUI_
	--Frame names and frame actions-----------------------------------------
	referUI_.frameNames[1]="self"
	referUI_.frameNames[16]="remove"
	
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance229= cc.Sprite:create("blockBlueFireSeq1.png")
	referUI_.instance229.name="instance229"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance229,container_,0.50,0.50,1,2,{{3,2,},{118.5,2,},{0,2,},{1,2,},{2.08,2,},{1,2,},{0,2,},{0,2,},{0,2,}},8)
	du:setLogicParent(referUI_.instance229,referUI_)
	du:setBlendToDisplay(referUI_.instance229,"add")
	referUI_.instance838= cc.Sprite:create("blockBlueFireSeq2.png")
	referUI_.instance838.name="instance838"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance838,container_,0.50,0.50,3,4,{{3,2,},{118.5,2,},{0,2,},{1,2,},{2.08,2,},{1,2,},{0,2,},{0,2,},{0,2,}},7)
	du:setLogicParent(referUI_.instance838,referUI_)
	du:setBlendToDisplay(referUI_.instance838,"add")
	referUI_.instance841= cc.Sprite:create("blockBlueFireSeq3.png")
	referUI_.instance841.name="instance841"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance841,container_,0.50,0.50,5,6,{{3,2,},{118.5,2,},{0,2,},{1,2,},{2.08,2,},{1,2,},{0,2,},{0,2,},{0,2,}},6)
	du:setLogicParent(referUI_.instance841,referUI_)
	du:setBlendToDisplay(referUI_.instance841,"add")
	referUI_.instance844= cc.Sprite:create("blockBlueFireSeq4.png")
	referUI_.instance844.name="instance844"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance844,container_,0.50,0.50,7,8,{{3,2,},{118.5,2,},{0,2,},{1,2,},{2.08,2,},{1,2,},{0,2,},{0,2,},{0,2,}},5)
	du:setLogicParent(referUI_.instance844,referUI_)
	du:setBlendToDisplay(referUI_.instance844,"add")
	referUI_.instance847= cc.Sprite:create("blockBlueFireSeq5.png")
	referUI_.instance847.name="instance847"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance847,container_,0.50,0.50,9,10,{{3,2,},{118.5,2,},{0,2,},{1,2,},{2.08,2,},{1,2,},{0,2,},{0,2,},{0,2,}},4)
	du:setLogicParent(referUI_.instance847,referUI_)
	du:setBlendToDisplay(referUI_.instance847,"add")
	referUI_.instance850= cc.Sprite:create("blockBlueFireSeq6.png")
	referUI_.instance850.name="instance850"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance850,container_,0.50,0.50,11,12,{{3,2,},{118.5,2,},{0,2,},{1,2,},{2.08,2,},{1,2,},{0,2,},{0,2,},{0,2,}},3)
	du:setLogicParent(referUI_.instance850,referUI_)
	du:setBlendToDisplay(referUI_.instance850,"add")
	referUI_.instance853= cc.Sprite:create("blockBlueFireSeq7.png")
	referUI_.instance853.name="instance853"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance853,container_,0.50,0.50,13,14,{{3,2,},{118.5,2,},{0,2,},{1,2,},{2.08,2,},{1,2,},{0,2,},{0,2,},{0,2,}},2)
	du:setLogicParent(referUI_.instance853,referUI_)
	du:setBlendToDisplay(referUI_.instance853,"add")
	referUI_.instance856= cc.Sprite:create("blockBlueFireSeq8.png")
	referUI_.instance856.name="instance856"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance856,container_,0.50,0.50,15,16,{{3,2,},{118.5,2,},{0,2,},{1,2,},{2.08,2,},{1,2,},{0,2,},{0,2,},{0,2,}},1)
	du:setLogicParent(referUI_.instance856,referUI_)
	du:setBlendToDisplay(referUI_.instance856,"add")
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_fire_up:setSpecial(referUI_)
end

return p_fire_up