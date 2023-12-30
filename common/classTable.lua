local classTable = {}


local function generateAllFromClasses(set)
    local all = {}
    for _, class in pairs(set) do
        table.insert(all, class)
    end
    return all
end


--- Build a set of classes
--- @param classes table A table of class names
--- @return ClassSet 
local function buildSet(classes)
    local set = {}
    for _, class in pairs(classes) do
        set[class] = class
    end
    set.All = generateAllFromClasses(set)
    return set
end


classTable.Scripts = buildSet({"CircuitSwitch"})



return classTable