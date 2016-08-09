# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Event.destroy_all

u1 = User.create!(
  username: "bobbyb",
  first_name: "Bob",
  last_name: "Brown",
  profile_picture: "http://www.fillmurray.com/300/300",
  email: "bob@bob.com",
  password: "password",
  password_confirmation: "password"
  )

u1.save!

e1 = Event.create!(
  title: "Bob's Bachelor Do",
  location: "East London",
  event_images: open(["http://www.fillmurray.com/300/300"]),
  user_id: u1.id

  )


e1.save!