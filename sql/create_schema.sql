CREATE DATABASE CookingRecipesDB;
USE CookingRecipesDB;

CREATE TABLE Categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL
);

CREATE TABLE Recipes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    category_id INT,
    user_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(id),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

CREATE TABLE Ingredients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Recipe_Ingredients (
    recipe_id INT,
    ingredient_id INT,
    quantity VARCHAR(255),
    PRIMARY KEY (recipe_id, ingredient_id),
    FOREIGN KEY (recipe_id) REFERENCES Recipes(id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredients(id)
);

CREATE TABLE Ratings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    recipe_id INT,
    user_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    FOREIGN KEY (recipe_id) REFERENCES Recipes(id),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);