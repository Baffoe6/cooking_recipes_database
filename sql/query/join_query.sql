SELECT r.name AS Recipe, i.name AS Ingredient, ri.quantity
FROM Recipes r
JOIN Recipe_Ingredients ri ON r.id = ri.recipe_id
JOIN Ingredients i ON ri.ingredient_id = i.id;