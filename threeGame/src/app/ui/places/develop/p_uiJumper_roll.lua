--imports----------------------------------------------------------
local C_testUIBtn = require("src.app.ui.controls.uiBtn.c_testUIBtn")

local p_uiJumper_roll = {}

function p_uiJumper_roll:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.testBtn1=C_testUIBtn.new();
	referUI_.testBtn1.name="testBtn1"
	du:placeAndAddChildToContainer(referUI_.testBtn1,container_,0.00,0.00,40,-24,0,1,1,1,1)
	table.insert(referUI_.disBaseList,referUI_.testBtn1)
	table.insert(referUI_.uiBtnList,referUI_.testBtn1)
	du:setLogicParent(referUI_.testBtn1,referUI_)
	referUI_.testBtn2=C_testUIBtn.new();
	referUI_.testBtn2.name="testBtn2"
	du:placeAndAddChildToContainer(referUI_.testBtn2,container_,0.00,0.00,40.15,-64,0,1,1,1,2)
	table.insert(referUI_.disBaseList,referUI_.testBtn2)
	table.insert(referUI_.uiBtnList,referUI_.testBtn2)
	du:setLogicParent(referUI_.testBtn2,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    -----rect infos----------------------------------------------------------
    referUI_.rects["RectGreen"]=cc.rect(0.00,0.00,207.85,110.50)
    referUI_.rects["RectRed"]=cc.rect(0.00,0.00,21.25,84.05)
    
	-----special keys----------------------------------------------------------
    referUI_.rollType='v'
    
end

return p_uiJumper_roll