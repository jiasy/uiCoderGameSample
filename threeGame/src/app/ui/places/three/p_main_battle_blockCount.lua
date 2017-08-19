local p_main_battle_blockCount = {}

function p_main_battle_blockCount:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=15
	local t=referUI_
	--Frame names and frame actions-----------------------------------------
	referUI_.frameNames[1]="s_"
	
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.colorShow= cc.Sprite:create("icon_ball_1.png")
	referUI_.colorShow.name="colorShow"
	mcControl:getInstance():addMcObjectToContainer(referUI_.colorShow,container_,0.50,0.50,1,15,{{0,15,},{-27,1,-31.2,1,-34.9,1,-38.1,1,-40.85,1,-43.05,1,-44.8,1,-46,1,-46.75,1,-47,1,-46.2,1,-43.8,1,-39.8,1,-34.2,1,-27,1,},{0,15,},{0.5,1,0.6,1,0.7,1,0.78,1,0.85,1,0.9,1,0.94,1,0.98,1,0.99,1,1,1,0.98,1,0.92,1,0.82,1,0.68,1,0.5,1,},{0.5,1,0.6,1,0.7,1,0.78,1,0.85,1,0.9,1,0.94,1,0.98,1,0.99,1,1,1,0.98,1,0.92,1,0.82,1,0.68,1,0.5,1,},{1,15,},{0,15,},{0,15,},{0,15,}},1)
	du:setLogicParent(referUI_.colorShow,referUI_)
	referUI_.instance149= cc.Sprite:create("icon_ball_special.png")
	referUI_.instance149.name="instance149"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance149,container_,0.50,0.50,1,15,{{0,15,},{0,15,},{0,15,},{0.52,1,0.6,1,0.68,1,0.76,1,0.84,1,0.92,1,1,1,1.12,1,1.22,1,1.3,1,1.38,1,1.43,1,1.47,1,1.49,1,1.5,1,},{0.52,1,0.6,1,0.68,1,0.76,1,0.84,1,0.92,1,1,1,1.12,1,1.22,1,1.3,1,1.38,1,1.43,1,1.47,1,1.49,1,1.5,1,},{0,1,0.17,1,0.33,1,0.5,1,0.67,1,0.83,1,1,1,0.84,1,0.7,1,0.57,1,0.48,1,0.4,1,0.34,1,0.31,1,0.3,1,},{0,15,},{0,15,},{0,15,}},2)
	du:setLogicParent(referUI_.instance149,referUI_)
	referUI_.instance151= cc.Sprite:create("btnUp.png")
	referUI_.instance151.name="instance151"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance151,container_,0.50,0.50,1,15,{{0,15,},{0,15,},{0,1,3.54,1,14.56,1,33.07,1,58.89,1,91.77,1,132.15,1,180,1,-132.59,1,-92.27,1,-59.44,1,-33.84,1,-15.54,1,-4.54,1,-1,1,},{1,1,0.99,1,0.97,1,0.94,1,0.9,1,0.84,1,0.77,1,0.69,1,0.77,1,0.84,1,0.9,1,0.94,1,0.97,1,0.99,1,1,1,},{1,1,1.01,1,1.04,1,1.08,1,1.15,1,1.23,1,1.33,1,1.45,1,1.33,1,1.23,1,1.15,1,1.08,1,1.04,1,1.01,1,1,1,},{1,15,},{0,15,},{0,15,},{0,15,}},3)
	du:setLogicParent(referUI_.instance151,referUI_)
	du.ttfConfig.fontSize = 20
	du.ttfConfig.outlineSize = 0 
	referUI_.count=cc.Label:createWithTTF(du.ttfConfig, lu:tansWord("0"), cc.TEXT_ALIGNMENT_CENTER)
	referUI_.count.name="count"
	referUI_.count:setString("count")
	du:textSet(referUI_.count,255,255,255,nil,27.85)
	mcControl:getInstance():addMcObjectToContainer(referUI_.count,container_,0.50,0.50,1,15,{{0,15,},{0,5,-0.05,3,0,7,},{0,15,},{1,1,1.02,1,1.08,1,1.18,1,1.33,1,1.51,1,1.73,1,2,1,1.73,1,1.51,1,1.33,1,1.18,1,1.08,1,1.02,1,1,1,},{1,1,1.02,1,1.08,1,1.18,1,1.33,1,1.51,1,1.73,1,2,1,1.73,1,1.51,1,1.33,1,1.18,1,1.08,1,1.02,1,1,1,},{1,15,},{0,15,},{0,15,},{0,15,}},4)
	referUI_.count.isText=true
	du:setLogicParent(referUI_.count,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_main_battle_blockCount:setSpecial(referUI_)
end

return p_main_battle_blockCount