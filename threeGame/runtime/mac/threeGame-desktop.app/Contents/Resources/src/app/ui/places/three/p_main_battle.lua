--imports----------------------------------------------------------
local C_main_battle_blockCount = require("src.app.ui.controls.three.c_main_battle_blockCount")

local uiState=require("src.app.base.ui.uiState")
local p_main_battle = {}

function p_main_battle:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.blockCount2=C_main_battle_blockCount.new();
	referUI_.blockCount2.name="blockCount2"
	du:placeAndAddChildToContainer(referUI_.blockCount2,container_,0.00,0.00,-125.5,281.75,0,1,1,1,3)
	table.insert(referUI_.uiList,referUI_.blockCount2)
	du:setLogicParent(referUI_.blockCount2,referUI_)
	referUI_.blockCount3=C_main_battle_blockCount.new();
	referUI_.blockCount3.name="blockCount3"
	du:placeAndAddChildToContainer(referUI_.blockCount3,container_,0.00,0.00,-0.05,370.9,0,1,1,1,4)
	table.insert(referUI_.uiList,referUI_.blockCount3)
	du:setLogicParent(referUI_.blockCount3,referUI_)
	referUI_.blockCount4=C_main_battle_blockCount.new();
	referUI_.blockCount4.name="blockCount4"
	du:placeAndAddChildToContainer(referUI_.blockCount4,container_,0.00,0.00,128.4,281.75,0,1,1,1,5)
	table.insert(referUI_.uiList,referUI_.blockCount4)
	du:setLogicParent(referUI_.blockCount4,referUI_)
	referUI_.blockCount5=C_main_battle_blockCount.new();
	referUI_.blockCount5.name="blockCount5"
	du:placeAndAddChildToContainer(referUI_.blockCount5,container_,0.00,0.00,78.95,135.9,0,1,1,1,6)
	table.insert(referUI_.uiList,referUI_.blockCount5)
	du:setLogicParent(referUI_.blockCount5,referUI_)
	referUI_.blockCount6=C_main_battle_blockCount.new();
	referUI_.blockCount6.name="blockCount6"
	du:placeAndAddChildToContainer(referUI_.blockCount6,container_,0.00,0.00,-107.7,513.9,0,1,1,1,7)
	table.insert(referUI_.uiList,referUI_.blockCount6)
	du:setLogicParent(referUI_.blockCount6,referUI_)
	referUI_.blockCount8=C_main_battle_blockCount.new();
	referUI_.blockCount8.name="blockCount8"
	du:placeAndAddChildToContainer(referUI_.blockCount8,container_,0.00,0.00,3.9,513.9,0,1,1,1,8)
	table.insert(referUI_.uiList,referUI_.blockCount8)
	du:setLogicParent(referUI_.blockCount8,referUI_)
	referUI_.blockCount9=C_main_battle_blockCount.new();
	referUI_.blockCount9.name="blockCount9"
	du:placeAndAddChildToContainer(referUI_.blockCount9,container_,0.00,0.00,59.7,513.9,0,1,1,1,9)
	table.insert(referUI_.uiList,referUI_.blockCount9)
	du:setLogicParent(referUI_.blockCount9,referUI_)
	referUI_.blockCount10=C_main_battle_blockCount.new();
	referUI_.blockCount10.name="blockCount10"
	du:placeAndAddChildToContainer(referUI_.blockCount10,container_,0.00,0.00,115.5,513.9,0,1,1,1,10)
	table.insert(referUI_.uiList,referUI_.blockCount10)
	du:setLogicParent(referUI_.blockCount10,referUI_)
	referUI_.blockCount11=C_main_battle_blockCount.new();
	referUI_.blockCount11.name="blockCount11"
	du:placeAndAddChildToContainer(referUI_.blockCount11,container_,0.00,0.00,-0.05,246.9,0,1,1,1,11)
	table.insert(referUI_.uiList,referUI_.blockCount11)
	du:setLogicParent(referUI_.blockCount11,referUI_)
	referUI_.blockCount7=C_main_battle_blockCount.new();
	referUI_.blockCount7.name="blockCount7"
	du:placeAndAddChildToContainer(referUI_.blockCount7,container_,0.00,0.00,-51.9,513.9,0,1,1,1,12)
	table.insert(referUI_.uiList,referUI_.blockCount7)
	du:setLogicParent(referUI_.blockCount7,referUI_)
	referUI_.blockCount1=C_main_battle_blockCount.new();
	referUI_.blockCount1.name="blockCount1"
	du:placeAndAddChildToContainer(referUI_.blockCount1,container_,0.00,0.00,-73.95,135.9,0,1,1,1,13)
	table.insert(referUI_.uiList,referUI_.blockCount1)
	du:setLogicParent(referUI_.blockCount1,referUI_)
	referUI_.instance94= cc.Sprite:create("map11.png")
	referUI_.instance94.name="instance94"
	du:placeAndAddChildToContainer(referUI_.instance94,container_,0.50,0.00,0,0,0,0.56,0.56,1,1)
	du:setLogicParent(referUI_.instance94,referUI_)
	referUI_.instance96= cc.Sprite:create("three_battle_five.png")
	referUI_.instance96.name="instance96"
	du:placeAndAddChildToContainer(referUI_.instance96,container_,0.50,0.50,0,254.6,0,1,1,1,2)
	du:setLogicParent(referUI_.instance96,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_main_battle:setSpecial(referUI_)
end

return p_main_battle