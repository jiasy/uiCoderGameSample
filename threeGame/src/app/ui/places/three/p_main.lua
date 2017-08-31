--imports----------------------------------------------------------
local C_main_yuzhou = require("src.app.ui.controls.three.c_main_yuzhou")
local C_main_three = require("src.app.ui.controls.three.c_main_three")
local C_main_battle = require("src.app.ui.controls.three.c_main_battle")
local C_main_up = require("src.app.ui.controls.three.c_main_up")
local C_level_contorl = require("src.app.ui.controls.debug.c_level_contorl")

local uiState=require("src.app.base.ui.uiState")
local p_main = {}

function p_main:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.yuzhou=C_main_yuzhou.new();
	referUI_.yuzhou.name="yuzhou"
	du:placeAndAddChildToContainer(referUI_.yuzhou,container_,0.00,0.00,0,734.95,0,1,1,1,2)
	table.insert(referUI_.uiList,referUI_.yuzhou)
	du:setLogicParent(referUI_.yuzhou,referUI_)
	referUI_.three=C_main_three.new();
	referUI_.three.name="three"
	du:placeAndAddChildToContainer(referUI_.three,container_,0.00,0.00,0,0,0,1,1,1,4)
	table.insert(referUI_.uiList,referUI_.three)
	du:setLogicParent(referUI_.three,referUI_)
	referUI_.battle=C_main_battle.new();
	referUI_.battle.name="battle"
	du:placeAndAddChildToContainer(referUI_.battle,container_,0.00,0.00,0,575,0,1,1,1,5)
	table.insert(referUI_.uiList,referUI_.battle)
	du:setLogicParent(referUI_.battle,referUI_)
	referUI_.up=C_main_up.new();
	referUI_.up.name="up"
	du:placeAndAddChildToContainer(referUI_.up,container_,0.00,0.00,0,1136,0,1,1,1,6)
	table.insert(referUI_.uiList,referUI_.up)
	du:setLogicParent(referUI_.up,referUI_)
	referUI_.debug=C_level_contorl.new();
	referUI_.debug.name="debug"
	du:placeAndAddChildToContainer(referUI_.debug,container_,0.00,0.00,0,20,0,1,1,1,7)
	table.insert(referUI_.uiList,referUI_.debug)
	du:setLogicParent(referUI_.debug,referUI_)
	referUI_.instance3= cc.Sprite:create("battle_bg_yuzhou_1.png")
	referUI_.instance3.name="instance3"
	du:placeAndAddChildToContainer(referUI_.instance3,container_,0.50,0.00,0,760,0,1,1,1,1)
	du:setLogicParent(referUI_.instance3,referUI_)
	referUI_.instance14= cc.Sprite:create("map11.png")
	referUI_.instance14.name="instance14"
	du:placeAndAddChildToContainer(referUI_.instance14,container_,0.50,0.00,0,660,0,0.67,0.67,1,3)
	du:setLogicParent(referUI_.instance14,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_main:setSpecial(referUI_)
	-----special keys----------------------------------------------------------
    referUI_.alignMode='B'
    
end

return p_main