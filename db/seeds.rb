# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.create(name:"Ted", weight:"180", mood:"upset")

####Badges####

Badge.destroy_all

Badge.create(name:"WELL BALANCED", description:"100 reps of any exercise in a day!", image:"url")
Badge.create(name:"Pushup Master", description:"50 reps of pushups!", image:"url") 
Badge.create(name:"Situp Master", description:"50 reps of situps!", image:"url")
Badge.create(name:"Jumping Jack Master", description:"50 reps of jumping jacks!", image:"url")
Badge.create(name:"Lunge Master", description:"50 reps of lunges!", image:"url")
Badge.create(name:"Squat Master", description:"50 reps of squats!", image:"url")

Exercise.destroy_all

Exercise.create(name:"Pushups")
Exercise.create(name:"Situps")
Exercise.create(name:"Jumping Jacks")
Exercise.create(name:"Squats")
Exercise.create(name:"Lunges")

Routine.destroy_all

Routine.create(user_id: 1, exercise_id: 2, reps: 25)
Routine.create(user_id: 1, exercise_id: 3, reps: 30)
Routine.create(user_id: 1, exercise_id: 4, reps: 15)
Routine.create(user_id: 1, exercise_id: 5, reps: 20)




# Routine.create(user_id:u1.id, exercise_id: e1.id, reps: 10 )
