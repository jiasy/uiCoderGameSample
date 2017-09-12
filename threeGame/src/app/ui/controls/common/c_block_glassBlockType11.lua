--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_block_glassBlockType11 = class("c_block_glassBlockType11",C_disMC)

--ui create------------------------------------------
function c_block_glassBlockType11:ctor(params_)
    c_block_glassBlockType11.super.ctor(self,params_)
    self.className="block_glassBlockType11"
    self.moduleName="common"
    self.frameCount=0
    -- 在那一列进行grid的传递动画
    self.gridDownShowCol = 0
    -- 当前进行到哪一行了
    self.currentRow = 999
    -- 最大的row数量
    self.rowMax = 0
    -- 整体间隔多久做一次动画
    self.mainTimeInterval = 50
    -- gird传递的动画间隔
    self.gridTimeInterval = 5
    -- 下一个grid在什么时间做动画
    self.nextGridTime = 0
end

--init data and place------------------------------------------
function c_block_glassBlockType11:init(initDict_)
    c_block_glassBlockType11.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
    -- 获取自己所在列
    self.gridDownShowCol = self.ownerBlock.col
    -- 三消部分
    self.blocks = self.ownerBlock.parent_blocks
end
--逐帧
function c_block_glassBlockType11:updateF(type_)
    c_block_glassBlockType11.super.updateF(self,type_)
    if type_ == 914 then
        self.frameCount = self.frameCount + 1
        -- 每 250 帧 进行一次grids的下降表现
        if math.mod(self.frameCount,self.mainTimeInterval) == 0  then
            self.currentRow = self.ownerBlock.row
            --如果它的下面还有一个跟自己一样类型的，那么动画就做一个，最最上面的就行了
            if self.blocks:isBlockTypeUpColRow(11,self.gridDownShowCol,self.currentRow) then
                self.nextGridTime = self.mainTimeInterval + 1
            else
                self.nextGridTime = 0
            end
        end
        --间隔递减达到要求，当前 currentRow 所在的grid 进行动画。
        if self.currentRow<=self.blocks.rowMax and self.nextGridTime <= 0 and self.blocks.canOperationBoo then
            local _grid = self.blocks:getGridByCR(self.gridDownShowCol,self.currentRow)
            --type11的下行通道必须畅通，所以，这里不需要判断Grid是否存在
            _grid:gtp("type11DownShow")
            self.nextGridTime = self.gridTimeInterval
            self.currentRow = self.currentRow + 1
        end
        --如果当前 self.blocks.canOperationBoo 为 false ,row的条件还满足，就把row的条件重置成不满足的。
        if self.currentRow<=self.blocks.rowMax and self.blocks.canOperationBoo == false then
            self.currentRow = 999
        end
        --间隔递减
        self.nextGridTime = self.nextGridTime - 1
    end
end
--ui stateChange-------------------------------------
function c_block_glassBlockType11:stateChange(params_)
    --Logic here,then change state.
    c_block_glassBlockType11.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_block_glassBlockType11:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_block_glassBlockType11.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_block_glassBlockType11:onFrameName(frameName_)
    c_block_glassBlockType11.super.onFrameName(self,frameName_)

end

function c_block_glassBlockType11:onCreate()
    c_block_glassBlockType11.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_block_glassBlockType11:onDestory()
    --ui remove logic here
    self.ownerBlock = nil
    self.blocks = nil
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_block_glassBlockType11.super.onDestory(self)
end

return c_block_glassBlockType11