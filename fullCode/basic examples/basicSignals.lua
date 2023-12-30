local panel = component.proxy("...")
local btn = panel:getModule(0, 0, 0)

event.ignoreAll()
event.clear()

event.listen(btn)

while true do
    local e, s = event.pull()
    if s == btn and e == "Trigger" then
        print("meep")
    end
end