SELECT username
FROM Users
WHERE id IN (
    SELECT user_id
    FROM Recipes
    GROUP BY user_id
    HAVING COUNT(*) > 5
);