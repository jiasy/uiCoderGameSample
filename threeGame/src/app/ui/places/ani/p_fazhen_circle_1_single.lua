local p_fazhen_circle_1_single = {}

function p_fazhen_circle_1_single:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=24
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance215= cc.Sprite:create("three_battle_fazhen_in1.png")
	referUI_.instance215.name="instance215"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance215,container_,0.00,1.00,1,24,{{0,24,},{0,24,},{-45,24,},{1,2,1.02,1,1.04,1,1.07,1,1.1,1,1.14,1,1.17,1,1.19,1,1.2,2,1.19,1,1.18,1,1.17,1,1.16,1,1.14,1,1.12,1,1.09,1,1.07,1,1.05,1,1.03,1,1.01,1,1,2,},{1,2,1.02,1,1.04,1,1.07,1,1.1,1,1.14,1,1.17,1,1.19,1,1.2,2,1.19,1,1.18,1,1.17,1,1.16,1,1.14,1,1.12,1,1.09,1,1.07,1,1.05,1,1.03,1,1.01,1,1,2,},{1,24,},{0,24,},{0,24,},{0,24,}},1)
	du:setLogicParent(referUI_.instance215,referUI_)
	du:setBlendToDisplay(referUI_.instance215,"add")
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_fazhen_circle_1_single:setSpecial(referUI_)
end

return p_fazhen_circle_1_single