cc.FileUtils:getInstance():setPopupNotify(false)
cc.FileUtils:getInstance():addSearchPath("src/")
cc.FileUtils:getInstance():addSearchPath("res/")

cc.FileUtils:getInstance():addSearchPath("res/three/")
cc.FileUtils:getInstance():addSearchPath("res/three/uis/")
cc.FileUtils:getInstance():addSearchPath("res/three/gameConfig/")
cc.FileUtils:getInstance():addSearchPath("res/three/battle/")
cc.FileUtils:getInstance():addSearchPath("res/three/hero/")
cc.FileUtils:getInstance():addSearchPath("res/three/spriteSheets/")
cc.FileUtils:getInstance():addSearchPath("res/three/effects/")
cc.FileUtils:getInstance():addSearchPath("res/uiCoderUse/")
cc.FileUtils:getInstance():addSearchPath("res/common/")

require "config"
require "cocos.init"
require "src.app.base.baseRequire"

local function main()
    require("app.MyApp"):create():run()
end

local status, msg = xpcall(main, __G__TRACKBACK__)
if not status then
    print(msg)
end
