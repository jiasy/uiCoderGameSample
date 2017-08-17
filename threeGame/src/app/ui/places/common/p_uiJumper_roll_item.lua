--imports----------------------------------------------------------
local C_testUIBtn = require("src.app.ui.controls.uiBtn.c_testUIBtn")

local uiState=require("src.app.base.ui.uiState")
local p_uiJumper_roll_item = {}

function p_uiJumper_roll_item:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.testBtn=C_testUIBtn.new();
	referUI_.testBtn.name="testBtn"
	du:placeAndAddChildToContainer(referUI_.testBtn,container_,0.00,0.00,41.8,-21.15,0,0.8,0.8,1,2)
	table.insert(referUI_.disBaseList,referUI_.testBtn)
	table.insert(referUI_.uiBtnList,referUI_.testBtn)
	du:setLogicParent(referUI_.testBtn,referUI_)
	referUI_.instance211= cc.Sprite:create("blade.png")
	referUI_.instance211.name="instance211"
	du:placeAndAddChildToContainer(referUI_.instance211,container_,0.50,0.50,40.9,-21.15,0,2.73,1.33,1,1)
	du:setLogicParent(referUI_.instance211,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    -----rect infos----------------------------------------------------------
    referUI_.rects["RectGreen"]=cc.rect(0.00,0.00,83.10,41.15)
    
end

return p_uiJumper_roll_item