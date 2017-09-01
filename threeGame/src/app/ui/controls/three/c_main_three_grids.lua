--class define--------------------------------------------------------
local C_disUI=require("src.app.base.ui.disUI")
local c_main_three_grids = class("c_main_three_grids", C_disUI)

--ui create------------------------------------------
function c_main_three_grids:ctor(params_)
    c_main_three_grids.super.ctor(self, params_)
    self.className = "main_three_grids"
    self.moduleName = "three"
    self.rowMax = 0 
    self.colMax = 0 
    self.growR = 0
    self.grids = nil
    self.isReseting =false
    self.growSpeed = 20
    self.resetCallBack = nil
    -- 编辑器中重置动画的帧数
    self.gridrestFrameCount = 50
    -- 重置过后多久调用回调方法
    self.callBackCount = 0
end

--init data and place------------------------------------------
function c_main_three_grids:init(initDict_)
    c_main_three_grids.super.init(self, initDict_)
    self.main = self:getUiParent()
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_main_three_grids:stateChange(stateName_, rightNow_)
    --Logic here,then change state.
    --判断切换这个状态时候需要的操作，数据整理等等。
    c_main_three_grids.super.stateChange(self, stateName_, rightNow_)
end

function c_main_three_grids:reset(resetEndFunc_)
    print ("c_main_three_grids:reset")
    if self.grids == nil then
        print ("c_main_three_grids:reset 调用前需要先初始化 -> getGrids") 
    end

    -- 根据关卡配置重置 Grid 显示 ------------------------------------------
    for i = 1, self.colMax do
        for j = 1, self.rowMax do
            local _tempGrid = self.grids[i][j]
            _tempGrid:setVisible(true)
        end
    end

    local _currentLevelConfig = self.main.currentLevelConfig
    for i = 1, #_currentLevelConfig.lostGrids do
        local _tempGridInfo = _currentLevelConfig.lostGrids[i]
        self.grids[_tempGridInfo.col][_tempGridInfo.row]:setVisible(false)
    end

    -- 随机 一个 Grid 做为重置 的起点------------------------------------------
    self.resetCallBack = resetEndFunc_
    self.isReseting =true

    local _randomRow = math.random(1,self.rowMax)
    local _randomCol = math.random(1,self.colMax)
    local _startGrid = self.grids[_randomCol][_randomRow]

    while _startGrid:isVisible() == false do
        _randomRow = math.random(1,self.rowMax)
        _randomCol = math.random(1,self.colMax)
        _startGrid = self.grids[_randomCol][_randomRow] 
    end

    -- 开始重置每一个Grid和起点的距离 ------------------------------------------
    local _startX = _startGrid:getPositionX()
    local _startY = _startGrid:getPositionY()
    for i=1,self.colMax do
        for j=1,self.rowMax do
            local _tempGrid = self.grids[i][j]
            -- 正在初始化
            if _startGrid == _tempGrid then
                _tempGrid:play()
                _tempGrid.resetingR = 0
            else
                local _targetX = _tempGrid:getPositionX()
                local _targetY = _tempGrid:getPositionY()
                local _disX = _startX - _targetX
                local _disY = _startY - _targetY
                _tempGrid.resetingR = math.sqrt(_disX*_disX + _disY*_disY)
                _tempGrid:gts(2)
            end
        end
    end
end

function c_main_three_grids:updateF( type_ )
    c_main_three_grids.super.updateF(self, type_)
    if self.isReseting then
        self.callBackCount =0
        local _endResetBoo = true
        --圆圈膨胀
        self.growR = self.growR + self.growSpeed
        --判断其他所有格子的距离
        for i=1,self.colMax do
            for j=1,self.rowMax do
                local _tempGrid = self.grids[i][j]
                if _tempGrid.resetingR~=0 then
                    if self.growR >= _tempGrid.resetingR then
                        _tempGrid:play()
                        _tempGrid.resetingR = 0
                    else
                        _endResetBoo =false
                    end
               end
            end
        end
        --是否所有的格子都做完了动画
        if _endResetBoo then
            self.growR = 0
            self.isReseting =false
        end
    else
        if self.resetCallBack then
            self.callBackCount = self.callBackCount + 1
            if self.callBackCount == self.gridrestFrameCount then
                self.resetCallBack()
                self.resetCallBack = nil
            -- elseif self.callBackCount<self.gridrestFrameCount then
            --     print ("self.gridrestFrameCount") 
            end
        end
    end
end


function c_main_three_grids:getGrids(colMax_, rowMax_)
    self.rowMax = rowMax_
    self.colMax = colMax_
    --获取格子
    local _grids = {}
    for i = 1, colMax_ do
        _grids[i] = {}
        for j = 1, rowMax_ do
            local _tempGrid = self["g_" .. i .. "_" .. j]
            _grids[i][j] = _tempGrid
        end
    end
    self.grids = _grids
    return _grids
end

--btn click call back---------------------------------------------------
function c_main_three_grids:btnClicked(btnName_, rollName_, listName_, itemDataDict_)
    c_main_three_grids.super.btnClicked(self, btnName_, rollName_, listName_, itemDataDict_)
end

function c_main_three_grids:onCreate()
    c_main_three_grids.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_main_three_grids:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_main_three_grids.super.onDestory(self)
end

return c_main_three_grids