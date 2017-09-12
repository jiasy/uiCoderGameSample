local p_level_list = {}

function p_level_list:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    -----rect infos----------------------------------------------------------
    referUI_.rects["RectGreen"]=cc.rect(0.00,0.00,600.05,400.05)
    referUI_.rects["RectRed"]=cc.rect(0.00,0.00,21.25,100.00)
    
	-----special keys----------------------------------------------------------
    referUI_.rollType='v'
    
end

return p_level_list