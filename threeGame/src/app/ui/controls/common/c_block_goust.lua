--class define--------------------------------------------------------
local C_disMC=require("src.app.base.ui.disMC")
local c_block_goust = class("c_block_goust",C_disMC)

--ui create------------------------------------------
function c_block_goust:ctor(params_)
    c_block_goust.super.ctor(self,params_)
    self.className="block_goust"
    self.moduleName="common"
end

--init data and place------------------------------------------
function c_block_goust:init(initDict_)
    c_block_goust.super.init(self,initDict_)
    local _specialDict={}--自定义数据初始化子UI
    local _avoidInitDict={}--避免在这里进行初始化的UI名称做KEY的字典。
    self:initSubUIs(_specialDict,_avoidInitDict)

end

function c_block_goust:playIdleAnimation()
    self:gtp("idle"..tostring(math.random(1,2)))
end

--ui startRandomIdle-------------------------------------
function c_block_goust:startRandomIdle(idleRandomBegin_,idleRandomEnd_)
    -- idle动画，时间随机范围
    self.idleRandomBegin = idleRandomBegin_
    self.idleRandomEnd = idleRandomEnd_
    self.idleMax = math.random(self.idleRandomBegin,self.idleRandomEnd)
    self.idleCount = math.random(1,self.idleRandomEnd)
    self:gtp(math.random(1,30))
end

--ui stateChange-------------------------------------
function c_block_goust:stateChange(params_)
    --Logic here,then change state.
    c_block_goust.super.stateChange(self,params_)
end
--ui stateChange-------------------------------------
function c_block_goust:updateF(type_)
    --Logic here,then change state.
    c_block_goust.super.updateF(self,type_)
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
--btn click call back---------------------------------------------------
function c_block_goust:btnClicked(btnName_,rollName_,listName_,itemDataDict_)
    c_block_goust.super.btnClicked(self,btnName_,rollName_,listName_,itemDataDict_)
end

--frame name call back---------------------------------------------------
function c_block_goust:onFrameName(frameName_)
    c_block_goust.super.onFrameName(self,frameName_)
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

function c_block_goust:onCreate()
    c_block_goust.super.onCreate(self)
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onCreate")
    --ui add logic here
end

function c_block_goust:onDestory()
    --ui remove logic here
    --print(self.moduleName .. " : " .. self.className .. " : " .. "onDestory")
    c_block_goust.super.onDestory(self)
end

return c_block_goust