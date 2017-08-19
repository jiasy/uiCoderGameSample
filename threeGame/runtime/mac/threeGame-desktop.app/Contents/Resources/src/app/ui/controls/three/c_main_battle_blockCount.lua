--class define--------------------------------------------------------
local C_disMC = require("src.app.base.ui.disMC")
local c_main_battle_blockCount = class("c_main_battle_blockCount", C_disMC)
local Pursure = require("src.app.ui.controls.three.pursure")
local CureMotion = require("src.app.ui.controls.three.cureMotion")

--ui create------------------------------------------
function c_main_battle_blockCount:ctor(params_)
    c_main_battle_blockCount.super.ctor(self, params_)
    self.className = "main_battle_blockCount"
    self.moduleName = "three"
    self.typeCount = 0
    self.type=0
end

--init data and place------------------------------------------
function c_main_battle_blockCount:init(initDict_)
    c_main_battle_blockCount.super.init(self, initDict_)
    local _specialDict = {} --自定义数据初始化子UI
    local _avoidInitDict = {} --避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict, _avoidInitDict)
    self.count:setString(self.typeCount)
    --更换小图标
    local _texture = cc.Director:getInstance():getTextureCache():addImage("icon_ball_"..tostring(self.type)..".png")
    self.colorShow:setTexture(_texture)
end

function c_main_battle_blockCount:getBlock(po_,trailCount_)
    print ("blockCount getBlock : "..self.type)
    local function onInPosition(target_)
        print "onInPosition"
        self.typeCount = self.typeCount +1
        self.count:setString(tostring(self.typeCount))
        self:gtp(2)
    end

    -- body
    local _display = nil
    local _trailMotion = nil

    if self.type>=1 and self.type <10 then
        _trailMotion = cc.MotionStreak:create(0.4, 3, 40, cc.c3b(255, 255, 255), "icon_ball_"..tostring(self.type)..".png")
    elseif  tonumber(self.type) == 11 then
        _display = cc.Sprite:create("icon_ball_11.png")
        _trailMotion = cc.MotionStreak:create(0.3, 2, 40, cc.c3b(255, 255, 255), "icon_ball_10.png")
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
    CureMotion.new(self,100,po_,_targetPo,_display,_trailMotion,1,1,onInPosition,self,trailCount_)
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
end

return c_main_battle_blockCount