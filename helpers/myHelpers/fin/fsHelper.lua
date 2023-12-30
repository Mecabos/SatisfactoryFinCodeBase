local FsHelper = {}

---Initi filesystem and mount the first drive. returns the filesystem for subsequent use
--- @return filesystem the filesystem object
function FsHelper.initFs()
    fs = filesystem
    -- Initialize /dev
    if fs.initFileSystem("/dev") == false then
        computer.panic("Cannot initialize /dev")
    end
end

---Mounting a drive
--- @param driveUUID string the UUID of the drive to mount
--- @param mountPoint string the mount point
--- @param fs filesystem the filesystem object
--- @return void
function FsHelper.mountDrive(driveUUID, mountPoint, fs)
    if (fs == nil) then
        fs = filesystem
    end
    if fs.mount("/dev/" .. driveUUID, mountPoint) == false then
        computer.panic("Could not mount drive " .. driveUUID .. " to " .. mountPoint)
    end
end

---Initi filesystem and mount the first drive. returns the filesystem for subsequent use
--- @return void
function FsHelper.initWithDefaultMount()
    fs = filesystem
    -- Initialize /dev
    if fs.initFileSystem("/dev") == false then
        computer.panic("Cannot initialize /dev")
    end
    -- Mount our drive to root
    if fs.mount("/dev/" .. fs.childs("/dev")[1], "/") == false then
        computer.panic("Could not mount drive " .. driveUUID .. " to " .. mountPoint)
    end
end

---unmount a drive at the given mount point
--- @param mountPoint string the mount point
--- @return void
function FsHelper.unmountDrive(mountPoint)
    fs = filesystem
    if fs.unmount(mountPoint) == false then
        computer.panic("Could not unmount drive at " .. mountPoint)
    end
end

--- get the drives
--- @return table the drives
function FsHelper.getDrives()
    fs = filesystem
    return fs.childs("/dev")
end

--- copy string to a file on a drive, to get local code => computer.getEEPROM()
--- @param driveUUID string the UUID of the drive to mount
--- @param code string the code to copy
--- @param sep string the separator
--- @param mountPoint string the mount point
--- @param path string the path to copy to
--- @param filename string the filename to copy to
--- @return void
function FsHelper.copyToDrive(args)
    local fs = filesystem
    -- args initialization
    local args = args or {}
    local driveUUID = args.driveUUID or fs.childs("/dev")[1]
    local code = args.code or computer.getEEPROM()
    local sep = args.sep or "&&&"
    local mountPoint = args.mountPoint or "/code_base"
    local path = args.path or "/copied_scripts/"
    local filename = args.filename or "code"

    local scriptDir = mountPoint .. path
    local isSeparated = args.code == nil or false

    if (isSeparated) then
        print("No code given! using the local code after the separator '" .. sep .. "'")
    end

    fs.mount("/dev/" .. driveUUID, mountPoint)

    if not fs.exists(scriptDir) then
        print("Creating directory " .. scriptDir)
        fs.createDir(scriptDir)
    else
        print("Floppy script dir already exists; continuing...")
    end

    local scriptPath = scriptDir .. filename .. ".lua"
    print("Preparing to write " .. filename .. " to " .. scriptPath)
    local file
    if fs.exists(scriptPath) then
        file = fs.open(scriptPath, "+r")
    else
        file = fs.open(scriptPath, "w")
    end

    if (isSeparated) then
        function splitWithSeparator(inputstr, sep)
            if sep == nil then
                sep = "%s"
            end
            local t = {}
            for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
                if (str ~= sep) then
                    table.insert(t, str)
                end
            end
            return t
        end
        code = splitWithSeparator(code, sep)[3]
    end

    file:write(code)
    file:close()
    print("Done!")
end

return FsHelper
