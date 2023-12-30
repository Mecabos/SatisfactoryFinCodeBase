local StringHelper = {}

-- this function is used to split a string into a table using a separator
---@param inputstr string the string to split
---@param sep string separator to use for splitting
---@return table string[] the splitted string
function StringHelper.splitWithSeparator(inputstr, sep)
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

--- example string local str = "machine setting1=42 setting2=meep" 
--- this function will return a table containing the separated values
--- @param str string the string to extract the settings from
--- @return table the settings table
function StringHelper.extractSettings(str)
    local fields = {}
    for key, value in string.gmatch(str, "(%w+)=([^%s]+)") do
        fields[key] = value
    end
    return fields
end

---this function used to compare two strings case insensitive
---@param s1 string
---@param s2 string
---@return number the comparison result (0 if equal, -1 if s1 < s2, 1 if s1 > s2)
function StringHelper.caseInsensitiveComparator(s1, s2)
    local n1 = string.len(s1);
    local n2 = string.len(s2);
    local min = math.min(n1, n2);
    for i = 1, min do
        local c1 = string.sub(s1, i, i);
        local c2 = string.sub(s2, i, i);
        if (c1 ~= c2) then
            c1 = string.upper(c1);
            c2 = string.upper(c2);
            if (c1 ~= c2) then
                c1 = string.lower(c1);
                c2 = string.lower(c2);
                if (c1 ~= c2) then
                    -- No overflow because of numeric promotion
                    local ret = string.byte(c1) - string.byte(c2)
                    return ret;
                end
            end
        end
    end
    return n1 - n2;
end

return StringHelper
