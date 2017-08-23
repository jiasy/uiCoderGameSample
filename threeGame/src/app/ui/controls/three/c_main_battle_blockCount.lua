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
    -- local _texture = cc.Director:getInstance():getTextureCache():addImage("icon_ball_"..tostring(self.type)..".png")
    -- self.colorShow:setTexture(_texture)

    if self.type == 1 then
        self.blockPic = require("src.app.ui.controls.common.c_block_goust").new()
    elseif self.type == 2 then
        self.blockPic = require("src.app.ui.controls.common.c_block_gui").new()
    elseif self.type == 3 then
        self.blockPic = require("src.app.ui.controls.common.c_block_duyan").new()
    elseif self.type == 4 then
        self.blockPic = require("src.app.ui.controls.common.c_block_huli").new()
    elseif self.type == 5 then
        self.blockPic = require("src.app.ui.controls.common.c_block_mao").new()
    end

    if 
        self.type == 1 
        or
        self.type == 2 
        or
        self.type == 3
        or
        self.type == 4 
        or
        self.type == 5
    then
        self.blockPic.name="disMc"
        self.blockPic:init(nil)
        self.blockShow.pic:setVisible(false)
        self.blockShow:addChild(self.blockPic,10)
        -- 只放到uiList中，这样可以更新的到
        table.insert(self.logicParent.uiList,self.blockPic)
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
    self:resetRotationAndSpeed(currentRotation_)
end

--重置旋转 属性
function c_main_battle_blockCount:resetRotationAndSpeed(currentRotation_)
    self.currentRotation = currentRotation_ + 18
    self.currentRotateSpeed = 0
    self.targetRotateSpeed = 0
    self.currentR = 0
    self.targetR = 0
    --重置位置
    self:setPosition(cc.p(self.targetDisplay:getPositionX(),self.targetDisplay:getPositionY()))
end

function c_main_battle_blockCount:resetRotationPos()
    self.currentRotation = self.currentRotation + self.currentRotateSpeed
    local _y = self.currentR * math.sin(math.rad(self.currentRotation)) + self.targetDisplay:getPositionY()
    local _x = self.currentR * math.cos(math.rad(self.currentRotation)) + self.targetDisplay:getPositionX()
    self:setPosition(cc.p(_x,_y))
end

function c_main_battle_blockCount:isGetBlockEnd()
    return #self.cureMotionList == 0
end

function c_main_battle_blockCount:getBlock(po_,trailCount_)
    local function onInPosition(cureMotion_)
        if self.blockPic then
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
    end
    -- body
    local _display = nil
    local _trailMotion = nil
    local _trailCount = nil
    if self.type>=1 and self.type <10 then
        local _display = cc.Sprite:create("icon_ball_"..tostring(self.type)..".png")
        -- _pic:setScale(0.5)
        -- _pic:setPosition(cc.p(0,0))
        -- _pic:setAnchorPoint(cc.p(0,0))
        -- _display = cc.Layer:create()
        -- _display:addChild(_pic)
        _trailMotion = cc.MotionStreak:create(0.5, 10, 40, cc.c3b(255, 255, 255), "icon_ball_"..tostring(self.type)..".png")
        _trailCount = trailCount_
    elseif  tonumber(self.type) == 11 then
        _display = cc.Sprite:create("icon_ball_11.png")
        --_trailMotion = cc.MotionStreak:create(0.3, 6, 20, cc.c3b(255, 255, 255), "icon_ball_10.png")
    end
    --local _display = self.displayUtils:createPartical("blockCount", "free")
    local _targetPo =self:convertToWorldSpace(cc.p(0,0))

    -- self 添加到自己内
    -- po_ 触发点的全局坐标
    -- _targetPo 目标点的全局坐标
    -- _display 显示对象
    -- _trailMotion 移动轨迹
    -- 1 移动时间
    -- 1 移动以后留存多久
    -- onInPosition 到位置之后触发方法
    -- self 逻辑容器DisUI
    -- trailCount_ 轨迹计数，避免随机导致的可能两个相邻的block使用了同一个轨迹
    table.insert(self.cureMotionList,CureMotion.new(self,100,po_,_targetPo,_display,_trailMotion,self.main.getBlockMoveTime,self.main.getBlockWaitTime,onInPosition,self,_trailCount))
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
end

return c_main_battle_blockCount