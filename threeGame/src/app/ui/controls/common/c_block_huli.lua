--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_block_huli = class("c_block_huli",C_disMC)

--ui create------------------------------------------
function c_block_huli:ctor(params_)
    c_block_huli.super.ctor(self,params_)
    self.className="block_huli"
    self.moduleName="common"
end

function c_block_huli:playIdleAnimation()
    self:gtp("idle"..tostring(math.random(1,2)))
end
--ui startRandomIdle-------------------------------------
function c_block_huli:startRandomIdle(idleRandomBegin_,idleRandomEnd_)
    -- idle动画，时间随机范围
    self.idleRandomBegin = idleRandomBegin_
    self.idleRandomEnd = idleRandomEnd_
    self.idleMax = math.random(self.idleRandomBegin,self.idleRandomEnd)
    self.idleCount = math.random(1,self.idleRandomEnd)
    self:gtp(math.random(1,30))
end
--ui stateChange-------------------------------------
function c_block_huli:updateF(type_)
    --Logic here,then change state.
    c_block_huli.super.updateF(self,type_)
    if type_ == 914 then
        -- print ("self.idleCount = "..  tostring(self.idleCount)) 
        if self.idleCount and self.idleMax and self.idleCount >=0 then
            self.idleCount = self.idleCount +1
            if self.idleCount > self.idleMax then
                self:playIdleAnimation()
                --停止倒计时
                self.idleCount =-1
            end
        end
    end
end
--init data and place------------------------------------------
function c_block_huli:init(initDict_)
    c_block_huli.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)
end

--ui stateChange-------------------------------------
function c_block_huli:stateChange(params_)
    --Logic here,then change state.
    c_block_huli.super.stateChange(self,params_)
end

--btn click call back---------------------------------------------------
function c_block_huli:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_block_huli.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back----------------------------------------------------- 帧名不要带下杠线
function c_block_huli:onFrameName(frameName_)
    c_block_huli.super.onFrameName(self,frameName_)
    -- 帧名不要带下杠线
    if frameName_ == "idle1End" or frameName_ == "idle2End" then
        --回到单张图片的第一帧
        self:gtp(1)
        if self.isBlock then
            --重置倒计时
            self.idleCount=0
            --随机下一个动作的时间
            self.idleMax = math.random(self.idleRandomBegin,self.idleRandomEnd)
        end
    end
end

function c_block_huli:onCreate()
    c_block_huli.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_block_huli:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_block_huli.super.onDestory(self)
end

return c_block_huli