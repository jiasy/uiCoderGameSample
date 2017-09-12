local p_main_three_grids_grid = {}

function p_main_three_grids_grid:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=86
	local t=referUI_
	--Frame names and frame actions-----------------------------------------
	referUI_.frameNames[2]="start"
	referUI_.frameNames[15]="s_"
	referUI_.frameNames[16]="stable"
	referUI_.frameNames[17]="shake"
	referUI_.frameNames[31]="gts_stable"
	referUI_.frameNames[32]="Type11End"
	referUI_.frameNames[50]="gts_stable"
	referUI_.frameNames[51]="unMatch"
	referUI_.frameNames[65]="gts_stable"
	referUI_.frameNames[66]="type11DownShow"
	referUI_.frameNames[86]="gts_stable"
	
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance147= cc.Sprite:create("bg_ball.png")
	referUI_.instance147.name="instance147"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance147,container_,0.50,0.50,1,1,{{0,1,},{0,1,},{0,1,},{1,1,},{1,1,},{1,1,},{0,1,},{0,1,},{0,1,}},2)
	du:setLogicParent(referUI_.instance147,referUI_)
	referUI_.instance897= cc.Sprite:create("bg_ball.png")
	referUI_.instance897.name="instance897"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance897,container_,0.50,0.50,3,86,{{51.75,1,23,1,5.75,1,0,46,-2.8,1,-4.45,1,-5,1,0.55,1,3.9,1,5,1,-2.5,1,-5,1,2.5,1,5,1,-2.5,1,-5,1,-1.25,1,0,22,},{90,1,39.9,1,9.95,1,0,1,-2.15,1,-3.85,1,-5.05,1,-5.75,1,-6,1,-5.7,1,-4.5,1,-2.65,1,0,3,4.35,1,7.5,1,9.35,1,10,1,-0.75,1,-9.15,1,-15.2,1,-18.8,1,-20,1,-12.8,1,-7.2,1,-3.2,1,-0.8,1,0,36,-0.15,1,-0.75,1,-1.7,1,-3.1,1,-4.9,1,-6.8,1,-8.5,1,-9.6,1,-10,1,-9.9,1,-9.5,1,-8.9,1,-7.95,1,-6.75,1,-5.3,1,-3.7,1,-2.2,1,-1,1,-0.25,1,0,1,},{30,1,30.05,1,30.06,1,30,1,19.07,1,10.77,1,4.76,1,1.05,1,0,22,3.75,1,15.01,1,33.75,1,60.14,1,93.56,1,135,1,79.99,1,35.06,1,0,1,-24.85,1,-39.89,1,-45,1,-43.65,1,-39.89,1,-33.75,1,-24.85,1,-13.76,1,0,37,},{0.06,1,0.05,1,0.04,2,0.44,1,0.75,1,0.98,1,1.11,1,1.16,1,1.15,1,1.12,1,1.07,1,1,3,0.86,1,0.75,1,0.69,1,0.67,1,0.85,1,1,1,1.1,1,1.16,1,1.18,1,1.12,1,1.06,1,1.03,1,1.01,1,1,56,},{3.13,1,1.85,1,1.09,1,0.83,1,0.86,1,0.88,1,0.89,1,0.9,1,0.91,2,0.93,1,0.96,1,1,3,1.22,1,1.38,1,1.47,1,1.5,1,1.16,1,0.9,1,0.71,1,0.6,1,0.56,1,0.72,1,0.84,1,0.93,1,0.98,1,1,56,},{1,84,},{0,84,},{0,84,},{0,84,}},1)
	du:setLogicParent(referUI_.instance897,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_main_three_grids_grid:setSpecial(referUI_)
end

return p_main_three_grids_grid