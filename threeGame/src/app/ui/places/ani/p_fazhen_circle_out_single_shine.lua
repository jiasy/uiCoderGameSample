local p_fazhen_circle_out_single_shine = {}

function p_fazhen_circle_out_single_shine:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=40
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance592= cc.Sprite:create("battle_yuyi_2.png")
	referUI_.instance592.name="instance592"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance592,container_,0.50,0.50,1,40,{{0,40,},{0,40,},{0,40,},{1,40,},{1,40,},{1,40,},{0,40,},{0,40,},{0,40,}},1)
	du:setLogicParent(referUI_.instance592,referUI_)
	referUI_.instance594= cc.Sprite:create("battle_shine.png")
	referUI_.instance594.name="instance594"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance594,container_,0.50,0.50,1,40,{{-9.3,9,-6.75,1,-4.65,1,-2.75,1,-0.85,1,1,1,2.8,1,4.45,1,6,1,7.6,1,9.1,1,10.55,1,11.85,1,13.15,1,14.4,1,15.45,1,16.6,1,17.55,1,18.5,1,19.35,1,20.15,1,20.85,1,21.5,1,22.1,1,22.6,1,23.05,1,23.45,1,23.75,1,24,1,24.15,1,24.25,1,24.35,1,},{147.55,9,-144.75,1,-125.8,1,-107.3,1,-89.6,1,-72.55,1,-56.1,1,-40.1,1,-25,1,-10.55,1,3.3,1,16.75,1,29.25,1,41.2,1,52.45,1,63.05,1,73.05,1,82.55,1,91.2,1,99.25,1,106.65,1,113.45,1,119.6,1,125.05,1,129.9,1,134.05,1,137.75,1,140.7,1,142.95,1,144.55,1,145.55,1,145.9,1,},{60.6,9,93.85,1,93.79,1,94,1,94.02,1,94.04,1,94.05,1,94.26,1,94.27,1,94.29,1,94.3,1,94.5,1,94.52,1,94.53,1,94.54,1,94.55,1,94.56,1,94.76,1,94.77,1,94.78,2,94.79,1,94.8,2,94.81,2,95,2,95.01,3,95.04,1,},{0.1,9,1.03,31,},{0.1,9,1,31,},{1,40,},{0,40,},{0,40,},{0,40,}},2)
	du:setLogicParent(referUI_.instance594,referUI_)
	du:setBlendToDisplay(referUI_.instance594,"add")
	referUI_.pic_mask_1= cc.Sprite:create("battle_yuyi_2.png")
	referUI_.pic_mask_1.name="pic_mask_1"
	mcControl:getInstance():addMcObjectToContainer(referUI_.pic_mask_1,container_,0.50,0.50,1,40,{{-3,40,},{0,40,},{0,40,},{0.8,40,},{0.91,40,},{1,40,},{0,40,},{0,40,},{0,40,}},3)
	du:setLogicParent(referUI_.pic_mask_1,referUI_)
	local _pic_mask_1Mask={}
	_pic_mask_1Mask.stencil=referUI_.pic_mask_1
	_pic_mask_1Mask.maskNumber=1
	table.insert(_maskInfos,_pic_mask_1Mask)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_fazhen_circle_out_single_shine:setSpecial(referUI_)
end

return p_fazhen_circle_out_single_shine