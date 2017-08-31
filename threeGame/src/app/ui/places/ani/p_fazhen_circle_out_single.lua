--imports----------------------------------------------------------
local C_fazhen_circle_out_single_shine = require("src.app.ui.controls.ani.c_fazhen_circle_out_single_shine")

local p_fazhen_circle_out_single = {}

function p_fazhen_circle_out_single:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	referUI_.totalFrames=321
	local t=referUI_
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.instance591=C_fazhen_circle_out_single_shine.new();
	referUI_.instance591.name="instance591"
	mcControl:getInstance():addMcObjectToContainer(referUI_.instance591,container_,0.00,0.00,1,321,{{-59.2,1,-59.15,1,-58.85,1,-58.35,1,-57.7,1,-56.7,1,-55.55,1,-54.1,1,-52.4,1,-50.4,1,-48.15,1,-45.55,1,-42.55,1,-39.3,1,-35.7,1,-31.75,1,-27.55,1,-22.9,1,-18.05,1,-12.95,1,-7.75,1,-2.4,1,3.05,1,8.4,1,13.65,1,18.65,1,23.45,1,27.9,1,32,1,35.85,1,39.2,1,42.15,1,44.7,1,46.95,1,48.9,1,50.4,1,51.6,1,52.6,1,53.2,1,53.55,1,53.6,1,53.55,1,53.35,1,52.95,1,52.35,1,51.65,1,50.7,1,49.55,1,48.2,1,46.65,1,44.9,1,42.9,1,40.55,1,38,1,35.25,1,32.1,1,28.8,1,25.25,1,21.45,1,17.45,1,13.35,1,9.15,1,4.95,1,0.7,1,-3.35,1,-7.25,1,-11,1,-14.5,1,-17.7,1,-20.6,1,-23.3,1,-25.65,1,-27.7,1,-29.4,1,-30.85,1,-32.05,1,-33.05,1,-33.8,1,-34.25,1,-34.6,1,-34.7,2,-34.55,1,-34.5,1,-34.3,1,-34,1,-33.7,1,-33.35,1,-32.95,1,-32.5,1,-31.85,1,-31.1,1,-30.4,1,-29.55,1,-28.65,1,-27.65,1,-26.5,1,-25.35,1,-24.05,1,-22.75,1,-21.45,1,-20.1,1,-18.7,1,-17.25,1,-16,1,-14.7,1,-13.5,1,-12.35,1,-11.25,1,-10.3,1,-9.5,1,-8.65,1,-8,1,-7.4,1,-7,1,-6.55,1,-6.25,1,-6.05,1,-5.9,1,-5.8,1,-5.7,2,-5.85,1,-5.95,1,-6.05,1,-6.3,1,-6.6,1,-6.9,1,-7.35,1,-7.8,1,-8.3,1,-8.95,1,-9.65,1,-10.35,1,-11.25,1,-12.15,1,-13.15,1,-14.25,1,-15.35,1,-16.65,1,-17.8,1,-19.1,1,-20.4,1,-21.6,1,-22.85,1,-24,1,-25.1,1,-26.15,1,-27.2,1,-28,1,-28.8,1,-29.55,1,-30.1,1,-30.65,1,-31.05,1,-31.5,1,-31.75,1,-31.95,1,-32.1,1,-32.2,3,-32.05,1,-31.9,1,-31.7,1,-31.35,1,-30.85,1,-30.35,1,-29.75,1,-29.05,1,-28.2,1,-27.3,1,-26.25,1,-25,1,-23.75,1,-22.35,1,-20.85,1,-19.2,1,-17.5,1,-15.65,1,-13.8,1,-11.85,1,-9.9,1,-7.95,1,-6.15,1,-4.3,1,-2.6,1,-1,1,0.45,1,1.85,1,3.05,1,4.1,1,5.05,1,5.8,1,6.4,1,7.05,1,7.45,1,7.8,1,8,1,8.2,1,8.15,1,8.1,1,7.95,1,7.65,1,7.15,1,6.55,1,5.75,1,4.85,1,3.7,1,2.4,1,0.9,1,-0.8,1,-2.75,1,-4.9,1,-7.25,1,-9.8,1,-12.6,1,-15.65,1,-18.8,1,-22.15,1,-25.6,1,-29.25,1,-32.85,1,-36.45,1,-40.1,1,-43.6,1,-46.9,1,-50.05,1,-53,1,-55.7,1,-58.1,1,-60.35,1,-62.3,1,-64,1,-65.4,1,-66.7,1,-67.65,1,-68.5,1,-69.05,1,-69.5,1,-69.7,1,-69.85,1,-69.9,2,-69.85,1,-69.8,3,-69.7,1,-69.75,1,-69.7,1,-69.65,1,-69.6,1,-69.55,1,-69.5,1,-69.4,1,-69.25,3,-69.05,1,-68.95,1,-68.9,1,-68.75,1,-68.7,1,-68.5,1,-68.45,1,-68.3,1,-68.2,1,-68.05,1,-67.95,1,-67.8,1,-67.65,1,-67.55,1,-67.4,1,-67.25,1,-67.05,1,-66.9,1,-66.85,1,-66.65,1,-66.5,1,-66.35,1,-66.1,1,-65.95,1,-65.7,1,-65.6,1,-65.35,1,-65.1,1,-64.8,1,-64.5,1,-64.25,1,-63.95,1,-63.65,1,-63.3,1,-62.95,1,-62.65,1,-62.4,1,-62.1,1,-61.9,1,-61.6,1,-61.4,1,-61.2,1,-60.95,1,-60.8,1,-60.6,1,-60.45,1,-60.3,1,-60.2,1,-60.1,1,-59.95,1,-59.85,1,-59.75,1,-59.6,1,-59.5,1,-59.45,1,-59.35,1,-59.3,3,-59.2,3,},{71.05,1,71,1,71.15,1,71.25,1,71.4,1,71.65,1,71.95,1,72.35,1,72.7,1,73.2,1,73.8,1,74.4,1,75.1,1,76,1,76.85,1,77.8,1,78.85,1,80,1,81.25,1,82.35,1,83.75,1,85.05,1,86.4,1,87.7,1,88.95,1,90.25,1,91.4,1,92.5,1,93.55,1,94.45,1,95.35,1,96.05,1,96.7,1,97.3,1,97.7,1,98.1,1,98.45,1,98.6,1,98.85,2,99,2,99.1,1,99.15,1,99.3,1,99.55,1,99.65,1,100,1,100.3,1,100.65,1,101.1,1,101.6,1,102.1,1,102.8,1,103.45,1,104.15,1,105,1,105.9,1,106.75,1,107.8,1,108.75,1,109.75,1,110.85,1,111.9,1,112.9,1,113.85,1,114.75,1,115.6,1,116.4,1,117.1,1,117.75,1,118.35,1,118.85,1,119.25,1,119.6,1,120,1,120.15,1,120.35,1,120.4,1,120.55,1,120.5,1,120.55,1,120.65,1,120.95,1,121.3,1,121.75,1,122.35,1,123.15,1,124.05,1,125.05,1,126.25,1,127.6,1,129.15,1,130.8,1,132.65,1,134.7,1,136.95,1,139.35,1,141.85,1,144.5,1,147.2,1,150,1,152.75,1,155.5,1,158.25,1,160.85,1,163.35,1,165.7,1,167.8,1,169.7,1,171.45,1,173.05,1,174.4,1,175.45,1,176.55,1,177.3,1,177.95,1,178.35,1,178.7,1,178.95,1,179.05,2,179,1,178.9,1,178.8,1,178.65,1,178.45,1,178.25,1,178,1,177.65,1,177.4,1,177,1,176.5,1,175.9,1,175.35,1,174.8,1,174.1,1,173.45,1,172.7,1,171.9,1,171.1,1,170.3,1,169.4,1,168.6,1,167.8,1,167,1,166.3,1,165.6,1,165,1,164.35,1,163.9,1,163.45,1,163.05,1,162.7,1,162.35,1,162.1,1,161.9,1,161.75,1,161.7,1,161.6,1,161.7,1,161.75,1,161.8,1,161.85,1,162,1,162.15,1,162.3,1,162.55,1,162.9,1,163.2,1,163.6,1,164,1,164.5,1,165.05,1,165.7,1,166.35,1,167.1,1,167.85,1,168.65,1,169.5,1,170.45,1,171.35,1,172.25,1,173.15,1,174,1,174.85,1,175.65,1,176.4,1,177.15,1,177.75,1,178.35,1,178.75,1,179.25,1,179.6,1,179.95,1,180.25,1,180.4,1,180.55,1,180.65,1,180.75,1,180.65,4,180.6,4,180.55,1,180.5,2,180.4,1,180.35,1,180.3,1,180.25,1,180.2,1,180.1,2,179.95,1,179.85,1,179.8,1,179.7,1,179.6,1,179.5,1,179.4,1,179.25,1,179.3,1,179.25,1,179.1,1,179.05,1,178.95,2,178.85,1,178.8,1,178.75,4,178.7,3,178.6,2,178.5,1,178.45,1,178.3,1,178.15,1,177.95,1,177.7,1,177.45,1,177.05,1,176.7,1,176.35,1,175.95,1,175.35,1,174.9,1,174.25,1,173.6,1,172.95,1,172.2,1,171.35,1,170.55,1,169.7,1,168.75,1,167.75,1,166.65,1,165.55,1,164.4,1,163.15,1,161.9,1,160.5,1,159.1,1,157.6,1,156.05,1,154.4,1,152.75,1,150.95,1,149.1,1,147.2,1,145.15,1,143.1,1,140.95,1,138.75,1,136.5,1,134.05,1,131.7,1,129.25,1,126.7,1,124.2,1,121.6,1,119.05,1,116.45,1,113.85,1,111.3,1,108.8,1,106.25,1,103.75,1,101.35,1,98.95,1,96.65,1,94.4,1,92.2,1,90.1,1,88.05,1,86.2,1,84.35,1,82.6,1,81,1,79.5,1,78.15,1,76.95,1,75.85,1,74.8,1,73.9,1,73.1,1,72.5,1,71.95,1,71.65,1,71.4,1,71.2,1,71.05,1,},{138.03,1,137.9,1,137.66,1,137.38,1,136.86,1,136.11,1,135.12,1,133.9,1,132.62,1,131.09,1,129.13,1,127.11,1,124.83,1,122.31,1,119.34,1,116.3,1,112.82,1,109.28,1,105.32,1,101.31,1,97.26,1,93.01,1,88.94,1,84.7,1,80.47,1,76.47,1,72.71,1,69.19,1,65.94,1,62.94,1,60.39,1,57.92,1,55.9,1,54.14,1,52.64,1,51.39,1,50.4,1,49.65,1,49.15,1,48.88,1,48.77,1,48.65,1,48.41,1,48.12,1,47.6,1,46.85,1,45.86,1,44.63,1,43.35,1,41.63,1,39.85,1,37.82,1,35.35,1,32.81,1,29.83,1,26.6,1,23.3,1,19.56,1,15.77,1,11.56,1,7.31,1,3.05,1,-1.04,1,-5.3,1,-9.54,1,-13.55,1,-17.33,1,-21.04,1,-24.31,1,-27.31,1,-30.06,1,-32.35,1,-34.56,1,-36.33,1,-37.83,1,-39.09,1,-40.09,1,-40.83,1,-41.34,1,-41.6,1,-41.68,1,-41.62,1,-41.61,1,-41.6,1,-41.38,1,-41.35,1,-41.11,1,-40.87,1,-40.62,1,-40.36,1,-40.08,1,-39.61,1,-39.13,1,-38.63,1,-38.12,1,-37.6,1,-36.87,1,-36.33,1,-35.58,1,-34.83,1,-34.07,1,-33.12,1,-32.35,1,-31.59,1,-30.83,1,-30.08,1,-29.34,1,-28.8,1,-28.08,1,-27.56,1,-27.06,1,-26.57,1,-26.29,1,-25.83,1,-25.57,1,-25.33,1,-25.09,1,-25.06,1,-25.04,1,-24.84,1,-24.94,1,-24.83,1,-24.81,1,-24.79,1,-24.57,1,-24.53,1,-24.3,1,-24.04,1,-23.78,1,-23.32,1,-23.03,1,-22.54,1,-22.04,1,-21.34,1,-20.81,1,-20.07,1,-19.32,1,-18.56,1,-17.79,1,-16.82,1,-16.03,1,-15.04,1,-14.06,1,-13.26,1,-12.29,1,-11.32,1,-10.55,1,-9.8,1,-9.05,1,-8.52,1,-7.81,1,-7.31,1,-7,1,-6.53,1,-6.27,1,-6.01,1,-5.77,1,-5.54,1,-5.51,1,-5.31,1,-5.46,1,-5.29,1,-5.06,1,-4.8,1,-4.31,1,-3.79,1,-3.04,1,-2.26,1,-1.05,1,0,1,1.3,1,3.02,1,4.79,1,6.8,1,9.05,1,11.54,1,14.27,1,17.05,1,20.06,1,23.29,1,26.55,1,29.83,1,33.31,1,36.59,1,39.85,1,42.89,1,45.89,1,48.66,1,51.37,1,53.64,1,55.67,1,57.64,1,59.17,1,60.65,1,61.7,1,62.69,1,63.44,1,63.96,1,64.44,1,64.68,1,64.7,2,64.68,1,64.65,1,64.43,1,64.19,1,63.94,1,63.67,1,63.2,1,62.9,1,62.4,1,61.69,1,61.15,1,60.41,1,59.65,1,58.68,1,57.69,1,56.68,1,55.66,1,54.63,1,53.39,1,52.15,1,50.9,1,49.66,1,48.41,1,47.37,1,46.15,1,45.13,1,44.13,1,43.15,1,42.38,1,41.63,1,41.09,1,40.38,1,39.88,1,39.59,1,39.13,1,38.87,1,38.63,1,38.6,1,38.58,1,38.49,1,38.36,1,38.09,1,37.59,1,36.85,1,35.86,1,34.81,1,33.34,1,31.61,1,29.83,1,27.8,1,25.33,1,22.79,1,19.82,1,16.78,1,13.29,1,9.55,1,5.55,1,1.29,1,-3.05,1,-8.02,1,-13.27,1,-18.78,1,-24.57,1,-30.83,1,-37.36,1,-44.36,1,-51.63,1,-59.18,1,-67.2,1,-75.68,1,-84.44,1,-93.29,1,-102.8,1,-112.79,1,-123.09,1,-133.86,1,-144.91,1,-156.44,1,-168.24,1,179.69,1,166.97,1,153.96,1,140.66,1,127.09,1,113.08,1,99.02,1,84.73,1,70.2,1,55.42,1,40.6,1,25.58,1,10.77,1,-4,1,-18.57,1,-33.31,1,-47.62,1,-61.67,1,-75.43,1,-88.69,1,-101.27,1,-113.56,1,-125.34,1,-136.6,1,-147.14,1,-156.94,1,-166.2,1,-174.7,1,177.72,1,170.7,1,164.23,1,158.68,1,153.68,1,149.43,1,145.91,1,143.12,1,140.88,1,139.36,1,138.38,1,138.03,1,},{1,321,},{1,321,},{1,321,},{0,321,},{0,321,},{0,321,}},1)
	table.insert(referUI_.uiList,referUI_.instance591)
	du:setLogicParent(referUI_.instance591,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end
    self:setSpecial(referUI_)
end

function p_fazhen_circle_out_single:setSpecial(referUI_)
end

return p_fazhen_circle_out_single