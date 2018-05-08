DROP TABLE IF EXISTS CookingMethod;

CREATE TABLE CookingMethod (
    method_id INT NOT NULL AUTO_INCREMENT,
    method_name VARCHAR(100) NOT NULL,
    image_url VARCHAR(100) NOT NULL,
    date_created DATE, PRIMARY KEY (method_id), UNIQUE (method_name)

);

DROP TABLE IF EXISTS PrimaryIngredient;

CREATE TABLE PrimaryIngredient (
    ingredient_id INT NOT NULL AUTO_INCREMENT,
    ingredient_name VARCHAR(100) NOT NULL,
    date_created DATE, PRIMARY KEY (ingredient_id), UNIQUE (ingredient_name)

);

DROP TABLE IF EXISTS RecipeCuisine;

CREATE TABLE RecipeCuisine (
    recipecuisine_id INT NOT NULL AUTO_INCREMENT,
    recipecuisine_name VARCHAR(100) NOT NULL,
    date_created DATE, PRIMARY KEY (recipecuisine_id), UNIQUE (recipecuisine_name)

);
DROP TABLE IF EXISTS Recipe;

CREATE TABLE Recipe (
    recipe_id INT NOT NULL AUTO_INCREMENT,
    method_id INT,
    ingredient_id INT,
    recipecuisine_id INT,
    recipe_name VARCHAR(100) NOT NULL,
    recipe_instructions VARCHAR(300) NOT NULL,
    date_created DATE,
    foreign key (method_id) references CookingMethod (method_id),
    foreign key (ingredient_id) references PrimaryIngredient (ingredient_id),
    foreign key (recipecuisine_id) references RecipeCuisine (recipecuisine_id),
    unique key ix_recipe_id (recipe_id),
    PRIMARY KEY (recipe_id, method_id, ingredient_id, recipecuisine_id),
    UNIQUE (recipe_name)

);
