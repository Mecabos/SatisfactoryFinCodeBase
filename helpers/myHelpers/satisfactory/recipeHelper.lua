local RecipeHelper = {}


---@param recipeName string the name of the recipe
---@param producerClassName string the name of the producer class
---@return Recipe the recipe object
function RecipeHelper.getRecipeByNameFromProducerClass(recipeName,producerClassName)
	for i, recipe in ipairs(GetSingleComponentRefByClassName(producerClassName):getRecipes()) do
	  if recipe.name == recipeName then
		return recipe
	  end
	end
end

return RecipeHelper