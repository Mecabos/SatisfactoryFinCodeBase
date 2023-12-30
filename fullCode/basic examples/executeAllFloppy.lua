function getFirstNearbyComponent (componentClass)
    local uuid = component.findComponent(findClass(componentClass))[1]
    if uuid then
     return component.proxy(uuid)
    else
     return false
    end
   end
   
   function getNearbyComponent (componentClass, idx)
    local uuid = component.findComponent(findClass(componentClass))[idx]
    if uuid then
     return component.proxy(uuid)
    else
     return false
    end
   end
   
   function getPCI (pciClass, idx)
    local pci = computer.getPCIDevices(findClass(pciClass))[idx]
    if pci then
     return pci
    else
     return false
    end
   end
   
   
   -- Shorten name
   fs = filesystem
   -- Initialize /dev
   if fs.initFileSystem("/dev") == false then
       computer.panic("Cannot initialize /dev")
   end
   
   local drives = fs.childs("/dev")
   
   -- Filtering out "serial", which is just the console output below
   for idx, drive in pairs(drives) do
       if drive == "serial" then table.remove(drives, idx) end
   end
   
   -- List all the drives
   print("Drives:")
   for _, drive in pairs(drives) do
       print(drive)
   end
   print("\n")
   
   --print(computer.getPCIDevices(findClass("FINComputerDriveHolder"))[1])
   -- Get the hard disk uuid
   disk_uuid = drives[1]
   if not disk_uuid then
    error("No hard drive?!")
   end
   
   -- Mount our drive to root
   fs.mount("/dev/"..disk_uuid, "/")
   
   floppy_uuid = drives[2]
   if not floppy_uuid then
    print("No Floppy inserted!\n")
   else
    -- Mount the floppy to /floppy
    fs.mount("/dev/"..floppy_uuid, "/floppy")
   end
   
   if not fs.exists("/scripts/") then
    fs.createDir("/scripts/")
   end
   
   -- List all the directories under root
   print("Directories:")
   for dir = 1, #fs.childs("/") do
    print(fs.childs("/")[dir])
   end
   print("\n")
   
   print("---------NEWBIE OS (TM)----------")
   print("------WELCOME YOU POOR SOUL------\n\n\n")
   
   print("loading...\n\n\n")
   
   local script_dir = "/scripts/"
   local floppy_scripts = "/floppy/scripts/"
   
   if fs.exists("/floppy/") and fs.exists(floppy_scripts) then
    for file_idx = 1, #fs.childs(floppy_scripts) do
     local filename = fs.childs(floppy_scripts)[file_idx]
     if fs.isFile(floppy_scripts..filename) then
      print("File "..filename.." found; copying script")
      if fs.isFile(script_dir..filename) then
       print("Overwriting existing copy...")
       local file = fs.open(script_dir..filename, "+r")
       file:write("")
       file:close()
      end   local floppy_file = fs.open(floppy_scripts..filename, "r")
      -- need a better way to do this
      local prog = floppy_file:read(9000)
      floppy_file:close()
      local file = fs.open(script_dir..filename, "w")
      file:write(prog)
      file:close()
      print("File written successfully\n")
     else
      print("Directory "..filename.." found")
     end
    end
   end
   
   local scripts_to_run = {}
   
   if #fs.childs(script_dir) then
    for file_idx = 1, #fs.childs(script_dir) do
     local filename = fs.childs(script_dir)[file_idx]
     if fs.isFile(script_dir..filename) then
      print("Adding script: "..filename.." to execution list...\n\n")
      scripts_to_run[#scripts_to_run] = filename
     end
    end
   else
    print("No scripts found; exiting...")
   end
   
   
   -- main loop
   function sleep(duration)
    event.pull(duration)
   end
   
   function os_loop()
    program_loop()
   end
   
   function program_loop()
    for _, filename in pairs(scripts_to_run) do
     print("Executing script: "..filename.."\n\n")
     local script = fs.loadFile(script_dir..filename)
     script()
     script = nil
    end
    print("All program execution completed")
   end
   
   thread = {
    threads = {},
    current = 1
   }
   
   function thread.create(func)
    local t = {}
    t.co = coroutine.create(func)
    function t:stop()
     for i,th in pairs(thread.threads) do
      if th == t then
       table.remove(thread.threads, i)
      end
     end
    end
    table.insert(thread.threads, t)
    return t
   end
   
   function thread:run()
    while true do
     if #thread.threads < 1 then
      return
     end
     if thread.current > #thread.threads then
      thread.current = 1
     end
     coroutine.resume(true, thread.threads[thread.current].co)
     thread.current = thread.current + 1
    end
   end
   
   while true do
    os_loop()
   end
   
   --t1 = thread.create(os_loop)
   
   --thread.run()