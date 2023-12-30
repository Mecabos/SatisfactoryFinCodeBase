function InitWithDefaultMount ()
    fs = filesystem
    -- Initialize /dev
    if fs.initFileSystem("/dev") == false then
        computer.panic("Cannot initialize /dev")
    end
    -- Mount our drive to root
    if fs.mount("/dev/"..fs.childs("/dev")[1], "/") == false then
        computer.panic("Could not mount drive "..fs.childs("/dev")[1].." to /")
    end
end

InitWithDefaultMount()

--Need to put it manually, just to avoid bringing it from the web
filesystem.doFile("/myRequire.lua")

--Example use of require
local mylib = require('/componentHelpers.lua')
print(mylib.getSingleComponentRefByNik("sign rss"))
