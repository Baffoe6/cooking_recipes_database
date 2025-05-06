SELECT r.name AS Recipe, MAX(rt.rating) AS HighestRating
FROM Recipes r
JOIN Ratings rt ON r.id = rt.recipe_id
GROUP BY r.name
ORDER BY HighestRating DESC
LIMIT 1;