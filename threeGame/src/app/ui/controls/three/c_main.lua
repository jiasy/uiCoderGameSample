--[[
    调用方式 
        1.模块名[moduleName] + 界面类名[className] 的方式
            local _targetUi=uiControl:getInstance():jumpTo("three","main")
        2._targetUi在场景中，只有调用 init 才能用。否则只是空层
            _targetUi:init({})
]]
--class define--------------------------------------------------------
local C_disUI = require("src.app.base.ui.disUI")
local c_main = class("c_main", C_disUI)

--ui create------------------------------------------
function c_main:ctor(params_)
    c_main.super.ctor(self, params_)
    self.className = "main"
    self.moduleName = "three"
    self.layerType = "ui"
end

--init data and place------------------------------------------
function c_main:init(initDict_)
    c_main.super.init(self, initDict_)
    -- ----- ui init----------------------------------------------------------
    local _specialDict = {} --自定义数据初始化子UI
    local _avoidInitDict = {} --避免在这里进行初始化的UI名称做KEY的字典。

    -- _specialDict["three"] = _threeDict
    -- _avoidInitDict["battle"] = "avoidInitHere" --上面初始化过了

    self:initSubUIs(_specialDict, _avoidInitDict)

    local function blockBreakInfoCallBack(_,data_)  
        print "three main - blockBreakInfoCallBack"
        for k,_blockArr in pairs( data_ ) do
            if #_blockArr>0 then
                local _keyArr = string.split(k,"_")
                local _type = _keyArr[2]
                local _special = _keyArr[3]
                self.battle:getBlockCount(_type,_special,_blockArr)
            end
        end

    end 
    local function roundEndCallBack()
        print "three main - roundEndCallBack"
    end

    self.three.blocks.blockBreakInfoCallBack = blockBreakInfoCallBack
    self.three.blocks.roundEndCallBack = roundEndCallBack

    --初始化
    local _tempGrids = self.three.grids:getGrids(self.three.blocks.colMax, self.three.blocks.rowMax)
    self.three.blocks:initBlocks(_tempGrids)

end

function c_main:updateF( type_ )
    c_main.super.updateF(self, type_)
    -- 重置 三消的回合状态
    if self.three.blocks.canOperationBoo == false then
        if self.battle:isGetBlockEnd() then
            self.three.blocks.canOperationBoo = true
        end
    end
end

--ui stateChange-------------------------------------
function c_main:stateChange(stateName_, rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main.super.stateChange(self, stateName_, rightNow_)
end

--btn click call back---------------------------------------------------
function c_main:btnClicked(btnName_, rollName_, listName_, itemDataDict_)
    c_main.super.btnClicked(self, btnName_, rollName_, listName_, itemDataDict_)
     ----- check btn name----------------------------------------------------------
    if btnName_ == "btn_next" then
        print("Btn_pressed : " .. self.className .. " -> nextBtn"); ---------------------------- nextBtn
        self.three.blocks:nextLevel()
        self.battle:reset()
    end
    if btnName_ == "btn_prev" then
        print("Btn_pressed : " .. self.className .. " -> prevBtn"); ---------------------------- prevBtn
        self.three.blocks:prevLevel()
        self.battle:reset()
    end
    if btnName_ == "btn_aiNormal" then
        print("Btn_pressed : " .. self.className .. " -> aiNormalBtn"); ---------------------------- aiNormalBtn
        self.three.blocks:preSetPar("ai_normal")
    end
    if btnName_ == "btn_aiQuick" then
        print("Btn_pressed : " .. self.className .. " -> aiQuickBtn"); ---------------------------- aiQuickBtn
        self.three.blocks:preSetPar("ai_quick")
    end
    if btnName_ == "btn_aiFly" then
        print("Btn_pressed : " .. self.className .. " -> aiFlyBtn"); ---------------------------- aiFlyBtn
        self.three.blocks:preSetPar("ai_fly")
    end
    if btnName_ == "btn_reset" then
        print("Btn_pressed : " .. self.className .. " -> resetBtn"); ---------------------------- resetBtn
        self.three.blocks:replayLevel()
        self.battle:reset()
    end
end

function c_main:onCreate()
    c_main.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main.super.onDestory(self)
end

return c_main
