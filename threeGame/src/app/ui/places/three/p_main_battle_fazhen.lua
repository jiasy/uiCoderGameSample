local p_main_battle_fazhen = {}

function p_main_battle_fazhen:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=1
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.circle= cc.Sprite:create("three_battle_cricle.png")
	referUI_.circle.name="circle"
	mcControl:getInstance():addMcObjectToContainer(referUI_.circle,container_,0.50,0.50,1,1,{{0,1,},{0,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},1)
	du:setLogicParent(referUI_.circle,referUI_)
	referUI_.fazhen= cc.Sprite:create("three_battle_fa_5.png")
	referUI_.fazhen.name="fazhen"
	mcControl:getInstance():addMcObjectToContainer(referUI_.fazhen,container_,0.50,0.50,1,1,{{0,1,},{0,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},2)
	du:setLogicParent(referUI_.fazhen,referUI_)
	referUI_.target= cc.Sprite:create("three_battle_targetPo.png")
	referUI_.target.name="target"
	mcControl:getInstance():addMcObjectToContainer(referUI_.target,container_,0.50,0.50,1,1,{{0,1,},{0,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},3)
	du:setLogicParent(referUI_.target,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_main_battle_fazhen:setSpecial(referUI_)
end

return p_main_battle_fazhen