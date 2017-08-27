local p_block_mao = {}

function p_block_mao:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=109
	local t=referUI_
	--Frame names and frame actions-----------------------------------------
	referUI_.frameNames[40]="gtp_1"
	referUI_.frameNames[41]="idle1"
	referUI_.frameNames[75]="idle1End"
	referUI_.frameNames[76]="idle2"
	referUI_.frameNames[109]="idle2End"
	
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance181= cc.Sprite:create("icon_ball_5.png")
	referUI_.instance181.name="instance181"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance181,container_,0.50,0.50,1,40,{{0,40,},{0,1,-0.25,1,-0.45,1,-0.6,1,-0.75,1,-0.9,1,-1,1,-1.05,1,-1.1,3,-1.05,1,-1,1,-0.9,1,-0.85,1,-0.7,1,-0.55,1,-0.4,1,-0.2,1,0,1,0.2,1,0.4,1,0.55,1,0.7,1,0.8,1,0.9,1,1,1,1.05,1,1.1,3,1.05,1,1,1,0.9,1,0.85,1,0.75,1,0.6,1,0.45,1,0.2,1,0,1,},{0,40,},{1,1,1.01,2,1.02,3,1.03,8,1.02,3,1.01,2,1,2,0.99,3,0.98,11,0.99,3,1,2,},{1,2,0.99,3,0.98,10,0.99,3,1,2,1.01,2,1.02,3,1.03,9,1.02,3,1.01,2,1,1,},{1,40,},{0,40,},{0,40,},{0,40,}},3)
	du:setLogicParent(referUI_.instance181,referUI_)
	referUI_.tou= cc.Sprite:create("block_mao_tou.png")
	referUI_.tou.name="tou"
	mcControl:getInstance():addMcObjectToContainer(referUI_.tou,container_,0.50,0.50,41,109,{{0,49,1.35,1,2.35,1,3.1,1,3.55,1,3.7,1,3.55,1,3.05,1,2.35,1,1.35,1,0,1,-0.95,1,-1.7,1,-2.25,1,-2.55,1,-2.65,1,-2.55,1,-2.2,1,-1.7,1,-0.95,1,0,1,},{0,1,0.2,1,0.35,1,0.55,1,0.75,1,0.2,1,-0.4,1,-1,1,-1.6,1,-1.4,1,-1.2,1,-1,1,-0.8,1,-0.6,1,-0.4,1,-0.2,1,0,3,0.2,1,0.35,1,0.55,1,0.75,1,0.2,1,-0.4,1,-1,1,-1.6,1,-1.4,1,-1.2,1,-1,1,-0.8,1,-0.6,1,-0.4,1,-0.2,1,0,1,2.5,1,1.65,1,1.15,1,1,1,1.85,1,2.35,1,2.5,1,1.65,1,1.15,1,1,1,1.85,1,2.35,1,2.5,7,2.45,1,2.5,1,2.45,1,2.5,8,2.55,1,2.5,3,},{0,49,2.29,1,4.27,1,5.54,1,6.3,1,6.73,1,6.3,1,5.54,1,4.26,1,2.29,1,0,1,-1.28,1,-2.29,1,-3.04,1,-3.53,1,-3.75,1,-3.53,1,-3.04,1,-2.29,1,-1.28,1,0,1,},{1,1,0.99,1,0.98,1,0.96,1,0.95,1,0.97,1,0.98,1,1,1,1.02,1,1.01,5,1,5,0.99,1,0.98,1,0.96,1,0.95,1,0.97,1,0.98,1,1,1,1.02,1,1.01,5,1,3,0.94,1,0.99,1,1.02,2,0.98,1,0.95,1,0.94,1,0.99,1,1.02,2,0.98,1,0.95,1,0.94,22,},{1,1,1.01,1,1.02,1,1.03,1,1.04,1,1.03,1,1.02,1,1.01,1,0.99,3,1,8,1.01,1,1.02,1,1.03,1,1.04,1,1.03,1,1.02,1,1.01,1,0.99,3,1,6,1.11,1,1.08,1,1.07,1,1.06,1,1.09,1,1.11,2,1.08,1,1.07,1,1.06,1,1.09,1,1.11,23,},{1,69,},{0,69,},{0,69,},{0,69,}},1)
	du:setLogicParent(referUI_.tou,referUI_)
	referUI_.yan1= cc.Sprite:create("block_mao_yan1.png")
	referUI_.yan1.name="yan1"
	mcControl:getInstance():addMcObjectToContainer(referUI_.yan1,container_,0.50,0.50,41,109,{{-18.45,1,-17.8,1,-17.1,1,-16.5,1,-15.8,3,-15.85,1,-15.8,1,-16.1,1,-16.45,1,-16.8,1,-17.1,1,-17.4,1,-17.75,1,-18.1,1,-18.45,3,-17.8,1,-17.1,1,-16.5,1,-15.8,3,-15.85,1,-15.8,1,-16.1,1,-16.45,1,-16.8,1,-17.1,1,-17.4,1,-17.75,1,-18.1,1,-18.45,1,-16.15,5,-16.1,1,-16.15,5,-16.1,1,-16.15,2,-15.25,1,-14.55,1,-14.05,1,-13.75,1,-13.65,1,-13.8,1,-14.1,1,-14.6,1,-15.25,1,-16.15,1,-16.85,1,-17.35,1,-17.75,1,-17.95,1,-18.05,1,-18,1,-17.8,1,-17.3,1,-16.85,1,-16.15,1,},{-8.05,1,-7.15,1,-6.35,1,-5.45,1,-4.55,1,-5.8,1,-7.05,1,-8.2,1,-9.4,1,-9.25,1,-9.05,1,-8.9,1,-8.75,1,-8.55,1,-8.4,1,-8.25,1,-8.05,3,-7.15,1,-6.35,1,-5.45,1,-4.55,1,-5.8,1,-7.05,1,-8.2,1,-9.4,1,-9.25,1,-9.05,1,-8.9,1,-8.75,1,-8.55,1,-8.4,1,-8.25,1,-8.05,1,-5.55,2,-5.5,1,-5.55,1,-5.6,1,-5.5,1,-5.55,2,-5.5,1,-5.55,1,-5.6,1,-5.5,1,-5.55,2,-4.85,1,-4.3,1,-3.9,1,-3.7,1,-3.6,1,-3.7,1,-3.9,1,-4.25,1,-4.8,1,-5.55,1,-5.95,1,-6.2,1,-6.45,1,-6.55,1,-6.6,1,-6.55,1,-6.45,1,-6.2,1,-5.95,1,-5.55,1,},{0,1,4.06,1,8.31,1,12.56,1,16.94,1,13.51,1,10.03,1,6.54,1,3.24,1,2.77,1,2.29,1,2.01,1,1.53,1,1.05,1,0.77,1,0.29,1,0,3,4.06,1,8.31,1,12.56,1,16.94,1,13.51,1,10.03,1,6.54,1,3.24,1,2.77,1,2.29,1,2.01,1,1.53,1,1.05,1,0.77,1,0.29,1,0,2,15.82,1,25.55,1,28.75,1,12.77,1,3.05,1,0,1,15.82,1,25.55,1,28.75,1,12.77,1,3.05,1,0,2,2.29,1,4.26,1,5.54,1,6.3,1,6.73,1,6.3,1,5.54,1,4.26,1,2.29,1,0,1,-1.27,1,-2.29,1,-3.04,1,-3.52,1,-3.75,1,-3.52,1,-3.04,1,-2.29,1,-1.27,1,0,1,},{1,1,0.99,1,0.97,1,0.96,1,0.95,5,0.96,2,0.97,1,0.98,2,0.99,2,1,3,0.99,1,0.97,1,0.96,1,0.95,5,0.96,2,0.97,1,0.98,2,0.99,2,1,1,0.86,34,},{1,1,1.01,1,1.02,1,1.03,1,1.04,6,1.03,2,1.02,2,1.01,2,1,3,1.01,1,1.02,1,1.03,1,1.04,6,1.03,2,1.02,2,1.01,2,1,2,0.63,1,0.4,1,0.33,1,0.7,1,0.93,1,1,1,0.63,1,0.4,1,0.33,1,0.7,1,0.93,1,1,22,},{1,69,},{0,69,},{0,69,},{0,69,}},2)
	du:setLogicParent(referUI_.yan1,referUI_)
	referUI_.yan2= cc.Sprite:create("block_mao_yan2.png")
	referUI_.yan2.name="yan2"
	mcControl:getInstance():addMcObjectToContainer(referUI_.yan2,container_,0.42,0.70,41,109,{{12,1,11.6,1,11.25,1,10.8,1,10.4,1,10.45,1,10.4,3,10.55,1,10.8,1,11,1,11.15,1,11.4,1,11.6,1,11.75,1,12,3,11.6,1,11.25,1,10.8,1,10.4,1,10.45,1,10.4,3,10.55,1,10.8,1,11,1,11.15,1,11.4,1,11.6,1,11.75,1,12,1,10,14,10.75,1,11.4,1,11.8,1,12.05,1,12.15,1,12.05,1,11.8,1,11.4,1,10.7,1,10,1,9.35,1,8.8,1,8.45,1,8.2,1,8.15,1,8.2,1,8.45,1,8.85,1,9.4,1,10,1,},{-5.75,1,-5.1,1,-4.4,1,-3.75,1,-3.05,1,-4.25,1,-5.5,1,-6.7,1,-7.9,1,-7.7,1,-7.4,1,-7.15,1,-6.95,1,-6.65,1,-6.3,1,-6,1,-5.75,3,-5.1,1,-4.4,1,-3.75,1,-3.05,1,-4.25,1,-5.5,1,-6.7,1,-7.9,1,-7.7,1,-7.4,1,-7.15,1,-6.95,1,-6.65,1,-6.3,1,-6,1,-5.75,1,-3.25,4,-3.3,1,-3.2,1,-3.25,4,-3.3,1,-3.2,1,-3.25,2,-3.65,1,-3.95,1,-4.15,1,-4.3,1,-4.35,1,-4.25,1,-4.15,1,-3.95,1,-3.65,1,-3.25,1,-3,1,-2.8,1,-2.65,1,-2.6,1,-2.55,1,-2.6,2,-2.75,1,-3,1,-3.25,1,},{0,1,-4.06,1,-8.31,1,-12.56,1,-16.96,1,-12.8,1,-8.78,1,-4.76,1,-0.71,1,-0.53,1,-0.51,1,-0.3,1,-0.28,1,-0.25,1,-0.05,1,-0.02,1,0,3,-4.06,1,-8.31,1,-12.56,1,-16.96,1,-12.8,1,-8.78,1,-4.76,1,-0.71,1,-0.53,1,-0.51,1,-0.3,1,-0.28,1,-0.25,1,-0.05,1,-0.02,1,0,2,-9.52,1,-15.28,1,-17.22,1,-7.54,1,-1.79,1,0,1,-9.52,1,-15.28,1,-17.22,1,-7.54,1,-1.79,1,0,2,2.29,1,4.26,1,5.54,1,6.3,1,6.73,1,6.3,1,5.54,1,4.26,1,2.29,1,0,1,-1.27,1,-2.29,1,-3.04,1,-3.52,1,-3.75,1,-3.52,1,-3.04,1,-2.29,1,-1.27,1,0,1,},{1,1,0.99,1,0.97,1,0.96,1,0.95,5,0.96,2,0.97,1,0.98,2,0.99,2,1,3,0.99,1,0.97,1,0.96,1,0.95,5,0.96,2,0.97,1,0.98,2,0.99,2,1,1,0.86,34,},{1,1,1.01,1,1.02,1,1.03,1,1.04,6,1.03,2,1.02,2,1.01,2,1,3,1.01,1,1.02,1,1.03,1,1.04,6,1.03,2,1.02,2,1.01,2,1,2,0.58,1,0.34,1,0.25,1,0.67,1,0.92,1,1,1,0.58,1,0.34,1,0.25,1,0.67,1,0.92,1,1,22,},{1,69,},{0,69,},{0,69,},{0,69,}},4)
	du:setLogicParent(referUI_.yan2,referUI_)
	referUI_.ye= cc.Sprite:create("block_mao_ye.png")
	referUI_.ye.name="ye"
	mcControl:getInstance():addMcObjectToContainer(referUI_.ye,container_,0.40,0.64,41,109,{{-4.85,1,-3.25,1,-1.7,1,-0.1,1,1.45,1,1,1,0.55,1,0,1,-0.4,1,-0.85,1,-1.3,1,-1.85,1,-2.25,1,-2.9,1,-3.5,1,-4.15,1,-4.85,3,-3.25,1,-1.7,1,-0.1,1,1.45,1,1,1,0.55,1,0,1,-0.4,1,-0.85,1,-1.3,1,-1.85,1,-2.25,1,-2.9,1,-3.5,1,-4.15,1,-4.85,1,-2.45,4,-2.5,1,-2.45,5,-2.5,1,-2.45,3,-1.55,1,-0.7,1,0.2,1,1.05,1,1.95,1,1.05,1,0.25,1,-0.75,1,-1.6,1,-2.45,1,-3,1,-3.7,1,-4.3,1,-4.9,1,-5.55,1,-4.95,1,-4.35,1,-3.65,1,-3,1,-2.45,1,},{3.65,1,7.1,1,10.6,1,14,1,17.55,1,16.45,1,15.25,1,14.15,1,13.1,1,12.15,1,11.1,1,10.05,1,9,1,7.6,1,6.3,1,4.95,1,3.65,3,7.1,1,10.6,1,14,1,17.55,1,16.45,1,15.25,1,14.15,1,13.1,1,12.15,1,11.1,1,10.05,1,9,1,7.6,1,6.3,1,4.95,1,3.65,1,8.45,1,7.5,1,6.9,1,6.7,1,7.7,1,8.25,1,8.45,1,7.5,1,6.9,1,6.7,1,7.7,1,8.25,1,8.45,2,8.5,1,8.55,1,8.6,1,8.65,1,8.7,1,8.65,1,8.55,1,8.5,2,8.45,3,8.35,1,8.3,2,8.4,1,8.35,1,8.45,1,8.5,1,8.45,1,},{0,1,-18.32,1,-36.85,1,-55.39,1,-73.73,1,-90.54,1,-107.53,1,-124.37,1,-141.39,1,-172.44,1,156.94,1,125.87,1,95.12,1,71.44,1,47.62,1,23.79,1,0,3,-18.32,1,-36.85,1,-55.39,1,-73.73,1,-90.54,1,-107.53,1,-124.37,1,-141.39,1,-172.44,1,156.94,1,125.87,1,95.12,1,71.44,1,47.62,1,23.79,1,0,2,17.03,1,27.31,1,30.73,1,13.55,1,3.29,1,0,1,17.03,1,27.31,1,30.73,1,13.55,1,3.29,1,0,2,9.54,1,19.28,1,28.84,1,38.59,1,48.22,1,64.94,1,81.7,1,98.06,1,114.82,1,131.55,1,149.45,1,167.47,1,-174.72,1,-156.71,1,-138.77,1,-111.03,1,-83.44,1,-55.63,1,-27.79,1,0,1,},{1,1,0.99,1,0.97,1,0.96,1,0.95,5,0.96,3,0.97,1,0.98,2,0.99,1,1,3,0.99,1,0.97,1,0.96,1,0.95,5,0.96,3,0.97,1,0.98,2,0.99,1,1,35,},{1,1,1.01,1,1.02,1,1.03,1,1.04,6,1.03,2,1.02,2,1.01,1,1,4,1.01,1,1.02,1,1.03,1,1.04,6,1.03,2,1.02,2,1.01,1,1,36,},{1,69,},{0,69,},{0,69,},{0,69,}},5)
	du:setLogicParent(referUI_.ye,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_block_mao:setSpecial(referUI_)
end

return p_block_mao