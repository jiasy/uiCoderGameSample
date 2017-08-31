--class define--------------------------------------------------------
local C_disMC = require("src.app.base.ui.disMC")
local c_main_battle_blockCount = class("c_main_battle_blockCount", C_disMC)
local CureMotion = require("src.app.ui.controls.three.cureMotion")

--ui create------------------------------------------
function c_main_battle_blockCount:ctor(params_)
    c_main_battle_blockCount.super.ctor(self, params_)
    self.className = "main_battle_blockCount"
    self.moduleName = "three"
    self.blockCount = 0
    self.type=0
    -- 移动轨迹集合
    self.cureMotionList = {}
    --旋转属性
    self.targetScaleY = 1
    self.currentScaleY = 1
    self.currentRotateSpeed = 0
    self.targetRotateSpeed = 0
    self.speedEqual = 0.3
    self.currentR = 0
    self.targetR = 0
    self.rEqual = 0.5
    self.xs = 0.3
    self.currentRotation = 0
    --圆心
    self.targetDisplay = nil
    --
end

--init data and place------------------------------------------
function c_main_battle_blockCount:init(initDict_)
    c_main_battle_blockCount.super.init(self, initDict_)
    self.main = self:getUiParent()
    local _specialDict = {} --自定义数据初始化子UI
    local _avoidInitDict = {} --避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict, _avoidInitDict)
    self.count:setString(self.blockCount)

    -- --更换小图标
    -- local _picFileName = self.main:getBattleBlockPicNameByType(self.type)
    -- if _picFileName then
    --     self.blockPic = cc.Sprite:create(_picFileName)
    --     self.blockPic:setAnchorPoint(cc.p(0.50, 0.50))
    --     self.blockShow.pic:setVisible(false)
    --     self.blockShow:addChild(self.blockPic)
    -- end

    --动画表现 battle 里面的
    local _aniMC = self.main:getBattleAniMCByType(self.type)
    if _aniMC then
        self.blockPic = _aniMC
        self.blockPic.name="disMc"
        self.blockPic:init(nil)
        self.blockShow.pic:setVisible(false)
        self.blockShow:addChild(self.blockPic)
        -- 只放到uiList中，这样可以更新的到
        table.insert(self.logicParent.uiList,self.blockPic)
        self.shadow = cc.Sprite:create("three_battle_fazhen_shadow.png")
        self.shadow:setScaleY(0.5)
        self:shadowSync()--同步影子位置
        self.logicParent.shadow:addChild(self.shadow)
    end
end

--根据当前关卡的randomMax固定一个初始角度
function c_main_battle_blockCount:reset(currentRotation_)
    --清空原有轨迹移动对象
    for i=1 , #self.cureMotionList do
        local item=self.cureMotionList[i]
        item:stopAllActions()
        item:removeFromParent()
    end
    self.cureMotionList = {}
    --计数器清零
    self.blockCount = 0
    self.count:setString(tostring(self.blockCount))
    --动画重置
    self:gts(1)
    -- 重置旋转属性
    self:reInitRotationAndSpeed(currentRotation_)
end

--重置旋转 属性
function c_main_battle_blockCount:reInitRotationAndSpeed(currentRotation_)
    -- + 18 是为了对准坐标位置
    self.currentRotation = currentRotation_ + 18
    self.currentRotateSpeed = 0
    self.targetRotateSpeed = 0
    self.currentR = 0
    self.targetR = 0
    self.targetScaleY = 1
    self.currentScaleY = 1
    --重置位置 也就圆心的位置
    self:setPosition(cc.p(self.targetDisplay:getPositionX(),self.targetDisplay:getPositionY()))
end

function c_main_battle_blockCount:resetRotationPos()
    self.currentRotation = self.currentRotation + self.currentRotateSpeed
    local _circleCenterY = self.targetDisplay:getPositionY()
    local _y = self.currentR * math.sin(math.rad(self.currentRotation))*self.currentScaleY + _circleCenterY
    local _x = self.currentR * math.cos(math.rad(self.currentRotation)) + self.targetDisplay:getPositionX()
    self:setPosition(cc.p(_x,_y))
    --重新摆放层级
    if _y<_circleCenterY then
        self:getParent():reorderChild(self,21)
    else
        self:getParent():reorderChild(self,20)
    end
end

--是否获取了所有的block<block的轨迹动画，是否都结束了>
function c_main_battle_blockCount:isGetBlockEnd()
    return #self.cureMotionList == 0
end

function c_main_battle_blockCount:getBlock(po_,trailCount_,blockGetCallBack_)
    local _currentLevelID = self.main.currentLevelID
    local function onInPosition(cureMotion_)
        --当前关卡的唯一ID,已经不是调用 getBlock 时的那个。就返回，不执行后面的方法
        if self.main.currentLevelID ~= _currentLevelID then
            return
        end
        if self.blockPic and self.blockPic.name=="disMc" then
            self.blockPic:playIdleAnimation()
        end
        self.blockCount = self.blockCount +1
        self.count:setString(tostring(self.blockCount))
        self:gtp(2)
        table.removebyvalue(self.cureMotionList,cureMotion_)
        if #self.cureMotionList == 0 then--自己的获取完了的时候
            if self.logicParent:isGetBlockEnd() then--如果，其他的blockCount 也获取完了。
                self.main:battleGetBlockEnd() -- 通知 main. battle已经获取了所有的block
            end
        end
        if blockGetCallBack_ then
            blockGetCallBack_()
        end
    end
    -- body
    local _display = nil
    local _motion = nil
    local _trailCount = nil
    local _picFileName =self.main:getBlockPicNameByType(self.type)
    if self.type>=1 and self.type <10 then
        _motion = cc.MotionStreak:create(0.5, 10, 40, cc.c3b(255, 255, 255), _picFileName)
        _trailCount = trailCount_
    elseif  tonumber(self.type) == 11 then
        _display = cc.Sprite:create(_picFileName)
    end
    local _targetPo =self:convertToWorldSpace(cc.p(0,self.blockShow:getPositionY()))

    -- self 添加到自己内
    -- po_ 触发点的全局坐标
    -- _targetPo 目标点的全局坐标
    -- _display 显示对象
    -- _motion 移动轨迹
    -- 1 移动时间
    -- 1 移动以后留存多久
    -- onInPosition 到位置之后触发方法
    -- self 逻辑容器DisUI
    -- trailCount_ 轨迹计数，避免随机导致的可能两个相邻的block使用了同一个轨迹
    table.insert(self.cureMotionList,CureMotion.new(self,100,po_,_targetPo,_display,_motion,self.main.getBlockMoveTime,self.main.getBlockWaitTime,onInPosition,self,_trailCount))
end

--ui stateChange-------------------------------------
function c_main_battle_blockCount:updateF(type_)
    --Logic here,then change state.
    c_main_battle_blockCount.super.updateF(self,type_)
    if type_ == 914 then
        self:shadowSync()
    end
end
-- 同步影子位置
function c_main_battle_blockCount:shadowSync()
    if self.shadow then
        self.shadow:setPosition(cc.p(self:getPositionX(),self:getPositionY()))
    end
end

--ui stateChange-------------------------------------
function c_main_battle_blockCount:stateChange(params_)
    --Logic here,then change state.
    c_main_battle_blockCount.super.stateChange(self, params_)
end

--btn click call back---------------------------------------------------
function c_main_battle_blockCount:btnClicked(btnName_, rollName_, listName_, itemDataDict_)
    c_main_battle_blockCount.super.btnClicked(self, btnName_, rollName_, listName_, itemDataDict_)
end

--frame name call back---------------------------------------------------
function c_main_battle_blockCount:onFrameName(frameName_)
    c_main_battle_blockCount.super.onFrameName(self, frameName_)
end

function c_main_battle_blockCount:onCreate()
    c_main_battle_blockCount.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_battle_blockCount:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_battle_blockCount.super.onDestory(self)
    if self.blockPic then --宝石图片
        if self.blockPic.name=="disMc" then
            table.removebyvalue(self.parent_blocks.uiList,self.blockPic)
            self.blockPic:onDelete()
        end
        self.blockPic:removeFromParent(true)
        self.blockPic = nil
    end
    if self.shadow then --影子
        self.shadow:removeFromParent(true)
        self.shadow = nil
    end
end

return c_main_battle_blockCount