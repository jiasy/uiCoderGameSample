--class define--------------------------------------------------------
local C_disUI = require("src.app.base.ui.disUI")
local c_main_battle = class("c_main_battle", C_disUI)


--ui create------------------------------------------
function c_main_battle:ctor(params_)
    c_main_battle.super.ctor(self, params_)
    self.className = "main_battle"
    self.moduleName = "three"
    self.trailCount = 0
end

function c_main_battle:getBlockCount(type_,special_,blockArr_)
    for i=1 , #blockArr_ do
        self.trailCount = self.trailCount + 1
        local _po=blockArr_[i]
        self["blockCount"..type_]:getBlock(_po,self.trailCount)
    end
end

function c_main_battle:reset()
    for i=1,11 do
        local _blockCount = self["blockCount"..tostring(i)]
        _blockCount.typeCount=0
        _blockCount.count:setString(_blockCount.typeCount)
    end
    self.trailCount = 0
end

--在两个blocks之间进行motion
function c_main_battle:createMotionBetweenBlocks(block1_, block2_, moveTime_)
    local _linkSp = cc.MotionStreak:create(0.3, 3, 20, cc.c3b(255, 255, 255), "blade.png")
    _linkSp:setPosition(cc.p(block1_:getPositionX(), block1_:getPositionY()))
    local function callBack() _linkSp:removeFromParent(true) end

    _linkSp:runAction(cc.Sequence:create(cc.MoveTo:create(moveTime_ * 0.4, cc.p(block2_:getPositionX(), block2_:getPositionY())), cc.DelayTime:create(moveTime_ * 0.4), cc.CallFunc:create(callBack)))
    self.containerLayer:addChild(_linkSp, self.chainLineEffectIndex)
end

--init data and place------------------------------------------
function c_main_battle:init(initDict_)
    c_main_battle.super.init(self, initDict_)
    local _specialDict = {} --自定义数据初始化子UI
    local _avoidInitDict = {} --避免在这里进行初始化的UI名称做KEY的字典。
    self.blockCount1.type = 1
    self.blockCount2.type = 2
    self.blockCount3.type = 3
    self.blockCount4.type = 4
    self.blockCount5.type = 5
    self.blockCount6.type = 6
    self.blockCount7.type = 7
    self.blockCount8.type = 8
    self.blockCount9.type = 9
    self.blockCount10.type = 10
    self.blockCount11.type = 11
    self:initSubUIs(_specialDict, _avoidInitDict)
end

--ui stateChange-------------------------------------
function c_main_battle:stateChange(stateName_, rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main_battle.super.stateChange(self, stateName_, rightNow_)
end

--btn click call back---------------------------------------------------
function c_main_battle:btnClicked(btnName_, rollName_, listName_, itemDataDict_)
    c_main_battle.super.btnClicked(self, btnName_, rollName_, listName_, itemDataDict_)
end

function c_main_battle:onCreate()
    c_main_battle.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_battle:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_battle.super.onDestory(self)
end

return c_main_battle
