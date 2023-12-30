local SignHelper = {}

---@param sign obj the sign object
---@param iconNumber integer the icon number to set 
---@return void
function SignHelper.setSignIcon(sign, iconNumber)
	local prefabData = sign:getPrefabSignData()
	local iconElements, iconValues = prefabData:getIconElements()
	
	iconValues[1] = iconNumber
	prefabData:setIconElements(iconElements,iconValues)
	sign:setPrefabSignData(prefabData)
end

return SignHelper