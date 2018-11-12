# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create(name:"Ted", weight:"180", mood:"upset")

####Badges####

Badge.destroy_all

Badge.create(name:"WELL BALANCED", description:"100 reps of any exercise in a day!", image:"url")
Badge.create(name:"PUSHY", description:"100 pushups in a day!", image:"url")
Badge.create(name:"GET LOW", description:"100 squats in a day!", image:"url")
