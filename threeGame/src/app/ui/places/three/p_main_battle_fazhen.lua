--imports----------------------------------------------------------
local C_fazhen_circle_1 = require("src.app.ui.controls.ani.c_fazhen_circle_1")
local C_circle_shine = require("src.app.ui.controls.ani.c_circle_shine")

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
	referUI_.circle1=C_fazhen_circle_1.new();
	referUI_.circle1.name="circle1"
	mcControl:getInstance():addMcObjectToContainer(referUI_.circle1,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},1)
	table.insert(referUI_.uiList,referUI_.circle1)
	du:setLogicParent(referUI_.circle1,referUI_)
	referUI_.instance201=C_circle_shine.new();
	referUI_.instance201.name="instance201"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance201,container_,0.00,0.00,1,1,{{0,1,},{0,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},7)
	table.insert(referUI_.uiList,referUI_.instance201)
	du:setLogicParent(referUI_.instance201,referUI_)
	referUI_.star= cc.Sprite:create("three_battle_start.png")
	referUI_.star.name="star"
	mcControl:getInstance():addMcObjectToContainer(referUI_.star,container_,0.50,0.50,1,1,{{0,1,},{0,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},2)
	du:setLogicParent(referUI_.star,referUI_)
	du:setBlendToDisplay(referUI_.star,"multiply")
	referUI_.circle= cc.Sprite:create("three_battle_cricle.png")
	referUI_.circle.name="circle"
	mcControl:getInstance():addMcObjectToContainer(referUI_.circle,container_,0.50,0.50,1,1,{{0,1,},{0,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},3)
	du:setLogicParent(referUI_.circle,referUI_)
	referUI_.fazhen= cc.Sprite:create("three_battle_fa_5.png")
	referUI_.fazhen.name="fazhen"
	mcControl:getInstance():addMcObjectToContainer(referUI_.fazhen,container_,0.50,0.50,1,1,{{0,1,},{0,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},4)
	du:setLogicParent(referUI_.fazhen,referUI_)
	referUI_.target= cc.Sprite:create("three_battle_targetPo.png")
	referUI_.target.name="target"
	mcControl:getInstance():addMcObjectToContainer(referUI_.target,container_,0.50,0.50,1,1,{{0,1,},{0,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},5)
	du:setLogicParent(referUI_.target,referUI_)
	referUI_.circle_mask_= cc.Sprite:create("blackCircle.png")
	referUI_.circle_mask_.name="circle_mask_"
	mcControl:getInstance():addMcObjectToContainer(referUI_.circle_mask_,container_,0.50,0.50,1,1,{{0,1,},{0,1,},{0,1,},{3.24,1,},{3.24,1,},{1,1,},{0,1,},{0,1,},{0,1,}},6)
	du:setLogicParent(referUI_.circle_mask_,referUI_)
	local _circle_mask_Mask={}
	_circle_mask_Mask.stencil=referUI_.circle_mask_
	_circle_mask_Mask.maskNumber=99999
	table.insert(_maskInfos,_circle_mask_Mask)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_main_battle_fazhen:setSpecial(referUI_)
end

return p_main_battle_fazhen