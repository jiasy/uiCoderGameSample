--imports----------------------------------------------------------
local C_circle_round_shine_circle = require("src.app.ui.controls.ani.c_circle_round_shine_circle")

local p_circle_round_shine = {}

function p_circle_round_shine:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=100
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.circleShine=C_circle_round_shine_circle.new();
	referUI_.circleShine.name="circleShine"
	mcControl:getInstance():addMcObjectToContainer(referUI_.circleShine,container_,0.00,0.00,1,100,{{0,100,},{0,100,},{0,100,},{1,100,},{1,100,},{1,100,},{0,100,},{0,100,},{0,100,}},4)
	table.insert(referUI_.uiList,referUI_.circleShine)
	du:setLogicParent(referUI_.circleShine,referUI_)
	referUI_.bg= cc.Sprite:create("battle_ground.png")
	referUI_.bg.name="bg"
	mcControl:getInstance():addMcObjectToContainer(referUI_.bg,container_,0.50,0.50,1,100,{{0,100,},{0,100,},{0,100,},{1,100,},{1,100,},{1,100,},{0,100,},{0,100,},{0,100,}},1)
	du:setLogicParent(referUI_.bg,referUI_)
	referUI_.instance181= cc.Sprite:create("battle_stand_ground.png")
	referUI_.instance181.name="instance181"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance181,container_,0.50,0.50,1,100,{{0,100,},{0,100,},{0,100,},{1.08,100,},{1.08,100,},{1,100,},{0,100,},{0,100,},{0,100,}},2)
	du:setLogicParent(referUI_.instance181,referUI_)
	referUI_.instance183= cc.Sprite:create("battle_circle_add.png")
	referUI_.instance183.name="instance183"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance183,container_,0.50,0.50,1,100,{{0,100,},{0,100,},{0,1,3.53,1,7.26,1,10.8,1,14.52,1,18.06,1,21.79,1,25.34,1,29.07,1,32.61,1,36.34,1,40.08,1,43.62,1,47.36,1,50.9,1,54.64,1,58.18,1,61.91,1,65.46,1,69.19,1,72.73,1,76.46,1,80.18,1,83.72,1,87.44,1,90.79,1,94.51,1,98.05,1,101.77,1,105.31,1,109.04,1,112.58,1,116.31,1,119.86,1,123.59,1,127.32,1,130.87,1,134.6,1,138.15,1,141.88,1,145.43,1,149.16,1,152.7,1,156.43,1,159.98,1,163.71,1,167.43,1,170.97,1,174.7,1,178.23,1,-178.23,1,-174.7,1,-170.97,1,-167.43,1,-163.71,1,-159.98,1,-156.44,1,-152.7,1,-149.16,1,-145.43,1,-141.88,1,-138.15,1,-134.6,1,-130.87,1,-127.32,1,-123.59,1,-119.86,1,-116.31,1,-112.58,1,-109.04,1,-105.31,1,-101.77,1,-98.05,1,-94.51,1,-90.79,1,-87.44,1,-83.72,1,-80.18,1,-76.46,1,-72.73,1,-69.19,1,-65.46,1,-61.91,1,-58.18,1,-54.64,1,-50.9,1,-47.36,1,-43.62,1,-40.08,1,-36.35,1,-32.61,1,-29.07,1,-25.34,1,-21.79,1,-18.06,1,-14.52,1,-10.8,1,-7.26,1,-3.53,1,0,1,},{0.77,11,0.78,17,0.79,19,0.8,20,0.81,18,0.82,15,},{0.76,8,0.77,17,0.78,20,0.79,20,0.8,19,0.81,16,},{1,100,},{0,100,},{0,100,},{0,100,}},3)
	du:setLogicParent(referUI_.instance183,referUI_)
	du:setBlendToDisplay(referUI_.instance183,"multiply")
	referUI_.s1= cc.Sprite:create("battle_shineCicle_round.png")
	referUI_.s1.name="s1"
	mcControl:getInstance():addMcObjectToContainer(referUI_.s1,container_,0.50,0.00,1,100,{{0,100,},{0,100,},{0,100,},{1,100,},{1,100,},{1,100,},{0,100,},{0,100,},{0,100,}},5)
	du:setLogicParent(referUI_.s1,referUI_)
	du:setBlendToDisplay(referUI_.s1,"add")
	referUI_.s2= cc.Sprite:create("battle_shineCicle_round.png")
	referUI_.s2.name="s2"
	mcControl:getInstance():addMcObjectToContainer(referUI_.s2,container_,0.50,0.00,1,100,{{2,100,},{-3.5,100,},{180,100,},{1,100,},{1,100,},{1,100,},{0,100,},{0,100,},{0,100,}},6)
	du:setLogicParent(referUI_.s2,referUI_)
	du:setBlendToDisplay(referUI_.s2,"add")
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_circle_round_shine:setSpecial(referUI_)
end

return p_circle_round_shine