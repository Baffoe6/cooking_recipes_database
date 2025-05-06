# SQL Queries Explained: Cooking Recipes Database

This document explains the purpose and functionality of the SQL queries used in the Cooking Recipes Database project.

## 1. Insert Query
**Purpose**: Adds a new recipe to the database.

**Example**:
```sql
INSERT INTO Recipes (name, description, category_id, user_id)
VALUES ('Pancakes', 'Fluffy pancakes.', 1, 3);
```

## 2. Update Query
**Purpose**: Modifies an existing recipe based on a new value provided by the user.

**Example**:
```sql
UPDATE Recipes
SET description = 'Delicious fluffy pancakes.'
WHERE name = 'Pancakes';
```

## 3. Delete Query
**Purpose**: Removes a specific recipe from the database.

**Example**:
```sql
DELETE FROM Recipes
WHERE name = 'Pancakes';
```

## 4. Select Query with Filtering
**Purpose**: Retrieves all recipes that belong to a specific category and meet an additional condition.

**Example**:
```sql
SELECT * FROM Recipes
WHERE category_id = 1 AND user_id = 1;
```

## 5. Join Query
**Purpose**: Lists all recipes along with their associated ingredients.

**Example**:
```sql
SELECT r.name AS Recipe, i.name AS Ingredient, ri.quantity
FROM Recipes r
JOIN Recipe_Ingredients ri ON r.id = ri.recipe_id
JOIN Ingredients i ON ri.ingredient_id = i.id;
```

## 6. Aggregation Query
**Purpose**: Displays the highest-rated recipe by calculating the maximum rating from the Ratings table.

**Example**:
```sql
SELECT r.name AS Recipe, MAX(rt.rating) AS HighestRating
FROM Recipes r
JOIN Ratings rt ON r.id = rt.recipe_id
GROUP BY r.name
ORDER BY HighestRating DESC
LIMIT 1;
```

## 7. Subquery
**Purpose**: Identifies users who have submitted more than five recipes by using a subquery to count submissions per user.

**Example**:
```sql
SELECT username
FROM Users
WHERE id IN (
    SELECT user_id
    FROM Recipes
    GROUP BY user_id
    HAVING COUNT(*) > 5
);
```

## Summary
These queries demonstrate the ability to perform basic CRUD operations, complex joins, aggregations, and subqueries in the Cooking Recipes Database. Each query is designed to address specific use cases for managing and analyzing recipe data.

