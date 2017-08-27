local p_ani_block_tip = {}

function p_ani_block_tip:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=50
	local t=referUI_
	--Frame names and frame actions-----------------------------------------
	referUI_.frameNames[20]="idle"
	referUI_.frameNames[50]="gtp_idle"
	
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance174= cc.Sprite:create("icon_ball_special.png")
	referUI_.instance174.name="instance174"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance174,container_,0.50,0.50,1,12,{{0,12,},{0,12,},{0,12,},{1.91,1,1.76,1,1.61,1,1.48,1,1.37,1,1.27,1,1.19,1,1.12,1,1.07,1,1.03,1,1.01,1,1,1,},{1.91,1,1.76,1,1.61,1,1.48,1,1.37,1,1.27,1,1.19,1,1.12,1,1.07,1,1.03,1,1.01,1,1,1,},{1,12,},{0,12,},{0,12,},{0,12,}},1)
	du:setLogicParent(referUI_.instance174,referUI_)
	referUI_.instance530= cc.Sprite:create("icon_ball_special.png")
	referUI_.instance530.name="instance530"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance530,container_,0.50,0.50,4,15,{{0,12,},{0,12,},{0,12,},{2.25,1,2.03,1,1.84,1,1.66,1,1.51,1,1.37,1,1.26,1,1.17,1,1.09,1,1.04,1,1.01,1,1,1,},{2.25,1,2.03,1,1.84,1,1.66,1,1.51,1,1.37,1,1.26,1,1.17,1,1.09,1,1.04,1,1.01,1,1,1,},{1,12,},{0,12,},{0,12,},{0,12,}},2)
	du:setLogicParent(referUI_.instance530,referUI_)
	du:setBlendToDisplay(referUI_.instance530,"add")
	referUI_.instance533= cc.Sprite:create("icon_ball_special.png")
	referUI_.instance533.name="instance533"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance533,container_,0.50,0.50,6,17,{{0,12,},{0,12,},{0,12,},{1.89,1,1.74,1,1.6,1,1.47,1,1.36,1,1.26,1,1.18,1,1.12,1,1.07,1,1.03,1,1.01,1,1,1,},{1.89,1,1.74,1,1.6,1,1.47,1,1.36,1,1.26,1,1.18,1,1.12,1,1.07,1,1.03,1,1.01,1,1,1,},{1,12,},{0,12,},{0,12,},{0,12,}},3)
	du:setLogicParent(referUI_.instance533,referUI_)
	referUI_.instance536= cc.Sprite:create("icon_ball_special.png")
	referUI_.instance536.name="instance536"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance536,container_,0.50,0.50,8,50,{{0,43,},{0,43,},{0,43,},{1.5,1,1.41,1,1.33,1,1.26,1,1.2,1,1.15,1,1.1,1,1.07,1,1.04,1,1.02,1,1,4,1.01,2,1.03,1,1.04,1,1.06,1,1.09,1,1.12,1,1.15,1,1.18,1,1.21,1,1.24,1,1.26,1,1.27,3,1.26,2,1.24,1,1.23,1,1.21,1,1.18,1,1.15,1,1.12,1,1.09,1,1.06,1,1.03,1,1.02,1,1,2,},{1.5,1,1.41,1,1.33,1,1.26,1,1.2,1,1.15,1,1.1,1,1.07,1,1.04,1,1.02,1,1,4,1.01,2,1.03,1,1.04,1,1.06,1,1.09,1,1.12,1,1.15,1,1.18,1,1.21,1,1.24,1,1.26,1,1.27,3,1.26,2,1.24,1,1.23,1,1.21,1,1.18,1,1.15,1,1.12,1,1.09,1,1.06,1,1.03,1,1.02,1,1,2,},{1,1,0.96,1,0.93,1,0.91,1,0.88,1,0.86,1,0.84,1,0.83,1,0.82,1,0.81,1,0.8,33,},{0,43,},{0,43,},{0,43,}},4)
	du:setLogicParent(referUI_.instance536,referUI_)
	du:setBlendToDisplay(referUI_.instance536,"add")
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_ani_block_tip:setSpecial(referUI_)
end

return p_ani_block_tip