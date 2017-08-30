--imports----------------------------------------------------------
local C_zhiye_shine_4 = require("src.app.ui.controls.ani.c_zhiye_shine_4")
local C_zhiye_shine_3 = require("src.app.ui.controls.ani.c_zhiye_shine_3")

local p_main_battle_bar_side = {}

function p_main_battle_bar_side:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=130
	local t=referUI_
	--Frame names and frame actions-----------------------------------------
	referUI_.frameNames[1]="start"
	referUI_.frameNames[31]="idle"
	referUI_.frameNames[130]="gtp_idle"
	
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance227=C_zhiye_shine_4.new();
	referUI_.instance227.name="instance227"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance227,container_,0.00,0.00,1,130,{{-2.3,1,-1.95,1,-1.65,1,-1.4,1,-1.2,1,-1,1,-0.9,1,-0.8,1,-0.7,4,-0.65,1,-0.6,1,-0.55,116,},{6.95,1,21,1,33.4,1,44.15,1,53.25,1,60.7,1,66.5,1,70.65,1,73.1,1,73.95,1,73.75,1,73.15,1,72.15,1,70.8,1,69,19,68.95,2,68.9,1,68.85,1,68.75,1,68.7,1,68.6,1,68.5,1,68.4,1,68.25,1,68.1,1,67.95,1,67.8,1,67.6,1,67.4,1,67.2,1,67,1,66.75,1,66.5,1,66.2,1,65.9,1,65.6,1,65.3,1,64.95,1,64.6,1,64.25,1,63.85,1,63.5,1,63.1,1,62.75,1,62.35,1,62,1,61.65,1,61.3,1,60.95,1,60.65,1,60.35,1,60.1,1,59.85,1,59.65,1,59.5,1,59.35,1,59.2,1,59.1,1,59.05,1,59,4,59.05,2,59.1,1,59.15,1,59.25,1,59.3,1,59.4,1,59.5,1,59.6,1,59.7,1,59.85,1,60,1,60.15,1,60.3,1,60.5,1,60.7,1,60.95,1,61.15,1,61.4,1,61.7,1,61.95,1,62.25,1,62.55,1,62.9,1,63.2,1,63.55,1,63.9,1,64.3,1,64.65,1,65,1,65.4,1,65.75,1,66.1,1,66.45,1,66.8,1,67.1,1,67.4,1,67.7,1,67.95,1,68.15,1,68.35,1,68.55,1,68.7,1,68.8,1,68.9,1,68.95,1,69,2,},{0,130,},{0.8,130,},{0.8,130,},{1,130,},{0,130,},{0,130,},{0,130,}},1)
	table.insert(referUI_.uiList,referUI_.instance227)
	du:setLogicParent(referUI_.instance227,referUI_)
	referUI_.instance233=C_zhiye_shine_3.new();
	referUI_.instance233.name="instance233"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance233,container_,0.00,0.00,1,130,{{89.1,6,79.1,1,77.65,1,73.25,1,65.85,1,52.6,1,39.4,1,26.15,1,10.5,1,-5.25,1,-21,1,-36.7,1,-48.55,1,-60.35,1,-72.2,1,-84.05,1,-97.65,1,-108.3,1,-115.85,1,-120.4,1,-121.9,7,-121.85,2,-121.8,1,-121.7,1,-121.55,1,-121.45,1,-121.25,1,-121.1,1,-120.9,1,-120.7,1,-120.45,1,-120.2,1,-119.85,1,-119.55,1,-119.15,1,-118.8,1,-118.3,1,-117.9,1,-117.35,1,-116.9,1,-116.3,1,-115.7,1,-115.1,1,-114.45,1,-113.8,1,-113.1,1,-112.4,1,-111.7,1,-110.9,1,-110.15,1,-109.4,1,-108.65,1,-107.9,1,-107.2,1,-106.55,1,-105.8,1,-105.2,1,-104.65,1,-104.05,1,-103.65,1,-103.25,1,-102.9,1,-102.55,1,-102.3,1,-102.2,1,-102.05,1,-102,1,-101.9,2,-101.95,1,-102.05,1,-102.1,1,-102.2,1,-102.3,2,-102.45,1,-102.65,1,-102.8,1,-103.05,1,-103.3,1,-103.6,1,-103.85,1,-104.2,1,-104.55,1,-104.9,1,-105.35,1,-105.75,1,-106.3,1,-106.75,1,-107.25,1,-107.75,1,-108.4,1,-109,1,-109.65,1,-110.35,1,-111,1,-111.7,1,-112.45,1,-113.25,1,-113.95,1,-114.7,1,-115.4,1,-116.05,1,-116.8,1,-117.55,1,-118.15,1,-118.75,1,-119.25,1,-119.8,1,-120.25,1,-120.6,1,-120.95,1,-121.25,1,-121.5,1,-121.65,1,-121.75,1,-121.9,2,},{97.2,7,101.85,1,115.75,1,138.8,1,140.4,1,142.2,1,143.8,1,136.4,1,128.9,1,121.5,1,113.95,1,98.7,1,83.55,1,68.25,1,53,1,35.45,1,21.75,1,12.05,1,6.2,1,4.2,8,4.25,1,4.3,2,4.35,1,4.45,1,4.5,1,4.6,1,4.7,1,4.85,1,4.95,1,5.1,1,5.25,1,5.45,1,5.6,1,5.8,1,6.05,1,6.2,1,6.45,1,6.7,1,7,1,7.35,1,7.65,1,7.9,1,8.3,1,8.65,1,9,1,9.35,1,9.7,1,10.1,1,10.45,1,10.9,1,11.25,1,11.6,1,11.9,1,12.3,1,12.55,1,12.9,1,13.15,1,13.4,1,13.6,1,13.75,1,13.9,1,14,1,14.15,2,14.2,2,14.25,2,14.2,1,14.15,1,14.1,2,14,1,13.95,1,13.85,1,13.75,1,13.65,1,13.6,1,13.35,1,13.25,1,13.05,1,12.95,1,12.8,1,12.55,1,12.3,1,12.1,1,11.85,1,11.55,1,11.3,1,11,1,10.6,1,10.35,1,10,1,9.65,1,9.35,1,8.9,1,8.55,1,8.25,1,7.85,1,7.45,1,7.1,1,6.8,1,6.4,1,6.15,1,5.85,1,5.55,1,5.3,1,5.1,1,4.9,1,4.65,1,4.55,1,4.45,1,4.3,2,4.25,1,4.2,1,},{124.57,6,143.79,1,140.9,1,132.34,1,117.84,1,111.28,1,104.55,1,98.08,1,90.77,1,83.7,1,76.44,1,69.05,1,62.94,1,56.88,1,50.64,1,44.45,1,52.13,1,57.94,1,62.2,1,64.71,1,65.58,6,65.68,1,65.67,3,65.66,1,65.47,1,65.46,2,65.44,1,65.43,1,65.41,1,65.21,1,65.19,1,65.17,1,64.96,1,64.94,1,64.92,1,64.7,1,64.67,1,64.45,1,64.42,1,64.2,1,64.16,1,63.94,1,63.71,1,63.66,1,63.43,1,63.2,1,63.15,1,62.92,1,62.68,1,62.45,1,62.4,1,62.17,1,61.93,1,61.7,1,61.66,1,61.43,1,61.4,1,61.18,1,61.15,1,60.93,1,60.91,1,60.7,1,60.69,1,60.68,1,60.67,1,60.66,1,60.58,1,60.66,2,60.67,2,60.68,2,60.69,1,60.7,1,60.9,1,60.91,1,60.92,1,60.94,1,61.14,1,61.16,1,61.18,1,61.2,1,61.42,1,61.44,1,61.66,1,61.69,1,61.9,1,61.94,1,62.16,1,62.2,1,62.43,1,62.65,1,62.69,1,62.93,1,63.16,1,63.2,1,63.44,1,63.67,1,63.91,1,63.95,1,64.19,1,64.42,1,64.46,1,64.69,1,64.91,1,64.95,1,65.17,1,65.2,1,65.41,1,65.43,1,65.45,2,65.66,1,65.67,2,65.58,1,},{1,130,},{1,130,},{1,130,},{0,130,},{0,130,},{0,130,}},2)
	table.insert(referUI_.uiList,referUI_.instance233)
	du:setLogicParent(referUI_.instance233,referUI_)
	referUI_.instance239=C_zhiye_shine_3.new();
	referUI_.instance239.name="instance239"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance239,container_,0.00,0.00,1,130,{{-138.2,1,-170.25,1,-196.55,1,-216.95,1,-231.5,1,-240.25,1,-243.2,1,-238.45,1,-234.45,1,-231,1,-228.2,1,-226,1,-224.45,1,-223.55,1,-223.25,1,-215.8,1,-208.4,1,-201.05,1,-193.65,1,-186.9,1,-179.95,1,-173.2,1,-171.2,1,-165.3,1,-155.45,1,-141.55,1,-136.5,1,-132.75,1,-130.6,1,-129.85,2,-129.95,1,-129.9,1,-129.85,1,-129.75,1,-129.65,1,-129.6,1,-129.45,1,-129.35,1,-129.2,1,-129.05,1,-128.8,1,-128.55,1,-128.3,1,-128,1,-127.7,1,-127.35,1,-127,1,-126.7,1,-126.25,1,-125.8,1,-125.3,1,-124.8,1,-124.35,1,-123.75,1,-123.25,1,-122.55,1,-121.95,1,-121.35,1,-120.6,1,-120,1,-119.35,1,-118.6,1,-117.9,1,-117.3,1,-116.65,1,-116,1,-115.45,1,-114.85,1,-114.35,1,-113.85,1,-113.45,1,-113.1,1,-112.75,1,-112.45,1,-112.3,1,-112.1,1,-112,1,-111.9,1,-111.85,1,-111.8,1,-111.85,1,-111.9,1,-111.95,1,-112,1,-112.1,1,-112.2,1,-112.4,1,-112.55,1,-112.7,1,-112.85,1,-113.1,1,-113.35,1,-113.65,1,-113.9,1,-114.2,1,-114.55,1,-114.95,1,-115.4,1,-115.75,1,-116.15,1,-116.6,1,-117.1,1,-117.7,1,-118.3,1,-118.9,1,-119.5,1,-120.05,1,-120.7,1,-121.35,1,-122,1,-122.7,1,-123.35,1,-124,1,-124.65,1,-125.3,1,-125.9,1,-126.45,1,-127,1,-127.45,1,-127.9,1,-128.35,1,-128.7,1,-129,1,-129.3,1,-129.5,1,-129.65,1,-129.75,1,-129.85,2,},{-36.8,1,-37.4,1,-37.9,1,-38.3,1,-38.6,1,-38.75,1,-38.8,1,-38.05,1,-37.45,1,-36.9,1,-36.45,1,-36.1,1,-35.85,1,-35.7,1,-35.65,1,-32.6,1,-29.4,1,-26.3,1,-23.15,1,-21.05,1,-18.9,1,-16.8,1,-15.65,1,-12.15,1,-6.35,1,1.75,1,14.15,1,23.15,1,28.45,1,30.2,2,30.25,3,30.2,1,30.15,1,30.2,5,30.25,1,30.2,1,30.25,1,30.2,4,30.25,1,30.2,1,30.25,2,30.2,2,30.15,2,30.25,1,30.2,2,30.25,1,30.2,2,30.25,1,30.2,2,30.15,2,30.2,2,30.15,2,30.25,1,30.2,3,30.15,1,30.2,6,30.15,1,30.2,6,30.25,1,30.2,1,30.15,1,30.2,11,30.25,1,30.15,1,30.2,1,30.15,2,30.2,3,30.25,1,30.2,4,30.25,1,30.2,1,30.25,2,30.2,10,},{109.61,1,107.83,1,106.56,1,105.55,1,104.81,1,104.32,1,104.33,1,104.28,2,104.27,5,104.28,1,102.07,1,100.05,1,98.03,1,96.07,1,94.27,1,92.53,1,90.89,1,89.98,1,87.2,1,82.24,1,75.48,1,62.92,1,53.89,1,48.39,1,46.59,2,46.62,1,46.63,3,46.64,1,46.65,1,46.85,1,46.87,1,46.88,1,46.9,1,47.11,1,47.13,1,47.16,1,47.37,1,47.4,1,47.62,1,47.66,1,47.89,1,48.12,1,48.16,1,48.39,1,48.63,1,48.87,1,49.12,1,49.36,1,49.61,1,49.86,1,50.11,1,50.37,1,50.62,1,50.88,1,51.14,1,51.39,1,51.65,1,51.9,1,52.15,1,52.4,1,52.64,1,52.88,1,52.93,1,53.16,1,53.39,1,53.42,1,53.63,1,53.66,1,53.67,1,53.68,1,53.88,1,53.78,1,53.88,2,53.87,1,53.68,1,53.67,1,53.66,1,53.65,1,53.64,1,53.62,1,53.42,1,53.4,1,53.38,1,53.16,1,53.14,1,52.92,1,52.89,1,52.67,1,52.63,1,52.4,1,52.17,1,52.13,1,51.89,1,51.65,1,51.41,1,51.17,1,50.92,1,50.86,1,50.61,1,50.17,1,49.92,1,49.66,1,49.41,1,49.15,1,48.9,1,48.65,1,48.4,1,48.15,1,47.9,1,47.66,1,47.61,1,47.37,1,47.15,1,47.11,1,46.89,1,46.87,1,46.66,1,46.64,1,46.63,1,46.62,1,46.59,1,},{0.8,130,},{0.8,130,},{1,130,},{0,130,},{0,130,},{0,130,}},3)
	table.insert(referUI_.uiList,referUI_.instance239)
	du:setLogicParent(referUI_.instance239,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_main_battle_bar_side:setSpecial(referUI_)
end

return p_main_battle_bar_side