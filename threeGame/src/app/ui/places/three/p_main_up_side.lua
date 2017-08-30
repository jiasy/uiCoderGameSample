--imports----------------------------------------------------------
local C_zhiye_shine_3 = require("src.app.ui.controls.ani.c_zhiye_shine_3")
local C_zhiye_shine_2 = require("src.app.ui.controls.ani.c_zhiye_shine_2")
local C_zhiye_shine_5 = require("src.app.ui.controls.ani.c_zhiye_shine_5")
local C_zhiye_shine = require("src.app.ui.controls.ani.c_zhiye_shine")

local p_main_up_side = {}

function p_main_up_side:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=244
	local t=referUI_
	--Frame names and frame actions-----------------------------------------
	referUI_.frameNames[1]="s_"
	referUI_.frameNames[25]="idle"
	referUI_.frameNames[125]="gtp_idle"
	referUI_.frameNames[126]="start"
	referUI_.frameNames[145]="idle1"
	referUI_.frameNames[244]="gtp_idle1"
	
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance372=C_zhiye_shine_3.new();
	referUI_.instance372.name="instance372"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance372,container_,0.00,0.00,1,244,{{193.35,5,-48.6,120,110.15,7,-42.4,112,},{-148,5,77,1,53.5,1,30,1,6.5,1,-17,1,-40.5,1,-64,1,-87.5,1,-111,1,-134.5,1,-158,1,-153.65,1,-150.5,1,-148.65,1,-148,6,-148.2,1,-148.4,1,-148.6,1,-148.75,1,-148.95,1,-149.15,1,-149.3,1,-149.45,1,-149.65,1,-149.8,1,-149.95,1,-150.1,1,-150.25,1,-150.4,1,-150.55,1,-150.7,1,-150.8,1,-150.95,1,-151.1,1,-151.2,1,-151.3,1,-151.45,1,-151.55,1,-151.65,1,-151.75,1,-151.85,1,-151.95,1,-152.05,1,-152.1,1,-152.2,1,-152.3,1,-152.35,1,-152.4,1,-152.5,1,-152.55,1,-152.6,1,-152.65,1,-152.7,1,-152.75,1,-152.8,1,-152.85,2,-152.9,1,-152.95,3,-153,4,-152.8,1,-152.6,1,-152.4,1,-152.25,1,-152.05,1,-151.85,1,-151.7,1,-151.55,1,-151.35,1,-151.2,1,-151.05,1,-150.9,1,-150.75,1,-150.6,1,-150.45,1,-150.3,1,-150.2,1,-150.05,1,-149.9,1,-149.8,1,-149.7,1,-149.55,1,-149.45,1,-149.35,1,-149.25,1,-149.15,1,-149.05,1,-148.95,1,-148.9,1,-148.8,1,-148.7,1,-148.65,1,-148.6,1,-148.5,1,-148.45,1,-148.4,1,-148.35,1,-148.3,1,-148.25,1,-148.2,1,-148.15,2,-148.1,1,-148.05,3,-148,4,-63.95,7,52.25,1,25.1,1,0.5,1,-21.45,1,-40.85,1,-57.7,1,-71.9,1,-83.55,1,-92.6,1,-99.1,1,-102.95,1,-104.25,4,-104.3,1,-104.35,1,-104.4,1,-104.45,1,-104.55,1,-104.65,1,-104.75,1,-104.85,1,-105,1,-105.15,1,-105.3,1,-105.45,1,-105.65,1,-105.85,1,-106.05,1,-106.3,1,-106.55,1,-106.8,1,-107.05,1,-107.35,1,-107.6,1,-107.9,1,-108.2,1,-108.55,1,-108.85,1,-109.15,1,-109.5,1,-109.8,1,-110.15,1,-110.45,1,-110.75,1,-111.05,1,-111.35,1,-111.65,1,-111.9,1,-112.15,1,-112.4,1,-112.6,1,-112.8,1,-113,1,-113.15,1,-113.25,1,-113.35,1,-113.45,1,-113.5,1,-113.55,4,-113.5,1,-113.45,1,-113.4,1,-113.35,1,-113.25,1,-113.2,1,-113.1,1,-112.95,1,-112.85,1,-112.7,1,-112.55,1,-112.4,1,-112.2,1,-112,1,-111.8,1,-111.6,1,-111.35,1,-111.1,1,-110.85,1,-110.6,1,-110.3,1,-110.05,1,-109.75,1,-109.45,1,-109.15,1,-108.8,1,-108.5,1,-108.2,1,-107.85,1,-107.55,1,-107.25,1,-106.95,1,-106.65,1,-106.35,1,-106.1,1,-105.85,1,-105.6,1,-105.35,1,-105.15,1,-104.95,1,-104.8,1,-104.65,1,-104.55,1,-104.45,1,-104.35,1,-104.3,1,-104.25,2,},{0,244,},{1,244,},{1,244,},{1,244,},{0,244,},{0,244,},{0,244,}},5)
	table.insert(referUI_.uiList,referUI_.instance372)
	du:setLogicParent(referUI_.instance372,referUI_)
	referUI_.instance378=C_zhiye_shine_2.new();
	referUI_.instance378.name="instance378"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance378,container_,0.00,0.00,1,244,{{240.3,5,216.35,1,192.5,1,168.55,1,144.7,1,120.8,1,96.9,1,73.05,1,49.1,1,25.3,1,1.4,1,-2.1,1,-4.9,1,-6.95,1,-8.15,1,-8.6,56,-8.55,13,-8.6,3,-8.55,3,-8.6,2,-8.55,2,-8.6,1,-8.55,2,-8.6,1,-8.55,1,-8.6,1,-8.55,1,-8.6,1,-8.55,1,-8.6,1,-8.55,2,-8.6,1,-8.55,1,-8.6,2,-8.55,2,-8.6,2,-8.55,4,-8.6,3,207.55,6,10.05,1,9.05,1,8.15,1,7.3,1,6.7,1,6.1,1,5.7,1,5.35,1,5.2,1,5.1,1,5.05,1,5.15,1,5.1,2,5.05,1,5.1,2,5.05,2,5.1,3,5.05,1,5.1,3,5.05,1,5.1,6,5.05,1,5.1,1,5.05,1,5.1,2,5.15,1,5.05,1,5.1,1,5.05,3,5.1,1,5.05,1,5.1,5,5.05,1,5.1,5,5.05,3,5.1,9,5.15,3,5.1,2,5.15,1,5.1,1,5.15,2,5.1,2,5.15,1,5.1,1,5.15,3,5.1,2,5.15,4,5.1,8,5.15,1,5.1,4,5.15,2,5.05,4,5.1,3,},{-36.9,5,-49.05,1,-61.05,1,-73.25,1,-85.35,1,-97.45,1,-109.55,1,-121.65,1,-133.8,1,-145.9,1,-158,1,-154.4,1,-151.65,1,-149.65,1,-148.4,1,-148,56,-147.95,2,-148,1,-148.05,1,-147.95,9,-148,4,-147.95,15,-148,18,-1.6,6,-100.5,1,-95.55,1,-91.15,1,-87.3,1,-84.15,1,-81.5,1,-79.4,1,-77.9,1,-77.05,1,-76.8,1,-76.85,1,-76.8,4,-76.9,1,-76.95,1,-77.15,1,-77.35,1,-77.55,1,-77.85,1,-78.15,1,-78.5,1,-78.85,1,-79.3,1,-79.75,1,-80.3,1,-80.9,1,-81.55,1,-82.2,1,-82.95,1,-83.65,1,-84.55,1,-85.35,1,-86.25,1,-87.15,1,-88.2,1,-89.15,1,-90.15,1,-91.25,1,-92.3,1,-93.35,1,-94.45,1,-95.5,1,-96.6,1,-97.65,1,-98.7,1,-99.75,1,-100.75,1,-101.7,1,-102.55,1,-103.4,1,-104.25,1,-104.95,1,-105.65,1,-106.15,1,-106.65,1,-107.1,1,-107.45,1,-107.75,1,-107.95,1,-108.05,1,-108.1,2,-108.05,1,-107.95,1,-107.8,1,-107.65,1,-107.4,1,-107.15,1,-106.8,1,-106.5,1,-106.1,1,-105.7,1,-105.2,1,-104.7,1,-104.1,1,-103.5,1,-102.85,1,-102.25,1,-101.4,1,-100.7,1,-99.9,1,-99,1,-98.05,1,-97.15,1,-96.2,1,-95.25,1,-94.2,1,-93.15,1,-92.15,1,-91.05,1,-90,1,-88.95,1,-87.9,1,-86.9,1,-85.8,1,-84.85,1,-83.85,1,-82.95,1,-82.15,1,-81.3,1,-80.5,1,-79.8,1,-79.15,1,-78.65,1,-78.1,1,-77.75,1,-77.35,1,-77.1,1,-76.9,1,-76.8,2,},{-41.48,5,-36.12,1,-30.86,1,-25.6,1,-20.34,1,-15.26,1,-10.01,1,-4.76,1,0.31,1,5.55,1,10.95,1,7.01,1,3.8,1,1.75,1,0.3,1,0,6,-0.03,1,-0.05,1,-0.27,1,-0.29,1,-0.51,1,-0.53,1,-0.55,1,-0.76,1,-0.79,1,-0.81,1,-1.02,1,-1.04,1,-1.06,1,-1.27,1,-1.29,1,-1.31,1,-1.51,1,-1.53,1,-1.55,1,-1.75,1,-1.77,1,-1.78,1,-1.8,1,-2,1,-2.02,2,-2.04,2,-2.25,2,-2.27,2,-2.29,2,-2.31,1,-2.51,2,-2.52,3,-2.54,5,-2.56,4,-2.74,1,-2.53,1,-2.51,1,-2.29,1,-2.27,1,-2.06,1,-2.03,1,-2.01,1,-1.8,1,-1.77,1,-1.75,1,-1.54,1,-1.52,1,-1.5,1,-1.29,1,-1.27,1,-1.25,1,-1.05,1,-1.03,1,-1.01,1,-0.81,1,-0.79,1,-0.78,1,-0.76,1,-0.56,1,-0.55,1,-0.53,1,-0.52,1,-0.51,1,-0.31,1,-0.3,1,-0.29,2,-0.27,1,-0.26,1,-0.06,1,-0.05,2,-0.04,1,-0.03,2,-0.02,2,-0.01,1,0,7,-17.72,6,27.51,1,16.03,1,5.81,1,-2.56,1,-10.04,1,-16.06,1,-20.81,1,-24.28,1,-26.29,1,-26.94,1,-21.79,1,-18.58,1,-17.72,2,-17.57,2,-17.56,2,-17.53,1,-17.33,1,-17.3,1,-17.28,1,-17.06,1,-17.03,1,-16.81,1,-16.77,1,-16.54,1,-16.3,1,-16.07,1,-15.82,1,-15.57,1,-15.32,1,-15.07,1,-14.82,1,-14.56,1,-14.29,1,-14.03,1,-13.57,1,-13.3,1,-13.03,1,-12.57,1,-12.29,1,-12.02,1,-11.55,1,-11.28,1,-10.82,1,-10.54,1,-10.27,1,-10.01,1,-9.55,1,-9.29,1,-9.04,1,-8.79,1,-8.54,1,-8.3,1,-8.06,1,-8.02,1,-7.8,1,-7.77,1,-7.56,1,-7.55,1,-7.54,1,-7.62,1,-7.54,2,-7.55,1,-7.56,1,-7.76,1,-7.78,1,-7.8,1,-8.01,1,-8.04,1,-8.26,1,-8.29,1,-8.52,1,-8.56,1,-8.79,1,-9.03,1,-9.27,1,-9.51,1,-9.76,1,-10.01,1,-10.26,1,-10.52,1,-10.78,1,-11.04,1,-11.31,1,-11.76,1,-12.03,1,-12.3,1,-12.76,1,-13.04,1,-13.31,1,-13.77,1,-14.04,1,-14.32,1,-14.77,1,-15.04,1,-15.31,1,-15.57,1,-16.02,1,-16.27,1,-16.52,1,-16.57,1,-16.81,1,-17.05,1,-17.27,1,-17.31,1,-17.52,1,-17.54,1,-17.56,1,-17.57,1,-17.72,1,},{1,244,},{1,244,},{1,244,},{0,244,},{0,244,},{0,244,}},6)
	table.insert(referUI_.uiList,referUI_.instance378)
	du:setLogicParent(referUI_.instance378,referUI_)
	referUI_.instance384=C_zhiye_shine_5.new();
	referUI_.instance384.name="instance384"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance384,container_,0.00,0.00,1,244,{{-3,1,4,1,1.85,1,0.1,1,-1.25,1,-2.2,1,-2.8,1,-3,118,160.7,1,-3,118,},{-4,1,309.05,1,213.4,1,135.15,1,74.25,1,30.8,1,4.7,1,-4,118,75.6,1,-4,118,},{0,244,},{1,244,},{1,244,},{1,244,},{0,244,},{0,244,},{0,244,}},7)
	table.insert(referUI_.uiList,referUI_.instance384)
	du:setLogicParent(referUI_.instance384,referUI_)
	referUI_.instance390=C_zhiye_shine.new();
	referUI_.instance390.name="instance390"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance390,container_,0.00,0.00,1,244,{{100.35,10,-47.6,1,-56.25,1,-64.75,1,-73.4,1,-81.95,1,-90.6,1,-99.2,1,-107.75,1,-116.35,1,-125,1,-122.25,1,-119.45,1,-116.65,1,-113.8,1,-111.1,4,-111.15,3,-111.2,2,-111.25,1,-111.3,1,-111.35,2,-111.45,1,-111.5,1,-111.55,1,-111.6,1,-111.7,1,-111.75,1,-111.85,1,-111.95,1,-112.05,1,-112.15,1,-112.25,1,-112.35,1,-112.5,1,-112.6,1,-112.75,1,-112.9,1,-113.05,1,-113.2,1,-113.35,1,-113.5,1,-113.65,1,-113.8,1,-113.95,1,-114.05,1,-114.2,1,-114.35,1,-114.45,1,-114.55,1,-114.65,1,-114.75,1,-114.85,1,-114.9,1,-114.95,1,-115,1,-115.05,1,-115.1,3,-115.2,3,-115.15,3,-115.1,2,-115,1,-114.95,1,-114.9,2,-114.8,1,-114.7,2,-114.65,1,-114.55,1,-114.5,1,-114.4,1,-114.3,1,-114.2,1,-114.05,1,-113.95,1,-113.85,1,-113.7,1,-113.65,1,-113.5,1,-113.35,1,-113.15,1,-113.05,1,-112.9,1,-112.75,1,-112.55,1,-112.45,1,-112.3,1,-112.15,1,-112.05,1,-111.85,1,-111.8,1,-111.65,1,-111.55,2,-111.35,1,-111.3,1,-111.25,1,-111.2,1,-111.15,1,-111.1,3,135.1,8,19.1,1,3.2,1,-10.55,1,-22.2,1,-31.7,1,-39.15,1,-44.45,1,-47.65,1,-48.7,1,-40,1,-34.8,1,-33.05,1,-32.95,2,-32.8,1,-32.75,2,-32.65,1,-32.6,2,-32.55,1,-32.45,2,-32.35,2,-32.3,1,-32.2,1,-32.15,2,-32.1,1,-32.05,2,-31.95,1,-31.9,1,-31.95,1,-31.85,2,-31.8,1,-31.75,4,-31.65,2,-31.6,1,-31.65,2,-31.55,2,-31.6,1,-31.55,2,-31.5,2,-31.45,4,-31.5,3,-31.55,1,-31.65,1,-31.7,1,-31.75,1,-31.8,1,-31.9,2,-31.95,1,-32,1,-32.05,1,-32.1,1,-32.15,1,-32.2,1,-32.25,2,-32.35,2,-32.45,2,-32.55,1,-32.6,1,-32.55,1,-32.6,1,-32.7,1,-32.65,1,-32.7,1,-32.75,2,-32.85,1,-32.8,1,-32.85,3,-32.9,2,-32.95,1,-33.05,1,-33,1,-32.95,1,-33,3,-33.05,1,-33.1,2,-33.15,1,-33.1,3,-33.05,1,},{-135.7,10,-133.7,1,-120.45,1,-107.4,1,-94.15,1,-81,1,-67.85,1,-54.6,1,-41.45,1,-28.3,1,-15.05,1,-17.2,1,-19.4,1,-21.55,1,-23.7,1,-26,4,-26.05,2,-26.1,2,-26.15,1,-26.2,1,-26.25,1,-26.3,1,-26.35,1,-26.4,1,-26.5,1,-26.55,1,-26.65,1,-26.75,1,-26.85,1,-26.95,1,-27.05,1,-27.2,1,-27.3,1,-27.45,1,-27.6,1,-27.75,1,-27.9,1,-28.05,1,-28.25,1,-28.4,1,-28.6,1,-28.8,1,-29,1,-29.15,1,-29.35,1,-29.55,1,-29.7,1,-29.9,1,-30.05,1,-30.2,1,-30.35,1,-30.45,1,-30.6,1,-30.7,1,-30.75,1,-30.85,1,-30.9,1,-30.95,1,-31,3,-31.05,5,-30.95,2,-30.9,1,-30.85,2,-30.75,1,-30.7,1,-30.6,1,-30.55,1,-30.45,1,-30.4,1,-30.25,1,-30.2,1,-30.1,1,-29.95,1,-29.8,1,-29.7,1,-29.55,1,-29.45,1,-29.3,1,-29.1,1,-28.95,1,-28.8,1,-28.65,1,-28.45,1,-28.25,1,-28,1,-27.9,1,-27.7,1,-27.5,1,-27.35,1,-27.2,1,-27.05,1,-26.8,1,-26.7,1,-26.55,1,-26.45,1,-26.3,2,-26.15,1,-26.1,2,-26.05,1,-26,2,162.7,8,-63.35,1,-52.4,1,-43,1,-35.05,1,-28.5,1,-23.4,1,-19.8,1,-17.6,1,-16.9,1,-16.95,1,-17.05,1,-17.1,1,-17.7,1,-18.35,1,-18.95,1,-19.5,1,-20.2,1,-20.7,1,-21.25,1,-21.85,1,-22.35,1,-22.9,1,-23.35,1,-23.8,1,-24.25,1,-24.75,1,-25.2,1,-25.65,1,-26.1,1,-26.5,1,-26.9,1,-27.25,1,-27.7,1,-28,1,-28.35,1,-28.75,1,-29,1,-29.25,1,-29.6,1,-29.85,1,-30.15,1,-30.45,1,-30.7,1,-30.85,1,-31.1,1,-31.35,1,-31.45,1,-31.65,1,-31.85,1,-31.95,1,-32.1,1,-32.25,1,-32.35,1,-32.4,1,-32.45,1,-32.55,1,-32.6,1,-32.7,2,-32.75,2,-32.15,1,-31.5,1,-31,1,-30.4,1,-29.75,1,-29.2,1,-28.6,1,-28.15,1,-27.55,1,-27.1,1,-26.55,1,-26.1,1,-25.65,1,-25.2,1,-24.75,1,-24.35,1,-23.9,1,-23.5,1,-23.1,1,-22.75,1,-22.35,1,-22,1,-21.65,1,-21.35,1,-20.95,1,-20.7,1,-20.4,1,-20.15,1,-19.85,1,-19.55,1,-19.4,1,-19.1,1,-18.85,1,-18.75,1,-18.5,1,-18.35,1,-18.2,1,-18,1,-17.85,1,-17.75,1,-17.65,1,-17.5,1,-17.4,1,-17.35,1,-17.25,1,-17.2,1,-17.15,2,-17.1,2,},{60,11,52.87,1,45.61,1,38.34,1,31.08,1,23.82,1,16.56,1,9.3,1,2.06,1,-5,1,-4,1,-3,1,-2,1,-1,1,0,6,-0.01,2,-0.02,1,-0.03,2,-0.04,1,-0.05,1,-0.06,1,-0.25,1,-0.26,1,-0.27,1,-0.29,1,-0.3,1,-0.5,1,-0.52,1,-0.53,1,-0.55,1,-0.76,1,-0.78,1,-0.8,1,-1.01,1,-1.03,1,-1.05,1,-1.26,1,-1.29,1,-1.5,1,-1.53,1,-1.55,1,-1.77,1,-1.79,1,-2,1,-2.03,1,-2.05,1,-2.25,1,-2.27,1,-2.29,1,-2.31,1,-2.51,1,-2.52,2,-2.54,4,-2.7,1,-2.55,7,-2.53,3,-2.51,2,-2.31,1,-2.3,2,-2.28,1,-2.26,2,-2.05,1,-2.03,2,-1.81,1,-1.79,1,-1.77,1,-1.75,1,-1.54,1,-1.52,1,-1.31,1,-1.29,1,-1.26,1,-1.05,1,-1.02,1,-0.81,1,-0.78,1,-0.76,1,-0.55,1,-0.53,1,-0.5,1,-0.3,1,-0.28,1,-0.26,1,-0.06,1,-0.04,1,-0.03,1,-0.02,1,-0.01,1,0,4,173.27,8,141.29,1,161.72,1,179.48,1,-165.71,1,-153.43,1,-143.89,1,-137.11,1,-132.89,1,-131.58,1,-134.4,1,-136.15,1,-136.78,1,-137.15,1,-137.62,1,-137.91,1,-138.38,1,-138.66,1,-139.13,1,-139.4,1,-139.87,1,-140.14,1,-140.41,1,-140.87,1,-141.13,1,-141.4,1,-141.66,1,-141.92,1,-142.18,1,-142.62,1,-142.88,1,-143.13,1,-143.38,1,-143.62,1,-143.68,1,-143.93,1,-144.17,1,-144.41,1,-144.64,1,-144.88,1,-144.92,1,-145.15,1,-145.38,1,-145.42,1,-145.65,1,-145.68,1,-145.9,1,-145.93,1,-146.15,1,-146.17,1,-146.39,1,-146.41,1,-146.43,1,-146.63,1,-146.65,1,-146.66,2,-146.68,1,-146.69,1,-146.88,2,-146.78,1,-146.41,1,-145.94,1,-145.66,1,-145.19,1,-144.91,1,-144.63,1,-144.17,1,-143.89,1,-143.62,1,-143.17,1,-142.9,1,-142.63,1,-142.37,1,-141.92,1,-141.66,1,-141.4,1,-141.15,1,-140.9,1,-140.64,1,-140.4,1,-140.15,1,-139.9,1,-139.66,1,-139.42,1,-139.37,1,-139.13,1,-138.89,1,-138.66,1,-138.62,1,-138.39,1,-138.16,1,-138.12,1,-137.9,1,-137.87,1,-137.65,1,-137.62,1,-137.4,1,-137.38,1,-137.36,1,-137.15,1,-137.13,1,-137.11,1,-136.91,1,-136.89,2,-136.87,2,-136.86,2,-136.78,1,},{0.25,11,0.34,1,0.44,1,0.53,1,0.63,1,0.72,1,0.82,1,0.91,1,1.01,1,1.1,1,1.08,1,1.06,1,1.04,1,1.02,1,1,220,},{0.25,11,0.34,1,0.44,1,0.53,1,0.63,1,0.72,1,0.82,1,0.91,1,1.01,1,1.1,1,1.08,1,1.06,1,1.04,1,1.02,1,1,220,},{1,244,},{0,244,},{0,244,},{0,244,}},8)
	table.insert(referUI_.uiList,referUI_.instance390)
	du:setLogicParent(referUI_.instance390,referUI_)
	referUI_.instance396=C_zhiye_shine.new();
	referUI_.instance396.name="instance396"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance396,container_,0.00,0.00,1,244,{{98.7,10,-49.25,1,-53.75,1,-58.45,1,-62.95,1,-67.55,1,-72.1,1,-76.65,1,-81.2,1,-85.85,1,-90.4,1,-88.65,1,-86.9,1,-85.2,1,-83.45,1,-81.65,1,-81.7,3,-81.75,3,-81.8,1,-81.75,1,-81.8,1,-81.85,1,-81.95,2,-82.05,1,-82.1,1,-82.15,1,-82.2,1,-82.3,1,-82.35,1,-82.4,1,-82.55,1,-82.65,1,-82.7,1,-82.8,1,-82.95,1,-83.1,1,-83.15,1,-83.35,1,-83.55,1,-83.6,1,-83.8,1,-83.95,1,-84.1,1,-84.25,1,-84.45,1,-84.55,1,-84.6,1,-84.8,1,-84.9,1,-85.05,1,-85.15,1,-85.2,1,-85.35,1,-85.45,2,-85.5,1,-85.6,1,-85.65,1,-85.7,2,-85.65,1,-85.6,3,-85.55,3,-85.5,2,-85.45,2,-85.4,2,-85.25,1,-85.2,2,-85.1,1,-85,2,-84.9,1,-84.8,1,-84.7,1,-84.55,1,-84.5,1,-84.35,1,-84.25,1,-84.1,1,-84,1,-83.85,1,-83.7,1,-83.55,1,-83.35,1,-83.25,1,-83.1,1,-82.9,1,-82.75,1,-82.65,1,-82.5,1,-82.35,1,-82.3,1,-82.2,1,-82.05,1,-82,1,-81.85,3,-81.8,1,-81.75,1,-81.65,3,140.85,5,15.15,1,4.15,1,-5.4,1,-13.55,1,-20.05,1,-25.2,1,-28.85,1,-31,1,-31.75,1,-25.1,1,-20.45,1,-17.55,1,-16.6,3,-16.65,4,-16.6,1,-16.55,1,-16.6,2,-16.55,1,-16.6,2,-16.55,2,-16.6,2,-16.55,1,-16.65,1,-16.6,2,-16.65,3,-16.6,7,-16.65,1,-16.6,1,-16.55,1,-16.6,1,-16.55,2,-16.6,1,-16.65,1,-16.6,4,-16.65,1,-16.6,13,-16.65,1,-16.6,1,-16.55,1,-16.5,1,-16.6,2,-16.55,3,-16.6,2,-16.55,1,-16.6,6,-16.55,1,-16.6,1,-16.55,1,-16.6,2,-16.55,1,-16.6,1,-16.65,1,-16.55,3,-16.6,3,-16.55,1,-16.6,3,-16.55,2,-16.65,1,-16.6,1,-16.55,1,-16.6,1,-16.65,1,-16.6,1,},{-145.15,10,-143.15,1,-131.6,1,-120.05,1,-108.5,1,-96.95,1,-85.3,1,-73.8,1,-62.2,1,-50.7,1,-39.15,1,-41.45,1,-43.8,1,-46.05,1,-48.3,1,-50.6,1,-50.55,3,-50.6,3,-50.7,3,-50.75,1,-50.8,2,-50.95,1,-51,1,-51.05,2,-51.15,1,-51.25,1,-51.35,1,-51.5,2,-51.65,1,-51.7,1,-51.85,1,-52,1,-52.05,1,-52.25,1,-52.45,1,-52.55,1,-52.7,1,-52.85,1,-53,1,-53.15,1,-53.3,1,-53.45,1,-53.55,1,-53.7,1,-53.85,1,-53.95,1,-54.05,1,-54.15,1,-54.3,1,-54.4,1,-54.45,2,-54.55,1,-54.6,1,-54.65,2,-54.6,1,-54.65,3,-54.6,5,-54.5,1,-54.45,1,-54.4,2,-54.35,1,-54.25,1,-54.2,1,-54.15,1,-54.05,1,-53.95,1,-53.85,1,-53.75,1,-53.6,1,-53.55,1,-53.4,1,-53.35,1,-53.2,1,-53.1,1,-52.95,1,-52.8,1,-52.65,1,-52.5,1,-52.4,1,-52.2,1,-52.1,1,-51.95,1,-51.8,1,-51.7,1,-51.5,1,-51.4,1,-51.3,1,-51.2,1,-51.1,1,-51.05,1,-50.9,1,-50.85,2,-50.75,1,-50.7,1,-50.65,2,-50.6,1,179.35,5,-46.05,1,-38.15,1,-31.2,1,-25.4,1,-20.55,1,-16.8,1,-14.2,1,-12.6,1,-12.05,1,-11.45,1,-11.05,1,-10.85,1,-10.75,3,-11.05,1,-11.4,1,-11.7,1,-12.1,1,-12.35,1,-12.65,1,-13.05,1,-13.25,1,-13.65,1,-13.95,1,-14.3,1,-14.65,1,-14.85,1,-15.2,1,-15.5,1,-15.8,1,-16.2,1,-16.45,1,-16.75,1,-17.15,1,-17.4,1,-17.85,1,-18.1,1,-18.4,1,-18.75,1,-19.05,1,-19.35,1,-19.75,1,-20.05,1,-20.35,1,-20.6,1,-20.95,1,-21.3,1,-21.6,1,-21.95,1,-22.25,1,-22.55,1,-22.9,1,-23.25,1,-23.55,1,-23.8,1,-24.1,1,-24.5,1,-24.75,1,-25.1,1,-25.45,1,-25.7,1,-26.15,1,-26.4,1,-26.1,1,-25.8,1,-25.5,1,-25.15,1,-24.9,1,-24.45,1,-24.2,1,-23.95,1,-23.6,1,-23.25,1,-23,1,-22.65,1,-22.4,1,-22.05,1,-21.75,1,-21.45,1,-21.15,1,-20.75,1,-20.45,1,-20.15,1,-19.9,1,-19.55,1,-19.25,1,-18.95,1,-18.6,1,-18.25,1,-17.95,1,-17.7,1,-17.35,1,-17.1,1,-16.75,1,-16.45,1,-16.1,1,-15.8,1,-15.45,1,-15.2,1,-14.8,1,-14.55,1,-14.3,1,-13.9,1,-13.6,1,-13.3,1,-12.95,1,-12.65,1,-12.4,1,-12.05,1,-11.75,1,-11.45,1,-11.05,1,-10.75,1,},{70,11,62.9,1,55.64,1,48.37,1,41.11,1,33.84,1,26.58,1,19.32,1,12.06,1,5,1,5.82,1,6.82,1,7.82,1,9.01,1,10,1,9.82,3,9.81,3,9.8,3,9.79,1,9.78,3,9.76,1,9.56,1,9.55,1,9.54,1,9.53,1,9.51,1,9.31,1,9.3,1,9.28,1,9.26,1,9.06,1,9.04,1,9.02,1,8.81,1,8.79,1,8.77,1,8.56,1,8.53,1,8.51,1,8.3,1,8.27,1,8.06,1,8.04,1,8.02,1,7.81,1,7.79,1,7.78,1,7.76,1,7.56,1,7.54,2,7.53,1,7.52,1,7.51,9,7.52,3,7.53,1,7.54,2,7.55,1,7.56,2,7.76,1,7.77,1,7.79,1,7.8,1,7.81,1,8.01,1,8.03,1,8.04,1,8.06,1,8.27,1,8.29,1,8.31,1,8.52,1,8.54,1,8.56,1,8.77,1,8.79,1,8.82,1,9.03,1,9.05,1,9.26,1,9.28,1,9.3,1,9.51,1,9.53,1,9.55,1,9.57,1,9.77,2,9.79,1,9.8,1,9.81,2,9.82,2,10,1,158.73,5,126.75,1,147.18,1,164.95,1,179.96,1,-167.97,1,-158.44,1,-151.66,1,-147.44,1,-146.12,1,-148.42,1,-150.15,1,-150.96,1,-151.32,3,-151.65,1,-151.7,1,-151.94,1,-152.18,1,-152.42,1,-152.66,1,-152.9,1,-152.95,1,-153.19,1,-153.43,1,-153.67,1,-153.91,1,-153.96,1,-154.2,1,-154.44,1,-154.67,1,-154.91,1,-154.97,1,-155.2,1,-155.44,1,-155.68,1,-155.92,1,-156.16,1,-156.21,1,-156.45,1,-156.69,1,-156.93,1,-157.17,1,-157.22,1,-157.46,1,-157.7,1,-157.94,1,-158.18,1,-158.41,1,-158.47,1,-158.71,1,-158.94,1,-159.18,1,-159.42,1,-159.47,1,-159.71,1,-159.95,1,-160.19,1,-160.43,1,-160.67,1,-160.72,1,-160.96,1,-161.2,1,-161.32,1,-161.2,1,-160.96,1,-160.72,1,-160.67,1,-160.43,1,-160.2,1,-159.96,1,-159.72,1,-159.67,1,-159.43,1,-159.19,1,-158.96,1,-158.72,1,-158.67,1,-158.43,1,-158.19,1,-157.95,1,-157.72,1,-157.67,1,-157.43,1,-157.19,1,-156.95,1,-156.71,1,-156.66,1,-156.43,1,-156.19,1,-155.95,1,-155.71,1,-155.66,1,-155.42,1,-155.19,1,-154.95,1,-154.71,1,-154.66,1,-154.42,1,-154.18,1,-153.95,1,-153.71,1,-153.66,1,-153.42,1,-153.18,1,-152.94,1,-152.7,1,-152.65,1,-152.42,1,-152.18,1,-151.94,1,-151.7,1,-151.65,1,-151.32,1,},{0.2,11,0.28,1,0.35,1,0.43,1,0.5,1,0.58,1,0.65,1,0.73,1,0.8,1,0.88,1,0.86,1,0.85,1,0.83,1,0.82,1,0.8,220,},{0.2,11,0.28,1,0.35,1,0.43,1,0.5,1,0.58,1,0.65,1,0.73,1,0.8,1,0.88,1,0.86,1,0.85,1,0.83,1,0.82,1,0.8,220,},{1,244,},{0,244,},{0,244,},{0,244,}},9)
	table.insert(referUI_.uiList,referUI_.instance396)
	du:setLogicParent(referUI_.instance396,referUI_)
	referUI_.instance402=C_zhiye_shine.new();
	referUI_.instance402.name="instance402"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance402,container_,0.00,0.00,1,244,{{96.1,10,-51.85,1,-53.1,1,-54.35,1,-55.6,1,-56.75,1,-58.05,1,-59.35,1,-60.5,1,-61.75,1,-63,1,-62.15,1,-61.3,1,-60.5,1,-59.7,1,-58.85,3,-58.9,4,-58.95,2,-59.05,2,-59.1,1,-59.15,1,-59.2,1,-59.25,1,-59.3,1,-59.4,1,-59.5,1,-59.55,1,-59.6,1,-59.75,1,-59.85,1,-59.95,1,-60.05,2,-60.25,1,-60.35,1,-60.5,1,-60.65,1,-60.75,1,-60.95,1,-61.1,1,-61.25,1,-61.4,1,-61.55,1,-61.65,1,-61.8,1,-62,1,-62.15,1,-62.2,1,-62.3,1,-62.45,1,-62.5,1,-62.6,2,-62.7,1,-62.75,2,-62.85,5,-62.9,1,-62.85,3,-62.75,3,-62.7,1,-62.65,1,-62.6,1,-62.55,1,-62.45,2,-62.35,1,-62.3,1,-62.2,1,-62.15,1,-62.05,1,-61.9,1,-61.85,1,-61.75,1,-61.65,1,-61.5,1,-61.35,1,-61.2,1,-61.05,1,-60.9,1,-60.75,1,-60.65,1,-60.45,1,-60.3,1,-60.15,1,-59.95,1,-59.85,1,-59.8,1,-59.6,1,-59.5,1,-59.4,1,-59.3,1,-59.2,1,-59.05,2,-59,1,-58.95,2,-58.9,2,-58.85,1,137.35,2,5,1,-1.55,1,-7.1,1,-11.9,1,-15.8,1,-18.8,1,-20.9,1,-22.2,1,-22.65,1,-16.5,1,-12.05,1,-9.4,1,-8.5,6,-8.45,6,-8.5,4,-8.55,3,-8.6,3,-8.65,1,-8.7,1,-8.75,2,-8.8,2,-8.85,2,-8.9,1,-8.95,2,-9,1,-9.05,1,-9.1,1,-9.05,1,-9.1,1,-9.2,1,-9.25,1,-9.3,1,-9.35,2,-9.4,1,-9.45,1,-9.5,1,-9.55,1,-9.65,2,-9.75,1,-9.8,1,-9.85,1,-9.95,1,-10,1,-10.05,7,-10,4,-9.95,4,-9.9,2,-9.85,3,-9.8,1,-9.85,1,-9.8,1,-9.75,2,-9.65,1,-9.7,1,-9.65,1,-9.6,2,-9.5,1,-9.45,1,-9.35,3,-9.3,1,-9.25,1,-9.2,1,-9.15,1,-9.1,1,-9.05,1,-9,1,-8.9,3,-8.8,2,-8.75,1,-8.6,2,-8.5,1,},{-153.25,10,-151.25,1,-141.6,1,-132,1,-122.3,1,-112.75,1,-103.05,1,-93.45,1,-83.75,1,-74.25,1,-64.6,1,-66.85,1,-69.05,1,-71.35,1,-73.6,1,-75.85,1,-75.8,3,-75.85,1,-75.9,3,-75.95,2,-76,3,-76.05,1,-76.1,1,-76.2,1,-76.25,1,-76.3,1,-76.35,1,-76.4,1,-76.5,1,-76.55,1,-76.6,1,-76.7,1,-76.8,1,-76.95,2,-77.1,1,-77.2,1,-77.35,2,-77.5,1,-77.65,1,-77.8,1,-77.85,1,-77.95,1,-78.15,1,-78.2,1,-78.25,1,-78.35,1,-78.45,1,-78.55,1,-78.65,1,-78.6,1,-78.7,1,-78.75,1,-78.8,2,-78.85,7,-78.8,3,-78.75,2,-78.7,2,-78.65,1,-78.6,2,-78.55,1,-78.45,2,-78.4,1,-78.3,1,-78.15,1,-78.1,1,-78,2,-77.9,1,-77.75,1,-77.65,2,-77.55,1,-77.4,1,-77.25,1,-77.2,1,-77,1,-76.95,1,-76.9,1,-76.75,1,-76.6,1,-76.5,1,-76.4,1,-76.35,1,-76.25,1,-76.1,1,-76.05,2,-76,1,-75.95,1,-75.85,1,-75.9,1,-75.85,3,192.85,2,-36.5,1,-28.25,1,-21.15,1,-15.15,1,-10.25,1,-6.3,1,-3.65,1,-2,1,-1.5,1,-0.65,1,0,1,0.4,1,0.6,6,0.65,2,0.55,1,0.5,1,0.45,1,0.4,1,0.35,1,0.3,1,0.25,1,0.15,1,-0.05,1,-0.15,1,-0.3,1,-0.4,1,-0.6,1,-0.7,1,-0.9,1,-1.05,1,-1.3,1,-1.5,1,-1.7,1,-1.9,1,-2.15,1,-2.4,1,-2.65,1,-2.95,1,-3.15,1,-3.5,1,-3.8,1,-4.1,1,-4.35,1,-4.75,1,-5.1,1,-5.45,1,-5.75,1,-6.15,1,-6.55,1,-6.95,1,-7.35,1,-7.75,1,-8.2,1,-8.6,1,-9.05,1,-9.5,1,-10,1,-10.4,1,-10.95,1,-11.45,1,-11.95,1,-12,2,-11.95,1,-11.9,1,-11.85,1,-11.8,1,-11.75,1,-11.7,1,-11.6,1,-11.5,1,-11.4,1,-11.3,1,-11.15,1,-11,1,-10.85,1,-10.7,1,-10.55,1,-10.4,1,-10.2,1,-10,1,-9.8,1,-9.55,1,-9.35,1,-9.1,1,-8.85,1,-8.6,1,-8.35,1,-8.05,1,-7.8,1,-7.5,1,-7.15,1,-6.85,1,-6.55,1,-6.2,1,-5.85,1,-5.5,1,-5.15,1,-4.75,1,-4.35,1,-3.9,1,-3.55,1,-3.15,1,-2.7,1,-2.3,1,-1.85,1,-1.35,1,-0.9,1,-0.45,1,0,1,0.6,1,},{80,11,72.93,1,65.67,1,58.41,1,51.14,1,43.87,1,36.61,1,29.34,1,22.08,1,15,1,15.83,1,16.83,1,17.83,1,18.83,1,20,1,19.83,6,19.81,3,19.79,1,19.78,1,19.58,1,19.56,2,19.53,1,19.33,1,19.31,1,19.29,1,19.27,1,19.06,1,19.04,1,18.82,1,18.8,1,18.58,1,18.55,1,18.33,1,18.3,1,18.08,1,18.04,1,17.81,1,17.78,1,17.55,1,17.33,1,17.29,1,17.07,1,17.03,1,16.81,1,16.78,1,16.56,1,16.53,1,16.32,1,16.3,1,16.28,1,16.07,1,16.06,2,16.04,1,16.03,2,16.05,1,16.03,4,16.04,2,16.05,3,16.07,1,16.27,1,16.28,1,16.29,1,16.31,1,16.32,1,16.53,1,16.55,1,16.57,1,16.78,1,16.8,1,16.82,1,17.04,1,17.06,1,17.28,1,17.31,1,17.53,1,17.56,1,17.79,1,17.82,1,18.05,1,18.27,1,18.31,1,18.53,1,18.57,1,18.79,1,18.83,1,19.05,1,19.08,1,19.3,1,19.33,1,19.54,1,19.56,1,19.58,1,19.79,1,19.8,2,19.82,3,20,1,139.78,2,107.8,1,128.13,1,145.92,1,160.95,1,173.22,1,-177.45,1,-170.69,1,-166.47,1,-165.07,1,-167.45,1,-168.99,1,-169.98,1,-170.28,6,-170.44,2,-170.45,2,-170.46,1,-170.48,1,-170.49,1,-170.69,1,-170.71,1,-170.73,1,-170.94,1,-170.96,1,-170.99,1,-171.2,1,-171.24,1,-171.46,1,-171.49,1,-171.72,1,-171.94,1,-171.98,1,-172.21,1,-172.44,1,-172.49,1,-172.73,1,-172.97,1,-173.21,1,-173.45,1,-173.7,1,-173.94,1,-174.19,1,-174.44,1,-174.7,1,-174.95,1,-175.21,1,-175.47,1,-175.73,1,-175.99,1,-176.44,1,-176.71,1,-176.98,1,-177.44,1,-177.72,1,-177.99,1,-178.46,1,-178.74,1,-179.21,1,-179.49,1,-179.97,1,179.72,1,179.74,1,179.75,1,179.94,1,179.95,1,179.96,1,179.97,1,179.98,1,179.99,1,-179.99,1,-179.97,1,-179.95,1,-179.74,1,-179.71,1,-179.5,1,-179.47,1,-179.44,1,-179.22,1,-179,1,-178.96,1,-178.73,1,-178.69,1,-178.46,1,-178.23,1,-177.99,1,-177.94,1,-177.71,1,-177.46,1,-177.22,1,-176.98,1,-176.73,1,-176.48,1,-176.23,1,-175.98,1,-175.72,1,-175.47,1,-175.21,1,-174.95,1,-174.5,1,-174.24,1,-173.97,1,-173.7,1,-173.24,1,-172.97,1,-172.69,1,-172.23,1,-171.95,1,-171.48,1,-171.2,1,-170.72,1,-170.28,1,},{0.16,11,0.22,1,0.28,1,0.34,1,0.4,1,0.46,1,0.52,1,0.58,1,0.64,1,0.7,1,0.69,1,0.68,1,0.66,1,0.65,1,0.64,220,},{0.16,11,0.22,1,0.28,1,0.34,1,0.4,1,0.46,1,0.52,1,0.58,1,0.64,1,0.7,1,0.69,1,0.68,1,0.66,1,0.65,1,0.64,220,},{1,244,},{0,244,},{0,244,},{0,244,}},10)
	table.insert(referUI_.uiList,referUI_.instance402)
	du:setLogicParent(referUI_.instance402,referUI_)
	referUI_.instance364= cc.Sprite:create("battle_ye_2.png")
	referUI_.instance364.name="instance364"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance364,container_,0.50,0.50,1,244,{{42.85,1,41.9,1,39,1,34.1,1,27.2,1,24.35,1,15.85,1,1.5,1,-18.4,1,-30.85,1,-40.4,1,-47.35,1,-51.45,1,-52.8,12,-52.85,2,-52.8,2,-52.85,1,-52.8,2,-52.85,1,-52.8,4,-52.85,2,-52.9,1,-52.8,5,-52.85,1,-52.8,4,-52.85,1,-52.8,1,-52.75,1,-52.85,1,-52.8,5,-52.85,1,-52.8,1,-52.75,1,-52.8,2,-52.85,1,-52.8,3,-52.85,1,-52.8,1,-52.75,1,-52.8,4,-52.75,3,-52.8,1,-52.75,1,-52.8,2,-52.75,5,-52.8,1,-52.75,1,-52.8,3,-52.75,1,-52.8,3,-52.85,1,-52.8,2,-52.75,1,-52.8,1,-52.75,2,-52.85,1,-52.8,5,-52.85,1,-52.8,9,-52.75,1,-52.8,1,-52.75,1,-52.8,3,204.35,119,},{-226.65,1,-226.6,3,-226.65,1,-226,1,-224.1,1,-221.05,1,-216.7,1,-220.2,1,-223,1,-225,1,-226.2,1,-226.65,14,-226.7,2,-226.75,1,-226.85,2,-226.95,2,-227.05,1,-227.1,1,-227.25,1,-227.35,1,-227.45,1,-227.55,1,-227.65,1,-227.8,1,-227.95,1,-228.1,1,-228.25,1,-228.4,1,-228.6,1,-228.75,1,-229,1,-229.2,1,-229.35,1,-229.55,1,-229.85,1,-230,1,-230.25,1,-230.45,1,-230.7,1,-231,1,-231.25,1,-231.55,1,-231.85,1,-232.15,1,-232.45,1,-232.75,1,-233.05,1,-233.35,1,-233.75,1,-234.05,1,-234.4,1,-234.75,1,-235.1,1,-235.5,1,-235.85,1,-236.25,1,-236.65,3,-236.6,2,-236.55,2,-236.45,1,-236.4,1,-236.35,1,-236.25,1,-236.15,1,-236.05,1,-235.9,1,-235.85,1,-235.75,1,-235.65,1,-235.45,1,-235.35,1,-235.2,1,-235.05,1,-234.9,1,-234.65,1,-234.55,1,-234.3,1,-234.15,1,-233.95,1,-233.75,1,-233.5,1,-233.35,1,-233.1,1,-232.8,1,-232.5,1,-232.3,1,-232.05,1,-231.7,1,-231.45,1,-231.15,1,-230.85,1,-230.5,1,-230.25,1,-229.95,1,-229.55,1,-229.25,1,-228.9,1,-228.5,1,-228.2,1,-227.85,1,-227.5,1,-227.05,1,-226.65,1,50.3,119,},{33.79,1,33.82,3,33.79,1,29.6,1,17.54,1,-2.55,1,-31.05,1,-60.19,1,-82.96,1,-99.01,1,-108.58,1,-111.99,12,-111.84,1,-112.03,2,-112.04,1,-112.05,1,-112.07,1,-112.08,1,-112.29,1,-112.31,1,-112.33,1,-112.55,1,-112.58,1,-112.8,1,-112.83,1,-113.05,1,-113.28,1,-113.32,1,-113.56,1,-113.79,1,-113.84,1,-114.08,1,-114.32,1,-114.56,1,-114.81,1,-115.06,1,-115.31,1,-115.56,1,-115.82,1,-116.08,1,-116.34,1,-116.79,1,-117.06,1,-117.33,1,-117.6,1,-118.06,1,-118.34,1,-118.81,1,-119.09,1,-119.56,1,-119.85,1,-120.33,1,-120.8,1,-121.1,1,-121.58,1,-122.07,1,-122.56,1,-122.87,1,-123.36,1,-123.86,1,-124.44,1,-124.36,1,-124.35,2,-124.34,1,-124.33,1,-124.31,1,-124.11,1,-124.09,1,-124.07,1,-123.86,1,-123.83,1,-123.61,1,-123.58,1,-123.36,1,-123.32,1,-123.1,1,-123.06,1,-122.82,1,-122.59,1,-122.35,1,-122.11,1,-122.06,1,-121.82,1,-121.57,1,-121.32,1,-121.07,1,-120.81,1,-120.56,1,-120.3,1,-119.85,1,-119.58,1,-119.32,1,-119.05,1,-118.59,1,-118.31,1,-117.85,1,-117.57,1,-117.1,1,-116.82,1,-116.34,1,-116.05,1,-115.57,1,-115.09,1,-114.8,1,-114.31,1,-113.82,1,-113.33,1,-112.83,1,-112.33,1,-111.99,120,},{1,244,},{1,244,},{1,244,},{0,244,},{0,244,},{0,244,}},1)
	du:setLogicParent(referUI_.instance364,referUI_)
	referUI_.instance366= cc.Sprite:create("battle_genjing_2.png")
	referUI_.instance366.name="instance366"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance366,container_,0.84,0.80,1,244,{{247.35,6,5.4,1,5.2,1,4.8,1,3.95,1,2.85,1,1.45,1,-0.25,1,-2.25,1,-4.6,1,6.25,1,14.6,1,20.6,1,24.15,1,25.4,8,25.35,2,25.25,1,25.2,2,25.15,1,25.1,1,25,1,24.85,1,24.8,1,24.7,1,24.55,1,24.45,1,24.4,1,24.25,1,24.15,1,23.95,1,23.8,1,23.7,1,23.45,1,23.25,1,23.05,1,22.85,1,22.7,1,22.5,1,22.25,1,22.05,1,21.8,1,21.5,1,21.3,1,21.05,1,20.8,1,20.45,1,20.15,1,19.9,1,19.6,1,19.3,1,19.05,1,18.65,1,18.35,1,17.95,1,17.65,1,17.3,1,16.95,1,16.55,1,16.2,1,15.8,1,15.4,3,15.45,2,15.5,1,15.55,1,15.6,1,15.65,1,15.7,1,15.8,1,15.95,1,16.05,1,16.1,1,16.25,1,16.35,1,16.4,1,16.55,1,16.7,1,16.85,1,17.05,1,17.15,1,17.4,1,17.5,1,17.7,1,17.9,1,18.1,1,18.25,1,18.55,1,18.75,1,19,1,19.3,1,19.55,1,19.8,1,19.95,1,20.3,1,20.6,1,20.9,1,21.2,1,21.5,1,21.8,1,22.1,1,22.5,1,22.75,1,23.1,1,23.5,1,23.85,1,24.2,1,24.6,1,24.95,1,25.4,1,280.35,119,},{-49.8,7,-49.65,1,-49.2,1,-48.35,1,-47.35,1,-45.95,1,-44.2,1,-42.15,1,-39.8,1,-36.25,1,-33.45,1,-31.5,1,-30.25,1,-29.8,15,-29.75,4,-29.8,1,-29.85,3,-29.8,11,-29.85,1,-29.8,3,-29.85,1,-29.75,2,-29.85,1,-29.8,10,-29.75,1,-29.8,3,-29.85,7,-29.8,2,-29.85,4,-29.8,5,-29.75,1,-29.8,5,-29.85,1,-29.8,1,-29.85,1,-29.8,4,-29.85,1,-29.8,2,-29.85,4,-29.75,1,-29.85,1,-29.8,3,-29.85,2,-29.8,3,-29.85,1,-29.8,1,74.8,119,},{-1.25,6,99.3,1,97.03,1,90.53,1,79.93,1,64.66,1,45.09,1,21.05,1,-7.03,1,-39.7,1,-25.81,1,-15.03,1,-7.29,1,-2.76,1,-1.25,7,-1.26,2,-1.27,1,-1.28,1,-1.29,1,-1.31,1,-1.51,1,-1.53,1,-1.55,1,-1.76,1,-1.79,1,-2.01,1,-2.04,1,-2.26,1,-2.3,1,-2.52,1,-2.56,1,-2.79,1,-3.02,1,-3.26,1,-3.31,1,-3.55,1,-3.79,1,-4.03,1,-4.28,1,-4.53,1,-4.78,1,-5.03,1,-5.29,1,-5.55,1,-5.8,1,-6.25,1,-6.52,1,-6.79,1,-7.06,1,-7.51,1,-7.79,1,-8.06,1,-8.53,1,-8.81,1,-9.28,1,-9.57,1,-10.04,1,-10.52,1,-10.81,1,-11.3,1,-11.78,1,-12.27,1,-12.74,1,-12.57,1,-12.56,2,-12.55,1,-12.54,1,-12.53,1,-12.51,1,-12.31,1,-12.29,1,-12.27,1,-12.05,1,-12.03,1,-11.81,1,-11.78,1,-11.56,1,-11.52,1,-11.3,1,-11.26,1,-11.03,1,-10.8,1,-10.56,1,-10.51,1,-10.27,1,-10.03,1,-9.78,1,-9.54,1,-9.29,1,-9.04,1,-8.79,1,-8.53,1,-8.27,1,-8.01,1,-7.56,1,-7.3,1,-7.03,1,-6.76,1,-6.3,1,-6.03,1,-5.75,1,-5.29,1,-5.01,1,-4.54,1,-4.06,1,-3.77,1,-3.3,1,-3,1,-2.52,1,-2.04,1,-1.55,1,-1.25,120,},{1,244,},{1,244,},{1,244,},{0,244,},{0,244,},{0,244,}},2)
	du:setLogicParent(referUI_.instance366,referUI_)
	referUI_.instance368= cc.Sprite:create("battle_genjing_4.png")
	referUI_.instance368.name="instance368"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance368,container_,0.98,0.82,1,244,{{168.35,4,-3.6,11,-3.65,1,-3.6,1,-3.65,1,-3.6,57,-3.55,25,-3.6,1,-3.55,2,-3.6,1,-3.55,1,-3.6,1,-3.55,1,-3.6,1,-3.55,5,-3.6,1,-3.55,1,-3.6,1,-3.55,1,-3.6,2,-3.55,1,-3.6,2,-3.55,2,-3.6,1,128.3,7,-0.4,1,-0.45,1,-0.4,4,-0.45,1,-0.4,1,-0.45,1,-0.4,66,-0.35,3,-0.4,7,-0.35,2,-0.4,6,-0.35,1,-0.4,7,-0.35,2,-0.4,9,},{-66.05,4,33.95,1,31.85,1,25.6,1,16.05,1,4.6,1,-7.05,1,-17.45,1,-25.75,1,-31.6,1,-34.95,1,-36.05,3,-36.1,1,-36.05,54,-36.1,1,-36.05,2,-36.1,13,-36.05,8,-36.1,11,-36.15,3,-36,2,-36.05,7,-36.1,2,-36.05,4,-88.95,7,-14,3,-13.95,1,-14,1,-13.95,1,-14,1,-13.95,1,-14,2,-13.95,1,-14,71,-13.95,2,-14,12,-13.95,15,-14,1,},{0,4,-90,1,-86.97,1,-77.74,1,-63.69,1,-46.86,1,-29.58,1,-14.29,1,-2.04,1,6.3,1,11.3,1,13,1,8.27,1,4.55,1,2.02,1,0.51,1,0,11,-0.01,1,-0.02,1,-0.03,2,-0.04,1,-0.05,1,-0.06,1,-0.25,1,-0.26,1,-0.28,2,-0.3,1,-0.5,1,-0.52,1,-0.53,1,-0.55,1,-0.75,1,-0.77,1,-0.79,1,-0.81,1,-1.02,1,-1.04,1,-1.06,1,-1.27,1,-1.29,1,-1.51,1,-1.53,1,-1.55,1,-1.77,1,-1.8,1,-2.01,1,-2.04,1,-2.26,1,-2.29,1,-2.51,1,-2.54,1,-2.76,1,-2.79,1,-3.01,1,-3.05,1,-3.27,1,-3.31,1,-3.53,1,-3.76,1,-3.94,1,-3.8,2,-3.79,3,-3.78,2,-3.77,2,-3.76,1,-3.75,1,-3.56,1,-3.55,1,-3.53,1,-3.52,1,-3.51,1,-3.31,1,-3.3,1,-3.28,1,-3.27,1,-3.06,1,-3.04,1,-3.03,1,-3.01,1,-2.8,1,-2.78,1,-2.76,1,-2.55,1,-2.53,1,-2.51,1,-2.29,1,-2.27,1,-2.06,1,-2.03,1,-2,1,-1.79,1,-1.76,1,-1.54,1,-1.51,1,-1.29,1,-1.26,1,-1.04,1,-1.01,1,-0.79,1,-0.56,1,-0.53,1,-0.3,1,-0.26,1,-0.04,1,0,8,-83.97,1,-69.45,1,-56.18,1,-44.38,1,-34.06,1,-24.84,1,-17.29,1,-11.03,1,-6.06,1,-2.76,1,-0.55,1,0,5,-0.01,1,-0.02,1,-0.03,2,-0.05,1,-0.06,1,-0.26,1,-0.28,2,-0.5,1,-0.52,1,-0.54,1,-0.76,1,-0.78,1,-0.81,1,-1.03,1,-1.06,1,-1.28,1,-1.31,1,-1.53,1,-1.75,1,-1.79,1,-2.02,1,-2.05,1,-2.28,1,-2.51,1,-2.55,1,-2.77,1,-2.81,1,-3.04,1,-3.26,1,-3.29,1,-3.51,1,-3.55,1,-3.77,1,-3.79,1,-4.01,1,-4.03,1,-4.05,1,-4.26,2,-4.29,1,-4.3,3,-4.48,1,-4.31,4,-4.29,1,-4.28,1,-4.27,2,-4.25,1,-4.05,1,-4.04,1,-4.02,1,-3.81,1,-3.79,1,-3.77,1,-3.56,1,-3.54,1,-3.51,1,-3.29,1,-3.26,1,-3.05,1,-3.01,1,-2.8,1,-2.76,1,-2.54,1,-2.31,1,-2.28,1,-2.05,1,-2.01,1,-1.79,1,-1.56,1,-1.52,1,-1.3,1,-1.26,1,-1.04,1,-1.01,1,-0.78,1,-0.75,1,-0.54,1,-0.51,1,-0.3,1,-0.28,1,-0.25,1,-0.05,1,-0.03,1,-0.02,1,-0.01,1,0,3,},{1,125,0.72,119,},{1,125,0.72,119,},{1,244,},{0,244,},{0,244,},{0,244,}},3)
	du:setLogicParent(referUI_.instance368,referUI_)
	referUI_.instance370= cc.Sprite:create("battle_genjing_7.png")
	referUI_.instance370.name="instance370"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance370,container_,0.50,0.50,1,244,{{26.4,1,-7.3,1,-36.8,1,-62.55,1,-84.2,1,-102.05,1,-115.85,1,-125.7,1,-131.65,1,-133.6,1,-129.95,1,-127.15,1,-125.2,1,-123.95,1,-123.6,16,-123.65,4,-123.7,2,-123.75,2,-123.8,2,-123.85,1,-123.9,1,-123.95,1,-124,2,-124.05,1,-124.1,1,-124.2,1,-124.25,1,-124.3,1,-124.35,1,-124.45,1,-124.5,1,-124.55,1,-124.65,1,-124.7,1,-124.8,1,-124.85,1,-124.95,1,-125,1,-125.1,1,-125.15,1,-125.2,1,-125.3,1,-125.35,1,-125.4,1,-125.45,2,-125.5,1,-125.55,2,-125.6,9,-125.55,4,-125.5,1,-125.45,3,-125.4,2,-125.35,2,-125.25,1,-125.2,3,-125.1,1,-125.05,1,-124.95,1,-124.9,2,-124.75,1,-124.7,1,-124.65,1,-124.55,1,-124.5,1,-124.35,2,-124.2,1,-124.15,1,-124.05,2,-124,1,-123.85,2,-123.8,1,-123.75,2,-123.7,1,-123.65,2,-123.6,4,99.55,1,32.85,1,5.7,1,-18.9,1,-40.85,1,-60.25,1,-77.1,1,-91.3,1,-102.95,1,-112,1,-118.45,1,-122.35,1,-123.65,107,},{-163.9,1,-164.75,1,-165.5,1,-166.2,1,-166.75,1,-167.2,1,-167.55,1,-167.75,1,-167.95,2,-160.7,1,-155.1,1,-151.15,1,-148.7,1,-147.95,14,-148,2,-148.05,2,-148.1,1,-148.15,1,-148.2,1,-148.25,1,-148.3,1,-148.35,1,-148.45,1,-148.5,1,-148.6,1,-148.7,1,-148.8,1,-148.9,1,-149,1,-149.15,1,-149.25,1,-149.4,1,-149.55,1,-149.7,1,-149.85,1,-150,1,-150.2,1,-150.35,1,-150.55,1,-150.75,1,-150.95,1,-151.1,1,-151.3,1,-151.5,1,-151.65,1,-151.85,1,-152,1,-152.15,1,-152.3,1,-152.4,1,-152.55,1,-152.65,1,-152.7,1,-152.8,1,-152.85,1,-152.9,1,-152.95,6,-152.9,2,-152.85,2,-152.8,1,-152.75,1,-152.65,2,-152.6,1,-152.55,1,-152.4,2,-152.35,1,-152.2,1,-152.1,1,-152.05,1,-151.9,1,-151.8,1,-151.65,1,-151.5,1,-151.4,1,-151.2,1,-151.1,1,-150.85,1,-150.65,1,-150.5,1,-150.3,1,-150.1,1,-149.9,1,-149.8,1,-149.6,1,-149.4,1,-149.25,1,-149.05,1,-148.9,1,-148.75,1,-148.6,1,-148.5,1,-148.35,1,-148.25,1,-148.2,1,-148.1,2,-148,1,-147.95,3,-2.7,1,-110,21,-110.05,3,-110.1,1,-110.15,1,-110.2,1,-110.25,1,-110.3,1,-110.35,1,-110.45,1,-110.5,1,-110.6,1,-110.7,1,-110.8,1,-110.9,1,-111,1,-111.15,1,-111.25,1,-111.4,1,-111.55,1,-111.7,1,-111.85,1,-112,1,-112.15,1,-112.3,1,-112.45,1,-112.6,1,-112.8,1,-112.95,1,-113.1,1,-113.25,1,-113.4,1,-113.55,1,-113.7,1,-113.85,1,-113.95,1,-114.05,1,-114.2,1,-114.3,1,-114.35,1,-114.45,1,-114.5,1,-114.55,1,-114.6,1,-114.65,6,-114.6,2,-114.55,1,-114.5,1,-114.45,1,-114.4,1,-114.35,1,-114.3,1,-114.25,1,-114.15,1,-114.05,1,-114,1,-113.9,1,-113.8,1,-113.65,1,-113.55,1,-113.45,1,-113.3,1,-113.15,1,-113.05,1,-112.9,1,-112.75,1,-112.6,1,-112.45,1,-112.3,1,-112.1,1,-111.95,1,-111.8,1,-111.65,1,-111.5,1,-111.35,1,-111.2,1,-111.05,1,-110.9,1,-110.8,1,-110.65,1,-110.55,1,-110.45,1,-110.35,1,-110.3,1,-110.2,1,-110.15,1,-110.1,1,-110.05,1,-110,3,},{36.76,1,27.56,1,19.33,1,12.31,1,6.51,1,1.54,1,-2.04,1,-4.77,1,-6.3,1,-7,1,-4.31,1,-2.5,1,-1.03,1,-0.26,1,0,18,-0.01,1,-0.02,3,-0.03,2,-0.04,1,-0.05,1,-0.06,1,-0.25,1,-0.26,1,-0.27,1,-0.28,2,-0.3,1,-0.31,1,-0.51,1,-0.52,1,-0.54,1,-0.55,1,-0.75,1,-0.77,1,-0.78,1,-0.8,1,-1,1,-1.02,1,-1.04,1,-1.05,1,-1.25,1,-1.27,1,-1.28,1,-1.29,1,-1.31,1,-1.51,1,-1.52,1,-1.53,2,-1.54,2,-1.55,3,-1.71,1,-1.55,6,-1.54,3,-1.53,2,-1.52,2,-1.51,2,-1.31,1,-1.3,1,-1.29,1,-1.28,1,-1.27,1,-1.26,1,-1.25,1,-1.05,1,-1.04,1,-1.03,1,-1.01,1,-0.81,1,-0.8,1,-0.78,1,-0.77,1,-0.75,1,-0.55,1,-0.53,1,-0.52,1,-0.31,1,-0.3,1,-0.28,1,-0.27,1,-0.26,1,-0.06,1,-0.05,1,-0.04,1,-0.03,1,-0.02,1,-0.01,1,0,124,},{1,244,},{1,244,},{1,244,},{0,244,},{0,244,},{0,244,}},4)
	du:setLogicParent(referUI_.instance370,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_main_up_side:setSpecial(referUI_)
end

return p_main_up_side