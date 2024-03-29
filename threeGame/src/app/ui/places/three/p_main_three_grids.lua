--imports----------------------------------------------------------
local C_main_three_grids_grid = require("src.app.ui.controls.three.c_main_three_grids_grid")

local uiState=require("src.app.base.ui.uiState")
local p_main_three_grids = {}

function p_main_three_grids:initPlace(referUI_,container_)
	local du=displayUtils:getInstance()
	local lu=languageUtils:getInstance()
	local uc=uiControl:getInstance()
	local _maskInfos={}
	--Place all displays----------------------------------------------------------
	referUI_.g_8_1=C_main_three_grids_grid.new();
	referUI_.g_8_1.name="g_8_1"
	du:placeAndAddChildToContainer(referUI_.g_8_1,container_,0.00,0.00,199.05,497.65,0,1,1,1,1)
	table.insert(referUI_.uiList,referUI_.g_8_1)
	du:setLogicParent(referUI_.g_8_1,referUI_)
	referUI_.g_7_1=C_main_three_grids_grid.new();
	referUI_.g_7_1.name="g_7_1"
	du:placeAndAddChildToContainer(referUI_.g_7_1,container_,0.00,0.00,132.7,497.65,0,1,1,1,2)
	table.insert(referUI_.uiList,referUI_.g_7_1)
	du:setLogicParent(referUI_.g_7_1,referUI_)
	referUI_.g_6_1=C_main_three_grids_grid.new();
	referUI_.g_6_1.name="g_6_1"
	du:placeAndAddChildToContainer(referUI_.g_6_1,container_,0.00,0.00,66.35,497.65,0,1,1,1,3)
	table.insert(referUI_.uiList,referUI_.g_6_1)
	du:setLogicParent(referUI_.g_6_1,referUI_)
	referUI_.g_5_1=C_main_three_grids_grid.new();
	referUI_.g_5_1.name="g_5_1"
	du:placeAndAddChildToContainer(referUI_.g_5_1,container_,0.00,0.00,0,497.65,0,1,1,1,4)
	table.insert(referUI_.uiList,referUI_.g_5_1)
	du:setLogicParent(referUI_.g_5_1,referUI_)
	referUI_.g_4_1=C_main_three_grids_grid.new();
	referUI_.g_4_1.name="g_4_1"
	du:placeAndAddChildToContainer(referUI_.g_4_1,container_,0.00,0.00,-66.35,497.65,0,1,1,1,5)
	table.insert(referUI_.uiList,referUI_.g_4_1)
	du:setLogicParent(referUI_.g_4_1,referUI_)
	referUI_.g_3_1=C_main_three_grids_grid.new();
	referUI_.g_3_1.name="g_3_1"
	du:placeAndAddChildToContainer(referUI_.g_3_1,container_,0.00,0.00,-132.7,497.65,0,1,1,1,6)
	table.insert(referUI_.uiList,referUI_.g_3_1)
	du:setLogicParent(referUI_.g_3_1,referUI_)
	referUI_.g_2_1=C_main_three_grids_grid.new();
	referUI_.g_2_1.name="g_2_1"
	du:placeAndAddChildToContainer(referUI_.g_2_1,container_,0.00,0.00,-199.05,497.65,0,1,1,1,7)
	table.insert(referUI_.uiList,referUI_.g_2_1)
	du:setLogicParent(referUI_.g_2_1,referUI_)
	referUI_.g_1_1=C_main_three_grids_grid.new();
	referUI_.g_1_1.name="g_1_1"
	du:placeAndAddChildToContainer(referUI_.g_1_1,container_,0.00,0.00,-265.4,497.65,0,1,1,1,8)
	table.insert(referUI_.uiList,referUI_.g_1_1)
	du:setLogicParent(referUI_.g_1_1,referUI_)
	referUI_.g_9_1=C_main_three_grids_grid.new();
	referUI_.g_9_1.name="g_9_1"
	du:placeAndAddChildToContainer(referUI_.g_9_1,container_,0.00,0.00,265.4,497.65,0,1,1,1,9)
	table.insert(referUI_.uiList,referUI_.g_9_1)
	du:setLogicParent(referUI_.g_9_1,referUI_)
	referUI_.g_8_2=C_main_three_grids_grid.new();
	referUI_.g_8_2.name="g_8_2"
	du:placeAndAddChildToContainer(referUI_.g_8_2,container_,0.00,0.00,199.05,431.15,0,1,1,1,10)
	table.insert(referUI_.uiList,referUI_.g_8_2)
	du:setLogicParent(referUI_.g_8_2,referUI_)
	referUI_.g_7_2=C_main_three_grids_grid.new();
	referUI_.g_7_2.name="g_7_2"
	du:placeAndAddChildToContainer(referUI_.g_7_2,container_,0.00,0.00,132.7,431.15,0,1,1,1,11)
	table.insert(referUI_.uiList,referUI_.g_7_2)
	du:setLogicParent(referUI_.g_7_2,referUI_)
	referUI_.g_6_2=C_main_three_grids_grid.new();
	referUI_.g_6_2.name="g_6_2"
	du:placeAndAddChildToContainer(referUI_.g_6_2,container_,0.00,0.00,66.35,431.15,0,1,1,1,12)
	table.insert(referUI_.uiList,referUI_.g_6_2)
	du:setLogicParent(referUI_.g_6_2,referUI_)
	referUI_.g_5_2=C_main_three_grids_grid.new();
	referUI_.g_5_2.name="g_5_2"
	du:placeAndAddChildToContainer(referUI_.g_5_2,container_,0.00,0.00,0,431.15,0,1,1,1,13)
	table.insert(referUI_.uiList,referUI_.g_5_2)
	du:setLogicParent(referUI_.g_5_2,referUI_)
	referUI_.g_4_2=C_main_three_grids_grid.new();
	referUI_.g_4_2.name="g_4_2"
	du:placeAndAddChildToContainer(referUI_.g_4_2,container_,0.00,0.00,-66.35,431.15,0,1,1,1,14)
	table.insert(referUI_.uiList,referUI_.g_4_2)
	du:setLogicParent(referUI_.g_4_2,referUI_)
	referUI_.g_3_2=C_main_three_grids_grid.new();
	referUI_.g_3_2.name="g_3_2"
	du:placeAndAddChildToContainer(referUI_.g_3_2,container_,0.00,0.00,-132.7,431.15,0,1,1,1,15)
	table.insert(referUI_.uiList,referUI_.g_3_2)
	du:setLogicParent(referUI_.g_3_2,referUI_)
	referUI_.g_2_2=C_main_three_grids_grid.new();
	referUI_.g_2_2.name="g_2_2"
	du:placeAndAddChildToContainer(referUI_.g_2_2,container_,0.00,0.00,-199.05,431.15,0,1,1,1,16)
	table.insert(referUI_.uiList,referUI_.g_2_2)
	du:setLogicParent(referUI_.g_2_2,referUI_)
	referUI_.g_1_2=C_main_three_grids_grid.new();
	referUI_.g_1_2.name="g_1_2"
	du:placeAndAddChildToContainer(referUI_.g_1_2,container_,0.00,0.00,-265.4,431.15,0,1,1,1,17)
	table.insert(referUI_.uiList,referUI_.g_1_2)
	du:setLogicParent(referUI_.g_1_2,referUI_)
	referUI_.g_9_2=C_main_three_grids_grid.new();
	referUI_.g_9_2.name="g_9_2"
	du:placeAndAddChildToContainer(referUI_.g_9_2,container_,0.00,0.00,265.4,431.15,0,1,1,1,18)
	table.insert(referUI_.uiList,referUI_.g_9_2)
	du:setLogicParent(referUI_.g_9_2,referUI_)
	referUI_.g_8_3=C_main_three_grids_grid.new();
	referUI_.g_8_3.name="g_8_3"
	du:placeAndAddChildToContainer(referUI_.g_8_3,container_,0.00,0.00,199.05,364.65,0,1,1,1,19)
	table.insert(referUI_.uiList,referUI_.g_8_3)
	du:setLogicParent(referUI_.g_8_3,referUI_)
	referUI_.g_7_3=C_main_three_grids_grid.new();
	referUI_.g_7_3.name="g_7_3"
	du:placeAndAddChildToContainer(referUI_.g_7_3,container_,0.00,0.00,132.7,364.65,0,1,1,1,20)
	table.insert(referUI_.uiList,referUI_.g_7_3)
	du:setLogicParent(referUI_.g_7_3,referUI_)
	referUI_.g_6_3=C_main_three_grids_grid.new();
	referUI_.g_6_3.name="g_6_3"
	du:placeAndAddChildToContainer(referUI_.g_6_3,container_,0.00,0.00,66.35,364.65,0,1,1,1,21)
	table.insert(referUI_.uiList,referUI_.g_6_3)
	du:setLogicParent(referUI_.g_6_3,referUI_)
	referUI_.g_5_3=C_main_three_grids_grid.new();
	referUI_.g_5_3.name="g_5_3"
	du:placeAndAddChildToContainer(referUI_.g_5_3,container_,0.00,0.00,0,364.65,0,1,1,1,22)
	table.insert(referUI_.uiList,referUI_.g_5_3)
	du:setLogicParent(referUI_.g_5_3,referUI_)
	referUI_.g_4_3=C_main_three_grids_grid.new();
	referUI_.g_4_3.name="g_4_3"
	du:placeAndAddChildToContainer(referUI_.g_4_3,container_,0.00,0.00,-66.35,364.65,0,1,1,1,23)
	table.insert(referUI_.uiList,referUI_.g_4_3)
	du:setLogicParent(referUI_.g_4_3,referUI_)
	referUI_.g_3_3=C_main_three_grids_grid.new();
	referUI_.g_3_3.name="g_3_3"
	du:placeAndAddChildToContainer(referUI_.g_3_3,container_,0.00,0.00,-132.7,364.65,0,1,1,1,24)
	table.insert(referUI_.uiList,referUI_.g_3_3)
	du:setLogicParent(referUI_.g_3_3,referUI_)
	referUI_.g_2_3=C_main_three_grids_grid.new();
	referUI_.g_2_3.name="g_2_3"
	du:placeAndAddChildToContainer(referUI_.g_2_3,container_,0.00,0.00,-199.05,364.65,0,1,1,1,25)
	table.insert(referUI_.uiList,referUI_.g_2_3)
	du:setLogicParent(referUI_.g_2_3,referUI_)
	referUI_.g_1_3=C_main_three_grids_grid.new();
	referUI_.g_1_3.name="g_1_3"
	du:placeAndAddChildToContainer(referUI_.g_1_3,container_,0.00,0.00,-265.4,364.65,0,1,1,1,26)
	table.insert(referUI_.uiList,referUI_.g_1_3)
	du:setLogicParent(referUI_.g_1_3,referUI_)
	referUI_.g_9_3=C_main_three_grids_grid.new();
	referUI_.g_9_3.name="g_9_3"
	du:placeAndAddChildToContainer(referUI_.g_9_3,container_,0.00,0.00,265.4,364.65,0,1,1,1,27)
	table.insert(referUI_.uiList,referUI_.g_9_3)
	du:setLogicParent(referUI_.g_9_3,referUI_)
	referUI_.g_8_4=C_main_three_grids_grid.new();
	referUI_.g_8_4.name="g_8_4"
	du:placeAndAddChildToContainer(referUI_.g_8_4,container_,0.00,0.00,199.05,298.15,0,1,1,1,28)
	table.insert(referUI_.uiList,referUI_.g_8_4)
	du:setLogicParent(referUI_.g_8_4,referUI_)
	referUI_.g_7_4=C_main_three_grids_grid.new();
	referUI_.g_7_4.name="g_7_4"
	du:placeAndAddChildToContainer(referUI_.g_7_4,container_,0.00,0.00,132.7,298.15,0,1,1,1,29)
	table.insert(referUI_.uiList,referUI_.g_7_4)
	du:setLogicParent(referUI_.g_7_4,referUI_)
	referUI_.g_6_4=C_main_three_grids_grid.new();
	referUI_.g_6_4.name="g_6_4"
	du:placeAndAddChildToContainer(referUI_.g_6_4,container_,0.00,0.00,66.35,298.15,0,1,1,1,30)
	table.insert(referUI_.uiList,referUI_.g_6_4)
	du:setLogicParent(referUI_.g_6_4,referUI_)
	referUI_.g_5_4=C_main_three_grids_grid.new();
	referUI_.g_5_4.name="g_5_4"
	du:placeAndAddChildToContainer(referUI_.g_5_4,container_,0.00,0.00,0,298.15,0,1,1,1,31)
	table.insert(referUI_.uiList,referUI_.g_5_4)
	du:setLogicParent(referUI_.g_5_4,referUI_)
	referUI_.g_4_4=C_main_three_grids_grid.new();
	referUI_.g_4_4.name="g_4_4"
	du:placeAndAddChildToContainer(referUI_.g_4_4,container_,0.00,0.00,-66.35,298.15,0,1,1,1,32)
	table.insert(referUI_.uiList,referUI_.g_4_4)
	du:setLogicParent(referUI_.g_4_4,referUI_)
	referUI_.g_3_4=C_main_three_grids_grid.new();
	referUI_.g_3_4.name="g_3_4"
	du:placeAndAddChildToContainer(referUI_.g_3_4,container_,0.00,0.00,-132.7,298.15,0,1,1,1,33)
	table.insert(referUI_.uiList,referUI_.g_3_4)
	du:setLogicParent(referUI_.g_3_4,referUI_)
	referUI_.g_2_4=C_main_three_grids_grid.new();
	referUI_.g_2_4.name="g_2_4"
	du:placeAndAddChildToContainer(referUI_.g_2_4,container_,0.00,0.00,-199.05,298.15,0,1,1,1,34)
	table.insert(referUI_.uiList,referUI_.g_2_4)
	du:setLogicParent(referUI_.g_2_4,referUI_)
	referUI_.g_1_4=C_main_three_grids_grid.new();
	referUI_.g_1_4.name="g_1_4"
	du:placeAndAddChildToContainer(referUI_.g_1_4,container_,0.00,0.00,-265.4,298.15,0,1,1,1,35)
	table.insert(referUI_.uiList,referUI_.g_1_4)
	du:setLogicParent(referUI_.g_1_4,referUI_)
	referUI_.g_9_4=C_main_three_grids_grid.new();
	referUI_.g_9_4.name="g_9_4"
	du:placeAndAddChildToContainer(referUI_.g_9_4,container_,0.00,0.00,265.4,298.15,0,1,1,1,36)
	table.insert(referUI_.uiList,referUI_.g_9_4)
	du:setLogicParent(referUI_.g_9_4,referUI_)
	referUI_.g_8_5=C_main_three_grids_grid.new();
	referUI_.g_8_5.name="g_8_5"
	du:placeAndAddChildToContainer(referUI_.g_8_5,container_,0.00,0.00,199.05,231.65,0,1,1,1,37)
	table.insert(referUI_.uiList,referUI_.g_8_5)
	du:setLogicParent(referUI_.g_8_5,referUI_)
	referUI_.g_7_5=C_main_three_grids_grid.new();
	referUI_.g_7_5.name="g_7_5"
	du:placeAndAddChildToContainer(referUI_.g_7_5,container_,0.00,0.00,132.7,231.65,0,1,1,1,38)
	table.insert(referUI_.uiList,referUI_.g_7_5)
	du:setLogicParent(referUI_.g_7_5,referUI_)
	referUI_.g_6_5=C_main_three_grids_grid.new();
	referUI_.g_6_5.name="g_6_5"
	du:placeAndAddChildToContainer(referUI_.g_6_5,container_,0.00,0.00,66.35,231.65,0,1,1,1,39)
	table.insert(referUI_.uiList,referUI_.g_6_5)
	du:setLogicParent(referUI_.g_6_5,referUI_)
	referUI_.g_5_5=C_main_three_grids_grid.new();
	referUI_.g_5_5.name="g_5_5"
	du:placeAndAddChildToContainer(referUI_.g_5_5,container_,0.00,0.00,0,231.65,0,1,1,1,40)
	table.insert(referUI_.uiList,referUI_.g_5_5)
	du:setLogicParent(referUI_.g_5_5,referUI_)
	referUI_.g_4_5=C_main_three_grids_grid.new();
	referUI_.g_4_5.name="g_4_5"
	du:placeAndAddChildToContainer(referUI_.g_4_5,container_,0.00,0.00,-66.35,231.65,0,1,1,1,41)
	table.insert(referUI_.uiList,referUI_.g_4_5)
	du:setLogicParent(referUI_.g_4_5,referUI_)
	referUI_.g_3_5=C_main_three_grids_grid.new();
	referUI_.g_3_5.name="g_3_5"
	du:placeAndAddChildToContainer(referUI_.g_3_5,container_,0.00,0.00,-132.7,231.65,0,1,1,1,42)
	table.insert(referUI_.uiList,referUI_.g_3_5)
	du:setLogicParent(referUI_.g_3_5,referUI_)
	referUI_.g_2_5=C_main_three_grids_grid.new();
	referUI_.g_2_5.name="g_2_5"
	du:placeAndAddChildToContainer(referUI_.g_2_5,container_,0.00,0.00,-199.05,231.65,0,1,1,1,43)
	table.insert(referUI_.uiList,referUI_.g_2_5)
	du:setLogicParent(referUI_.g_2_5,referUI_)
	referUI_.g_1_5=C_main_three_grids_grid.new();
	referUI_.g_1_5.name="g_1_5"
	du:placeAndAddChildToContainer(referUI_.g_1_5,container_,0.00,0.00,-265.4,231.65,0,1,1,1,44)
	table.insert(referUI_.uiList,referUI_.g_1_5)
	du:setLogicParent(referUI_.g_1_5,referUI_)
	referUI_.g_9_5=C_main_three_grids_grid.new();
	referUI_.g_9_5.name="g_9_5"
	du:placeAndAddChildToContainer(referUI_.g_9_5,container_,0.00,0.00,265.4,231.65,0,1,1,1,45)
	table.insert(referUI_.uiList,referUI_.g_9_5)
	du:setLogicParent(referUI_.g_9_5,referUI_)
	referUI_.g_8_6=C_main_three_grids_grid.new();
	referUI_.g_8_6.name="g_8_6"
	du:placeAndAddChildToContainer(referUI_.g_8_6,container_,0.00,0.00,199.05,165.15,0,1,1,1,46)
	table.insert(referUI_.uiList,referUI_.g_8_6)
	du:setLogicParent(referUI_.g_8_6,referUI_)
	referUI_.g_7_6=C_main_three_grids_grid.new();
	referUI_.g_7_6.name="g_7_6"
	du:placeAndAddChildToContainer(referUI_.g_7_6,container_,0.00,0.00,132.7,165.15,0,1,1,1,47)
	table.insert(referUI_.uiList,referUI_.g_7_6)
	du:setLogicParent(referUI_.g_7_6,referUI_)
	referUI_.g_6_6=C_main_three_grids_grid.new();
	referUI_.g_6_6.name="g_6_6"
	du:placeAndAddChildToContainer(referUI_.g_6_6,container_,0.00,0.00,66.35,165.15,0,1,1,1,48)
	table.insert(referUI_.uiList,referUI_.g_6_6)
	du:setLogicParent(referUI_.g_6_6,referUI_)
	referUI_.g_5_6=C_main_three_grids_grid.new();
	referUI_.g_5_6.name="g_5_6"
	du:placeAndAddChildToContainer(referUI_.g_5_6,container_,0.00,0.00,0,165.15,0,1,1,1,49)
	table.insert(referUI_.uiList,referUI_.g_5_6)
	du:setLogicParent(referUI_.g_5_6,referUI_)
	referUI_.g_4_6=C_main_three_grids_grid.new();
	referUI_.g_4_6.name="g_4_6"
	du:placeAndAddChildToContainer(referUI_.g_4_6,container_,0.00,0.00,-66.35,165.15,0,1,1,1,50)
	table.insert(referUI_.uiList,referUI_.g_4_6)
	du:setLogicParent(referUI_.g_4_6,referUI_)
	referUI_.g_3_6=C_main_three_grids_grid.new();
	referUI_.g_3_6.name="g_3_6"
	du:placeAndAddChildToContainer(referUI_.g_3_6,container_,0.00,0.00,-132.7,165.15,0,1,1,1,51)
	table.insert(referUI_.uiList,referUI_.g_3_6)
	du:setLogicParent(referUI_.g_3_6,referUI_)
	referUI_.g_2_6=C_main_three_grids_grid.new();
	referUI_.g_2_6.name="g_2_6"
	du:placeAndAddChildToContainer(referUI_.g_2_6,container_,0.00,0.00,-199.05,165.15,0,1,1,1,52)
	table.insert(referUI_.uiList,referUI_.g_2_6)
	du:setLogicParent(referUI_.g_2_6,referUI_)
	referUI_.g_1_6=C_main_three_grids_grid.new();
	referUI_.g_1_6.name="g_1_6"
	du:placeAndAddChildToContainer(referUI_.g_1_6,container_,0.00,0.00,-265.4,165.15,0,1,1,1,53)
	table.insert(referUI_.uiList,referUI_.g_1_6)
	du:setLogicParent(referUI_.g_1_6,referUI_)
	referUI_.g_9_6=C_main_three_grids_grid.new();
	referUI_.g_9_6.name="g_9_6"
	du:placeAndAddChildToContainer(referUI_.g_9_6,container_,0.00,0.00,265.4,165.15,0,1,1,1,54)
	table.insert(referUI_.uiList,referUI_.g_9_6)
	du:setLogicParent(referUI_.g_9_6,referUI_)
	referUI_.g_8_7=C_main_three_grids_grid.new();
	referUI_.g_8_7.name="g_8_7"
	du:placeAndAddChildToContainer(referUI_.g_8_7,container_,0.00,0.00,199.05,98.65,0,1,1,1,55)
	table.insert(referUI_.uiList,referUI_.g_8_7)
	du:setLogicParent(referUI_.g_8_7,referUI_)
	referUI_.g_7_7=C_main_three_grids_grid.new();
	referUI_.g_7_7.name="g_7_7"
	du:placeAndAddChildToContainer(referUI_.g_7_7,container_,0.00,0.00,132.7,98.65,0,1,1,1,56)
	table.insert(referUI_.uiList,referUI_.g_7_7)
	du:setLogicParent(referUI_.g_7_7,referUI_)
	referUI_.g_6_7=C_main_three_grids_grid.new();
	referUI_.g_6_7.name="g_6_7"
	du:placeAndAddChildToContainer(referUI_.g_6_7,container_,0.00,0.00,66.35,98.65,0,1,1,1,57)
	table.insert(referUI_.uiList,referUI_.g_6_7)
	du:setLogicParent(referUI_.g_6_7,referUI_)
	referUI_.g_5_7=C_main_three_grids_grid.new();
	referUI_.g_5_7.name="g_5_7"
	du:placeAndAddChildToContainer(referUI_.g_5_7,container_,0.00,0.00,0,98.65,0,1,1,1,58)
	table.insert(referUI_.uiList,referUI_.g_5_7)
	du:setLogicParent(referUI_.g_5_7,referUI_)
	referUI_.g_4_7=C_main_three_grids_grid.new();
	referUI_.g_4_7.name="g_4_7"
	du:placeAndAddChildToContainer(referUI_.g_4_7,container_,0.00,0.00,-66.35,98.65,0,1,1,1,59)
	table.insert(referUI_.uiList,referUI_.g_4_7)
	du:setLogicParent(referUI_.g_4_7,referUI_)
	referUI_.g_3_7=C_main_three_grids_grid.new();
	referUI_.g_3_7.name="g_3_7"
	du:placeAndAddChildToContainer(referUI_.g_3_7,container_,0.00,0.00,-132.7,98.65,0,1,1,1,60)
	table.insert(referUI_.uiList,referUI_.g_3_7)
	du:setLogicParent(referUI_.g_3_7,referUI_)
	referUI_.g_2_7=C_main_three_grids_grid.new();
	referUI_.g_2_7.name="g_2_7"
	du:placeAndAddChildToContainer(referUI_.g_2_7,container_,0.00,0.00,-199.05,98.65,0,1,1,1,61)
	table.insert(referUI_.uiList,referUI_.g_2_7)
	du:setLogicParent(referUI_.g_2_7,referUI_)
	referUI_.g_1_7=C_main_three_grids_grid.new();
	referUI_.g_1_7.name="g_1_7"
	du:placeAndAddChildToContainer(referUI_.g_1_7,container_,0.00,0.00,-265.4,98.65,0,1,1,1,62)
	table.insert(referUI_.uiList,referUI_.g_1_7)
	du:setLogicParent(referUI_.g_1_7,referUI_)
	referUI_.g_9_7=C_main_three_grids_grid.new();
	referUI_.g_9_7.name="g_9_7"
	du:placeAndAddChildToContainer(referUI_.g_9_7,container_,0.00,0.00,265.4,98.65,0,1,1,1,63)
	table.insert(referUI_.uiList,referUI_.g_9_7)
	du:setLogicParent(referUI_.g_9_7,referUI_)
	referUI_.g_8_8=C_main_three_grids_grid.new();
	referUI_.g_8_8.name="g_8_8"
	du:placeAndAddChildToContainer(referUI_.g_8_8,container_,0.00,0.00,199.05,32,0,1,1,1,64)
	table.insert(referUI_.uiList,referUI_.g_8_8)
	du:setLogicParent(referUI_.g_8_8,referUI_)
	referUI_.g_7_8=C_main_three_grids_grid.new();
	referUI_.g_7_8.name="g_7_8"
	du:placeAndAddChildToContainer(referUI_.g_7_8,container_,0.00,0.00,132.7,32,0,1,1,1,65)
	table.insert(referUI_.uiList,referUI_.g_7_8)
	du:setLogicParent(referUI_.g_7_8,referUI_)
	referUI_.g_6_8=C_main_three_grids_grid.new();
	referUI_.g_6_8.name="g_6_8"
	du:placeAndAddChildToContainer(referUI_.g_6_8,container_,0.00,0.00,66.35,32,0,1,1,1,66)
	table.insert(referUI_.uiList,referUI_.g_6_8)
	du:setLogicParent(referUI_.g_6_8,referUI_)
	referUI_.g_5_8=C_main_three_grids_grid.new();
	referUI_.g_5_8.name="g_5_8"
	du:placeAndAddChildToContainer(referUI_.g_5_8,container_,0.00,0.00,0,32,0,1,1,1,67)
	table.insert(referUI_.uiList,referUI_.g_5_8)
	du:setLogicParent(referUI_.g_5_8,referUI_)
	referUI_.g_4_8=C_main_three_grids_grid.new();
	referUI_.g_4_8.name="g_4_8"
	du:placeAndAddChildToContainer(referUI_.g_4_8,container_,0.00,0.00,-66.35,32,0,1,1,1,68)
	table.insert(referUI_.uiList,referUI_.g_4_8)
	du:setLogicParent(referUI_.g_4_8,referUI_)
	referUI_.g_3_8=C_main_three_grids_grid.new();
	referUI_.g_3_8.name="g_3_8"
	du:placeAndAddChildToContainer(referUI_.g_3_8,container_,0.00,0.00,-132.7,32,0,1,1,1,69)
	table.insert(referUI_.uiList,referUI_.g_3_8)
	du:setLogicParent(referUI_.g_3_8,referUI_)
	referUI_.g_2_8=C_main_three_grids_grid.new();
	referUI_.g_2_8.name="g_2_8"
	du:placeAndAddChildToContainer(referUI_.g_2_8,container_,0.00,0.00,-199.05,32,0,1,1,1,70)
	table.insert(referUI_.uiList,referUI_.g_2_8)
	du:setLogicParent(referUI_.g_2_8,referUI_)
	referUI_.g_1_8=C_main_three_grids_grid.new();
	referUI_.g_1_8.name="g_1_8"
	du:placeAndAddChildToContainer(referUI_.g_1_8,container_,0.00,0.00,-265.4,32,0,1,1,1,71)
	table.insert(referUI_.uiList,referUI_.g_1_8)
	du:setLogicParent(referUI_.g_1_8,referUI_)
	referUI_.g_9_8=C_main_three_grids_grid.new();
	referUI_.g_9_8.name="g_9_8"
	du:placeAndAddChildToContainer(referUI_.g_9_8,container_,0.00,0.00,265.4,32,0,1,1,1,72)
	table.insert(referUI_.uiList,referUI_.g_9_8)
	du:setLogicParent(referUI_.g_9_8,referUI_)
	
	while #_maskInfos>0 do
		local _maskInfo=table.remove(_maskInfos)
		du:createMask(container_,_maskInfo.stencil,_maskInfo.maskNumber)
	end

    self:setSpecial(referUI_)
end

function p_main_three_grids:setSpecial(referUI_)
end

return p_main_three_grids