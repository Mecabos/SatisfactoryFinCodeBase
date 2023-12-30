function InitWithDefaultMount ()
    fs = filesystem
    if fs.initFileSystem("/dev") == false then
        computer.panic("Cannot initialize /dev")
    end

    if fs.mount("/dev/"..fs.childs("/dev")[1], "/") == false then
        computer.panic("Could not mount drive "..driveUUID.." to "..mountPoint)
    end
end

InitWithDefaultMount()


if (not filesystem.isFile("/myRequire.lua")) then
    local request = computer.getPCIDevices(findClass("FINInternetCard"))[1]:request("https://raw.githubusercontent.com/NicholasScott1337/FINUtilities/main/requiry.lua", "GET", "")
    local f = filesystem.open("/myRequire.lua", "w")
    f:write(table.pack(request:await())[2]) f:close()
  end
  
filesystem.doFile("/myRequire.lua")


--Example use of require
local mylib = require('/componentHelpers.lua')
print(mylib.getSingleComponentRefByNik("sign rss"))
