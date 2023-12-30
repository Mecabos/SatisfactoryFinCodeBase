--All drives are located at %LocalAppData%\FactoryGame\Saved\SaveGames\Computers

--SHOW ALL THE DRIVES
-- Shorten name
fs = filesystem
-- Initialize /dev
if fs.initFileSystem("/dev") == false then
    computer.panic("Cannot initialize /dev")
end
-- List all the drives
for _, drive in pairs(fs.childs("/dev")) do
    print(drive)
end
-------------------------------------------------------------------------------



