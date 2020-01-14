# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user1 = User.create(name:"Renata")
# user2 = User.create(name:"Sara")
# user3 = User.create(name:"Keemo")

# recipe1 = Recipe.create(name:"Kebab",user_id: 2)
# recipe2 = Recipe.create(name:"Rice and peas",user_id: 3)
# recipe3 = Recipe.create(name:"Caipirinha",user_id:1)

# i1 = Ingredient.create(name: "Meat")
# i2 = Ingredient.create(name: "Red kidney beans")
# i3 = Ingredient.create(name: "Rice")
# i4 = Ingredient.create(name: "Lime")
# i5 = Ingredient.create(name: "CachaÇa")

$all_users = User.all
$all_ingredients = Ingredient.all

10.times do
    Allergy.create(user: $all_users.sample, ingredient: $all_ingredients.sample)
end
