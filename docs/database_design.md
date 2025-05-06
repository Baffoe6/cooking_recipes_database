# Database Design: Cooking Recipes Database

This document provides an overview of the database design for the Cooking Recipes Database project. The design follows relational database principles to ensure data integrity and efficient querying.

## Entities and Tables

1. **Recipes**:
   - Stores details about recipes.
   - **Columns**:
     - `id` (Primary Key): Unique identifier for each recipe.
     - `name`: Name of the recipe.
     - `description`: Description of the recipe.
     - `category_id` (Foreign Key): Links to the `Categories` table.
     - `user_id` (Foreign Key): Links to the `Users` table.

2. **Ingredients**:
   - Stores details about ingredients.
   - **Columns**:
     - `id` (Primary Key): Unique identifier for each ingredient.
     - `name`: Name of the ingredient.

3. **Recipe_Ingredients**:
   - A junction table to associate recipes with ingredients.
   - **Columns**:
     - `recipe_id` (Foreign Key): Links to the `Recipes` table.
     - `ingredient_id` (Foreign Key): Links to the `Ingredients` table.
     - `quantity`: Quantity of the ingredient used in the recipe.

4. **Categories**:
   - Stores recipe categories.
   - **Columns**:
     - `id` (Primary Key): Unique identifier for each category.
     - `name`: Name of the category.

5. **Users**:
   - Stores user information.
   - **Columns**:
     - `id` (Primary Key): Unique identifier for each user.
     - `username`: Name of the user.

6. **Ratings**:
   - Stores ratings for recipes.
   - **Columns**:
     - `id` (Primary Key): Unique identifier for each rating.
     - `recipe_id` (Foreign Key): Links to the `Recipes` table.
     - `user_id` (Foreign Key): Links to the `Users` table.
     - `rating`: Rating value (1 to 5).

## Relationships

- **Recipes**:
  - Each recipe belongs to one category (`category_id`).
  - Each recipe is submitted by one user (`user_id`).
  - Each recipe can have multiple ingredients through the `Recipe_Ingredients` table.
  - Each recipe can have multiple ratings.

- **Ingredients**:
  - Each ingredient can be used in multiple recipes through the `Recipe_Ingredients` table.

- **Categories**:
  - Each category can have multiple recipes.

- **Users**:
  - Each user can submit multiple recipes.
  - Each user can rate multiple recipes.

- **Ratings**:
  - Each rating is associated with one recipe and one user.

## ER Diagram

The ER diagram visually represents the relationships between the tables. Refer to the `cooking_recipes_er.png` file in the `er_diagram/` folder for the diagram.

## Design Considerations

- **Normalization**: The database is normalized to avoid redundancy and ensure data integrity.
- **Scalability**: The design supports adding more entities or attributes in the future.
- **Data Integrity**: Foreign keys and constraints are used to maintain relationships between tables.

## Summary

This database design ensures efficient storage and retrieval of data for managing cooking recipes. It supports complex queries for data analysis while maintaining data integrity and scalability.