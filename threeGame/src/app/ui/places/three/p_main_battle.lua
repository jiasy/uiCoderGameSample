--imports----------------------------------------------------------
local C_circle_round_shine = require("src.app.ui.controls.ani.c_circle_round_shine")
local C_main_battle_fazhen = require("src.app.ui.controls.three.c_main_battle_fazhen")
local C_main_battle_shadow = require("src.app.ui.controls.three.c_main_battle_shadow")
local C_main_battle_bar = require("src.app.ui.controls.three.c_main_battle_bar")
local C_main_battle_blockCount = require("src.app.ui.controls.three.c_main_battle_blockCount")

local uiState=require("src.app.base.ui.uiState")
local p_main_battle = {}

function p_main_battle:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.bg=C_circle_round_shine.new();
	referUI_.bg.name="bg"
	du:placeAndAddChildToContainer(referUI_.bg,container_,0.00,0.00,0,200,0,1,0.5,1,1)
	table.insert(referUI_.uiList,referUI_.bg)
	du:setLogicParent(referUI_.bg,referUI_)
	referUI_.fazhen=C_main_battle_fazhen.new();
	referUI_.fazhen.name="fazhen"
	du:placeAndAddChildToContainer(referUI_.fazhen,container_,0.00,0.00,0,200,0,1,0.5,1,2)
	table.insert(referUI_.uiList,referUI_.fazhen)
	du:setLogicParent(referUI_.fazhen,referUI_)
	referUI_.shadow=C_main_battle_shadow.new();
	referUI_.shadow.name="shadow"
	du:placeAndAddChildToContainer(referUI_.shadow,container_,0.00,0.00,0,0,0,1,1,1,5)
	table.insert(referUI_.uiList,referUI_.shadow)
	du:setLogicParent(referUI_.shadow,referUI_)
	referUI_.bar=C_main_battle_bar.new();
	referUI_.bar.name="bar"
	du:placeAndAddChildToContainer(referUI_.bar,container_,0.00,0.00,0,145.65,0,1,1,1,7)
	table.insert(referUI_.uiList,referUI_.bar)
	du:setLogicParent(referUI_.bar,referUI_)
	referUI_.blockCount2=C_main_battle_blockCount.new();
	referUI_.blockCount2.name="blockCount2"
	du:placeAndAddChildToContainer(referUI_.blockCount2,container_,0.00,0.00,-79.3,412.6,0,1,1,1,8)
	table.insert(referUI_.uiList,referUI_.blockCount2)
	du:setLogicParent(referUI_.blockCount2,referUI_)
	referUI_.blockCount3=C_main_battle_blockCount.new();
	referUI_.blockCount3.name="blockCount3"
	du:placeAndAddChildToContainer(referUI_.blockCount3,container_,0.00,0.00,0.7,412.6,0,1,1,1,9)
	table.insert(referUI_.uiList,referUI_.blockCount3)
	du:setLogicParent(referUI_.blockCount3,referUI_)
	referUI_.blockCount4=C_main_battle_blockCount.new();
	referUI_.blockCount4.name="blockCount4"
	du:placeAndAddChildToContainer(referUI_.blockCount4,container_,0.00,0.00,80.7,412.6,0,1,1,1,10)
	table.insert(referUI_.uiList,referUI_.blockCount4)
	du:setLogicParent(referUI_.blockCount4,referUI_)
	referUI_.blockCount5=C_main_battle_blockCount.new();
	referUI_.blockCount5.name="blockCount5"
	du:placeAndAddChildToContainer(referUI_.blockCount5,container_,0.00,0.00,160.7,412.6,0,1,1,1,11)
	table.insert(referUI_.uiList,referUI_.blockCount5)
	du:setLogicParent(referUI_.blockCount5,referUI_)
	referUI_.blockCount6=C_main_battle_blockCount.new();
	referUI_.blockCount6.name="blockCount6"
	du:placeAndAddChildToContainer(referUI_.blockCount6,container_,0.00,0.00,-406.7,723.9,0,1,1,1,12)
	table.insert(referUI_.uiList,referUI_.blockCount6)
	du:setLogicParent(referUI_.blockCount6,referUI_)
	referUI_.blockCount8=C_main_battle_blockCount.new();
	referUI_.blockCount8.name="blockCount8"
	du:placeAndAddChildToContainer(referUI_.blockCount8,container_,0.00,0.00,-295.1,723.9,0,1,1,1,13)
	table.insert(referUI_.uiList,referUI_.blockCount8)
	du:setLogicParent(referUI_.blockCount8,referUI_)
	referUI_.blockCount9=C_main_battle_blockCount.new();
	referUI_.blockCount9.name="blockCount9"
	du:placeAndAddChildToContainer(referUI_.blockCount9,container_,0.00,0.00,-239.3,723.9,0,1,1,1,14)
	table.insert(referUI_.uiList,referUI_.blockCount9)
	du:setLogicParent(referUI_.blockCount9,referUI_)
	referUI_.blockCount10=C_main_battle_blockCount.new();
	referUI_.blockCount10.name="blockCount10"
	du:placeAndAddChildToContainer(referUI_.blockCount10,container_,0.00,0.00,-183.5,723.9,0,1,1,1,15)
	table.insert(referUI_.uiList,referUI_.blockCount10)
	du:setLogicParent(referUI_.blockCount10,referUI_)
	referUI_.blockCount11=C_main_battle_blockCount.new();
	referUI_.blockCount11.name="blockCount11"
	du:placeAndAddChildToContainer(referUI_.blockCount11,container_,0.00,0.00,274.15,403.75,0,1,1,1,16)
	table.insert(referUI_.uiList,referUI_.blockCount11)
	du:setLogicParent(referUI_.blockCount11,referUI_)
	referUI_.blockCount7=C_main_battle_blockCount.new();
	referUI_.blockCount7.name="blockCount7"
	du:placeAndAddChildToContainer(referUI_.blockCount7,container_,0.00,0.00,-350.9,723.9,0,1,1,1,17)
	table.insert(referUI_.uiList,referUI_.blockCount7)
	du:setLogicParent(referUI_.blockCount7,referUI_)
	referUI_.blockCount1=C_main_battle_blockCount.new();
	referUI_.blockCount1.name="blockCount1"
	du:placeAndAddChildToContainer(referUI_.blockCount1,container_,0.00,0.00,-159.3,412.6,0,1,1,1,18)
	table.insert(referUI_.uiList,referUI_.blockCount1)
	du:setLogicParent(referUI_.blockCount1,referUI_)
	referUI_.scoreTxt=cc.Label:createWithBMFont(lu:tansFnt("three_battle_score.fnt"),lu:tansWord("score:1"))
	referUI_.scoreTxt.name="scoreTxt"
	du:placeAndAddChildToContainer(referUI_.scoreTxt,container_,0.50,0.50,0,382.9,0,1,1,1,3)
	referUI_.scoreTxt.isFntText=true
	du:setLogicParent(referUI_.scoreTxt,referUI_)
	referUI_.roundTxt=cc.Label:createWithBMFont(lu:tansFnt("three_battle_score.fnt"),lu:tansWord("score:1"))
	referUI_.roundTxt.name="roundTxt"
	du:placeAndAddChildToContainer(referUI_.roundTxt,container_,0.50,0.50,0,111,0,1,1,1,4)
	referUI_.roundTxt.isFntText=true
	du:setLogicParent(referUI_.roundTxt,referUI_)
	referUI_.bg_mask_= cc.Sprite:create("bg_ballarea_up.png")
	referUI_.bg_mask_.name="bg_mask_"
	du:placeAndAddChildToContainer(referUI_.bg_mask_,container_,0.50,0.50,0,320,0,1,1,1,6)
	du:setLogicParent(referUI_.bg_mask_,referUI_)
	local _bg_mask_Mask={}
	_bg_mask_Mask.stencil=referUI_.bg_mask_
	_bg_mask_Mask.maskNumber=99999
	table.insert(_maskInfos,_bg_mask_Mask)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_main_battle:setSpecial(referUI_)
end

return p_main_battle