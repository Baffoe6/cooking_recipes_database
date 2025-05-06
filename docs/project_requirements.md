# Project Requirements: Cooking Recipes Database

This project involves designing and implementing a relational database system for storing and managing cooking recipes. The system should allow users to:

- Store, retrieve, update, and delete recipes.
- Perform complex queries to analyze the stored data.

## Key Features

1. **Database Design**:
   - Develop an Entity-Relationship (ER) diagram to model the database structure.
   - Include tables for the following entities: Recipes, Ingredients, Categories, Users, and Ratings.
   - Implement tables with appropriate primary and foreign keys.

2. **Database Implementation**:
   - Create the database schema using SQL.
   - Populate the database with sample data for testing.

3. **SQL Queries**:
   - **Insert Query**: Add a new recipe to the database.
   - **Update Query**: Modify an existing recipe based on a new value provided by the user.
   - **Delete Query**: Remove a specific recipe from the database.
   - **Select Query with Filtering**: Retrieve all recipes that belong to a specific category and meet an additional condition.
   - **Join Query**: List all recipes along with their associated ingredients.
   - **Aggregation Query**: Display the highest-rated recipe by calculating the maximum rating from the Ratings table.
   - **Subquery**: Identify users who have submitted more than five recipes by using a subquery to count submissions per user.

4. **Documentation**:
   - Provide a detailed explanation of the database design.
   - Include examples of SQL queries and their purpose.

5. **ER Diagram**:
   - Create a visual representation of the database structure.

## Deliverables

- A fully functional MySQL database schema.
- SQL scripts for creating the schema and populating it with sample data.
- SQL scripts for the required queries.
- Documentation explaining the database design and queries.
- An ER diagram illustrating the database structure.

## Tools and Technologies

- **Database**: MySQL or any compatible relational database system.
- **Diagram Tool**: draw.io, Lucidchart, or any ER diagram tool.
- **Documentation**: Markdown files for project documentation.

## Goals

The goal of this project is to demonstrate the ability to:
- Design a relational database using best practices.
- Write efficient SQL queries for data manipulation and analysis.
- Document the database design and query logic clearly.