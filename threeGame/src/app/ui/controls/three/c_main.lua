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
    self.frameCount = 0
    -- getBlock 轨迹移动时间
    self.getBlockMoveTime = 1
    -- getBlock 给轨迹消散预留时间
    self.getBlockWaitTime = 0.5
    --回合数
    self.roundCount = 0
    --当前关最大回合数
    self.roundMax = 0
    -- 显示场景中 blockCount的个数
    self.randomMax =0

    --各个关卡的配置
    self.levelConfigs = nil
    --各种格子的配置
    self.blockConfigs = nil

    --当前关卡序号
    self.currentLevelIndex = 16

    --游戏进行ID
    self.currentLevelID = 0

    -- 有初始化 数据就是正常玩的。
    if initDict_ then
        self.isDebug = false
        --按照给定的关卡来设定
        self.currentLevelIndex = initDict_.currentLevelIndex
    else -- 没有初始化数据，就是测试
        self.isDebug = false
    end

    -- ----- ui init----------------------------------------------------------
    local _specialDict = {} --自定义数据初始化子UI
    local _avoidInitDict = {} --避免在这里进行初始化的UI名称做KEY的字典。

    -- _specialDict["three"] = _threeDict
    -- _avoidInitDict["battle"] = "avoidInitHere" --上面初始化过了
    self:initSubUIs(_specialDict, _avoidInitDict)

    local function blockBreakInfoCallBack(_,data_)  
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
        self.roundCount = self.roundCount + 1
    end

    self.three.blocks.blockBreakInfoCallBack = blockBreakInfoCallBack
    self.three.blocks.roundEndCallBack = roundEndCallBack

    --初始化 
    --创建 grids 和 block 之间的关系
    local _tempGrids = self.three.grids:getGrids(self.three.blocks.colMax, self.three.blocks.rowMax)
    self.three.blocks:initBlocks(_tempGrids)
    --读取配置
    self:getBlockConfigs() --获取方块配置
    self:getLevelConfigs() --获取关卡配置
    --初始化当前关卡
    self:replayLevel()
end


function c_main:updateF( type_ )
    c_main.super.updateF(self, type_)
end


--获取关卡配置
function c_main:getLevelConfigs()
    local _fileFullPath = cc.FileUtils:getInstance():fullPathForFilename("levelConfig.json")
    local _str = io.readfile(_fileFullPath)
    local _tempObj = json.decode(_str)
    self.levelConfigs = _tempObj
end

function c_main:getBlockConfigs()
    -- local _fileFullPath = cc.FileUtils:getInstance():fullPathForFilename("blockConfig.json")
    -- local _str = io.readfile(_fileFullPath)
    -- local _tempObj = json.decode(_str)
    -- self.blockConfigs = _tempObj
end

function c_main:reinitByLevelIndex(levelIndex_)
    self.three.blocks:reinitByLevelIndex(self.levelConfigs.levelDatas[levelIndex_])
end

function c_main:nextLevel()
    self.currentLevelIndex = self.currentLevelIndex + 1
    if self.currentLevelIndex > #self.levelConfigs.levelDatas then
        self.currentLevelIndex = 1
    end
    self:replayLevel()
end

function c_main:replayLevel()
    --唯一关卡ID，这样重置关卡的时候，上一关的东西不会影响到当前。
    self.currentLevelID = self.currentLevelID + 1
    --地块初始化结束之后，进行blocks的初始化
    local function gridRestEnd()
        self:reinitByLevelIndex(self.currentLevelIndex)
    end

    local _currentLevelConfig = self.levelConfigs.levelDatas[self.currentLevelIndex] 
    self.randomMax = tonumber(_currentLevelConfig.randomMax)
    --重置battle,当前关卡，最多随机几个颜色
    self.battle:reset()
    --清理上次的block和各种变量
    self.three.blocks:clearCurrentLevel()
    --初始化地块
    self.three.grids:reset(_currentLevelConfig, gridRestEnd)
end

function c_main:prevLevel()
    self.currentLevelIndex = self.currentLevelIndex - 1
    if self.currentLevelIndex < 1 then
        self.currentLevelIndex = #self.levelConfigs.levelDatas
    end
    self:replayLevel()
end

--battle 部分是否获取完了所有消除的方块。
function c_main:battleGetBlockEnd()
    if self.three.blocks.canOperationBoo == false then-- 重置 三消的回合状态
        self.three.blocks.canOperationBoo = true
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
        self:nextLevel()
    end
    if btnName_ == "btn_prev" then
        print("Btn_pressed : " .. self.className .. " -> prevBtn"); ---------------------------- prevBtn
        self:prevLevel()
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
        self:replayLevel()
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
