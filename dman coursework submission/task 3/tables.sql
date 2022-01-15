CREATE DATABASE cooking_recipes;

CREATE TABLE recipe (
    recipe_id INT NOT NULL
    recipe_name VARCHAR(30),
    recipe_description TEXT,
    recipe_prep_time VARCHAR(10),
    recipe_cook_time VARCHAR(10),
    recipe_serve_count VARCHAR(20),
    is_vegetarian BOOLEAN,
    kcal REAL,
    fat REAL,
    saturates REAL,
    carbs REAL,
    sugars REAL,
    fibre REAL,
    protein REAL,
    salt REAL,
    PRIMARY KEY (recipe_id)
);

CREATE TABLE method (
    method_id INT NOT NULL,
    recipe_id INT NOT NULL,
    step_count INT,
    method_steps TEXT,
    PRIMARY KEY (method_id),
    FOREIGN KEY (recipe_id) REFERENCES recipe(recipe_id)
);

CREATE TABLE skill (
    skill_id INT NOT NULL,
    recipe_id INT NOT NULL,
    skill_level VARCHAR(10),
    PRIMARY KEY (skill_id),
    FOREIGN KEY (recipe_id) REFERENCES recipe(recipe_id)
);

CREATE TABLE ingredient (
    ingredient_id SERIAL,
    ingredient_name VARCHAR(40),
    PRIMARY KEY (ingredient_id)
);

CREATE TABLE recipe_ingredient (
    rec_ing_id SERIAL,
    recipe_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    rec_ing_amount VARCHAR(10),
    rec_ing_prep VARCHAR(75),
    PRIMARY KEY (rec_ing_id),
    FOREIGN KEY (recipe_id) REFERENCES recipe(recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredient(ingredient_id)
);