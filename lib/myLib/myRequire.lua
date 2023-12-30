local REPO_URL = "https://raw.githubusercontent.com/Mecabos/SatisfactoryFinCodeBase/main/"
local PATH_TABLE_PATH = "common/pathTable.lua"
local MY_REQUIRE_PATTERN = "[%w%.]*$"
function _REQ(workingDirectory, filePath, pCall, isString, libURL, skipSearch, executeAfterDownload)
    local fs, content, fileName, env = filesystem, "", "", {}
    if (not isString) then
        if (not skipSearch) then
            for _, po in ipairs({fs.path(workingDirectory, filePath), fs.path(workingDirectory, filePath .. ".lua"),
                                 filePath, filePath .. ".lua"}) do
                if (fs.isFile(po)) then
                    local fi = fs.open(po, "r")
                    if (fi) then
                        local si = fi:seek("end")
                        fi:seek("set")
                        content = fi:read(si)
                        fi:close()
                        fileName = po
                        break
                    end
                end
            end
        end
        if (fileName == "") then
            local err = function(a)
                if (not pCall) then
                    return error(a)
                else
                    return false, a
                end
            end
            if (libURL) then
                local ics = computer.getPCIDevices(findClass("FINInternetCard"))
                if (#ics < 1) then
                    err("No internet card to download LIB file!")
                end
                print("LIB File " .. (skipSearch and "Force Pull" or "Not Found") .. ": Downloading to " ..
                          fs.path(workingDirectory, filePath))
                local request = ics[1]:request(libURL, "GET", "")
                local tmp, hold, curDir = fs.path(workingDirectory, filePath), "", ""
                while #tmp > 0 do
                    local a, b = tmp:find("[/\\]")
                    if (not a) then
                        break
                    end
                    if (#tmp:sub(1, a) == 1) then
                        hold = hold .. tmp:sub(1, b)
                    else
                        curDir = curDir .. hold .. tmp:sub(1, a)
                        hold = ""
                        if (not fs.isDir(curDir)) then
                            fs.createDir(curDir)
                        end
                    end
                    tmp = tmp:sub(b + 1, #tmp)
                end

                fileName = fs.path(workingDirectory, filePath)
                content = table.pack(request:await())[2]

                local fi = fs.open(fileName, "w")
                if (fi) then
                    fi:write(content)
                    fi:close()
                else
                    err("Couldn't create the file requested!")
                end
            else
                err("No File Found!" .. filePath)
            end
        end
    end
    env["require"] = function(fip, pca)
        return _REQ(isString and workingDirectory or
                        fileName:sub(1, table.pack(fileName:find(MY_REQUIRE_PATTERN))[1] - 1), fip, pca)
    end
    env["include"] = function(str, pca)
        return _REQ(isString and workingDirectory or
                        fileName:sub(1, table.pack(fileName:find(MY_REQUIRE_PATTERN))[1] - 1), str, pca, true)
    end
    env["import"] = function(fip, lib, alp, pca)
        return _REQ(isString and workingDirectory or
                        fileName:sub(1, table.pack(fileName:find(MY_REQUIRE_PATTERN))[1] - 1), fip, pca, false, lib, alp)
    end
    env["FILE"] = isString and workingDirectory or fileName
    env["DIR"] = isString and workingDirectory or fileName:sub(1, table.pack(fileName:find(MY_REQUIRE_PATTERN))[1] - 1)
    setmetatable(env, {
        __index = _G
    })

    local compiledFunc = load(isString and filePath or content, isString and workingDirectory or fileName, nil, env)
    if executeAfterDownload then
        if (pCall) then
            return pcall(compiledFunc)
        else
            return compiledFunc()
        end
    else
        if (pCall) then
            return function()
                return pcall(compiledFunc)
            end
        else
            return compiledFunc
        end
    end

end
function require(filePath, pCall, executeAfterDownload)
    return _REQ(filePath:sub(1, table.pack(filePath:find(MY_REQUIRE_PATTERN))[1] - 1),
        filePath:sub(filePath:find(MY_REQUIRE_PATTERN)), pCall, false, nil, nil, executeAfterDownload)
end
function import(filePath, libURL, alwaysPull, pCall, executeAfterDownload)
    print("requested : " .. libURL)
    return _REQ(filePath:sub(1, table.pack(filePath:find(MY_REQUIRE_PATTERN))[1] - 1),
        filePath:sub(filePath:find(MY_REQUIRE_PATTERN)), pCall, false, libURL, alwaysPull, executeAfterDownload)
end

local pathTable = import(PATH_TABLE_PATH, REPO_URL..PATH_TABLE_PATH, true, false, false)
--print(pathTable.Scripts.Helpers.tableHelper)
