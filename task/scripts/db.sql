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

insert into CookingMethod (method_name, image_url,date_created) values ("Slow Cooker","https://s3.amazonaws.com/simplyfed-assets/image/images.crateandbarrel_1.jpg",CURDATE());
insert into CookingMethod (method_name,image_url, date_created) values ("Sous Vide","https://s3.amazonaws.com/simplyfed-assets/image/images.crateandbarrel_2.jpg",CURDATE());
insert into CookingMethod (method_name,image_url, date_created) values ("Juicer","https://s3.amazonaws.com/simplyfed-assets/image/images.crateandbarrel_3.jpg",CURDATE());
insert into CookingMethod (method_name, image_url,date_created) values ("Blender","https://s3.amazonaws.com/simplyfed-assets/image/images.crateandbarrel_4.jpg",CURDATE());


insert into PrimaryIngredient (ingredient_name, date_created) values ("Pork",CURDATE());
insert into PrimaryIngredient (ingredient_name, date_created) values ("Fish",CURDATE());
insert into PrimaryIngredient (ingredient_name, date_created) values ("Beef",CURDATE());
insert into PrimaryIngredient (ingredient_name, date_created) values ("Chicken",CURDATE());


insert into RecipeCuisine (recipecuisine_name, date_created) values ("Hispanic",CURDATE());
insert into RecipeCuisine (recipecuisine_name, date_created) values ("Italian",CURDATE());
insert into RecipeCuisine (recipecuisine_name, date_created) values ("American",CURDATE());
insert into RecipeCuisine (recipecuisine_name, date_created) values ("Beverage",CURDATE());
insert into RecipeCuisine (recipecuisine_name, date_created) values ("French",CURDATE());
insert into RecipeCuisine (recipecuisine_name, date_created) values ("Carribbean",CURDATE());
insert into RecipeCuisine (recipecuisine_name, date_created) values ("Asian",CURDATE());

insert into Recipe (recipe_name,recipe_instructions,method_id,ingredient_id,recipecuisine_id, date_created) values ("Eve's Downfall",	"Prepare all ingredients so that they will fit into the feed chute of the juicer. Either juice immediately, or vacuum seal & refridgerate for later use.",	3,4,4,CURDATE());
insert into Recipe (recipe_name,recipe_instructions,method_id,ingredient_id,recipecuisine_id, date_created) values ("Apple Basic",	"Prepare all ingredients so that they will fit into the feed chute of the juicer. Either juice immediately, or vacuum seal & refridgerate for later use.",	3,4,4,CURDATE());

