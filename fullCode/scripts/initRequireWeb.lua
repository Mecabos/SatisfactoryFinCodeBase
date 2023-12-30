function InitWithDefaultMount()
    fs = filesystem
    if fs.initFileSystem("/dev") == false then
        computer.panic("Cannot initialize /dev")
    end

    if fs.mount("/dev/" .. fs.childs("/dev")[1], "/") == false then
        computer.panic("Could not mount drive " .. fs.childs("/dev")[1] .. " to " .. "/")
    end
end

-- Mounts the default drive to the root directory 
InitWithDefaultMount()

-- Remove the old myRequire.lua file
filesystem.remove("/myRequire.lua", false)
-- This is the require function that will be used to load libraries
local request = computer.getPCIDevices(findClass("FINInternetCard"))[1]:request(
        "https://raw.githubusercontent.com/Mecabos/SatisfactoryFinCodeBase/main/lib/myLib/myRequire.lua", "GET", "")
    local f = filesystem.open("/myRequire.lua", "w")
    f:write(table.pack(request:await())[2])
    f:close()
filesystem.doFile("/myRequire.lua")
