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
