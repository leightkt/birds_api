# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tree.destroy_all
Bird.destroy_all

oak = Tree.create species: "Oak"
maple = Tree.create species: "Maple"


Bird.create color: "blue", size: "small", age: 3, tree_id: oak.id
Bird.create color: "red", size: "medium", age: 5, tree_id: maple.id
Bird.create color: "green", size: "large", age: 7, tree_id: maple.id

