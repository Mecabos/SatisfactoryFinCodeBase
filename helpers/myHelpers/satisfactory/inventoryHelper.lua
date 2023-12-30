local InventoryHelper = {}

-- Get the inventory from a container
-- @param container The container to get the inventory from
-- @return The inventory
function InventoryHelper.getInventoryFromContainer(container)
    local inventory = container:getInventories()[1]
    return inventory
end

-- Count number of items in a container
-- @param container The container to count items in
-- @return A table with the item hash as key and the number of items as value
function InventoryHelper.countItemsInContainer(container)
 