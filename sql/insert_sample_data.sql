INSERT INTO Categories (name) VALUES ('Dessert'), ('Main Course'), ('Appetizer');

INSERT INTO Users (username) VALUES ('Alice'), ('Bob'), ('Charlie');

INSERT INTO Recipes (name, description, category_id, user_id)
VALUES 
('Chocolate Cake', 'A rich chocolate cake.', 1, 1),
('Spaghetti Bolognese', 'Classic Italian pasta dish.', 2, 2);

INSERT INTO Ingredients (name) VALUES ('Flour'), ('Sugar'), ('Chocolate'), ('Pasta'), ('Tomato Sauce');

INSERT INTO Recipe_Ingredients (recipe_id, ingredient_id, quantity)
VALUES 
(1, 1, '2 cups'),
(1, 2, '1 cup'),
(1, 3, '200g'),
(2, 4, '500g'),
(2, 5, '300ml');

INSERT INTO Ratings (recipe_id, user_id, rating)
VALUES 
(1, 1, 5),
(1, 2, 4),
(2, 3, 5);