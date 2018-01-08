# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Post.destroy_all
Category.create([{title: "Telescopes"},{title: "Mounts"},{title: "Accessories"},{title: "Cameras"},])
Post.create({title: "astronomy stuff", description: " a lot of aperature in this one", category_id: 1}) 


