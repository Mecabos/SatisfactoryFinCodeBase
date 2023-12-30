local manufacturer = component.proxy(...)
local recipe = manufacturer:getRecipe()

print(recipe.name)

local connector = manufacturer:getFactoryConnectors()[1]
event.listen(connector)

while true do
    local e, s, i = event.pull()
    if e == "ItemTransfer" then
        print("Transfer!", i)
    end
end
