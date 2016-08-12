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
  username: "Angie",
  first_name: "Angela",
  last_name: "Merkel",
  profile_image: open("./db/images/angela_Merkel.jpg"),
  email:"angie@germany.com",
  password: "password",
  password_confirmation: "password"
  )

u1.save!

u2 = User.create!(
  username: "Prez",
  first_name: "Barack",
  last_name: "Obama",
  profile_image: open("./db/images/barack_obama.jpg"),
  email: "MrPrez@whitehouse.com",
  password: "password",
  password_confirmation: "password"
  )

u2.save!

u15 = User.create!(
  username: "Trey",
  first_name: "Bill",
  last_name: "Gates",
  profile_image: open("./db/images/bill_gates.jpg"),
  email: "bg@microsoft.com",
  password: "password",
  password_confirmation: "password"
  )

u15.save!

u3 = User.create!(
  username: "Payet",
  first_name: "Dimitri",
  last_name: "Payet",
  profile_image: open("./db/images/dimitri_payet.jpg"),
  email: "baller@shotcaller.com",
  password: "password",
  password_confirmation: "password"
  )

u3.save!

u4 = User.create!(
  username: "Humpty Dumpty",
  first_name: "Donald",
  last_name: "Trump",
  profile_image: open("./db/images/donald_trump.jpg"),
  email: "loser@madness.com",
  password: "password",
  password_confirmation: "password"
  )

u4.save!

u5 = User.create!(
  username: "Hillary.DC",
  first_name: "Hillary",
  last_name: "Clinton",
  profile_image: open("./db/images/hillary_clinton.jpg"),
  email: "h.clinton@whitehouse.com",
  password: "password",
  password_confirmation: "password"
  )

u5.save!

u6 = User.create!(
  username: "Jack",
  first_name: "Ma",
  last_name: "Yun",
  profile_image: open("./db/images/jack_ma.png"),
  email: "jack_ma@alibaba.com",
  password: "password",
  password_confirmation: "password"
  )

u6.save!

u14 = User.create!(
  username: "Heart",
  first_name: "Kevin",
  last_name: "Heart",
  profile_image: open("./db/images/Kevin_Heart.jpg"),
  email: "heart@comedian.com",
  password: "password",
  password_confirmation: "password"
  )

u14.save!

u7 = User.create!(
  username: "LP",
  first_name: "Larry",
  last_name: "Page",
  profile_image: open("./db/images/larry_page.jpg"),
  email: "lp@google.com",
  password: "password",
  password_confirmation: "password"
  )

u7.save!

u8 = User.create!(
  username: "Flying Fish",
  first_name: "Michael",
  last_name: "Phelps",
  profile_image: open("./db/images/michael_phelps.jpg"),
  email: "michael@19goldmedals.com",
  password: "password",
  password_confirmation: "password"
  )

u8.save!

u9 = User.create!(
  username: "Perm",
  first_name: "Marcia",
  last_name: "Clark",
  profile_image: open("./db/images/marcia_clark.jpg"),
  email: "MC@thejuice.com",
  password: "password",
  password_confirmation: "password"
  )

u9.save!

u10 = User.create!(
  username: "S",
  first_name: "Sheryl",
  last_name: "Sandberg",
  profile_image: open("./db/images/sheryl_sandberg.jpg"),
  email: "Sandberg@facebook.com",
  password: "password",
  password_confirmation: "password"
  )

u10.save!

u11 = User.create!(
  username: "Lightning",
  first_name: "Usain",
  last_name: "Bolt",
  profile_image: open("./db/images/usain_bolt.jpg"),
  email: "bolt@speed.com",
  password: "password",
  password_confirmation: "password"
  )

u11.save!

u12 = User.create!(
  username: "Yishan",
  first_name: "Yishan",
  last_name: "Wong",
  profile_image: open("./db/images/yishan_wong.jpg"),
  email: "YW@reddit.com",
  password: "password",
  password_confirmation: "password"
  )

u12.save!

u13 = User.create!(
  username: "Maria",
  first_name: "Maria",
  last_name: "Manning",
  profile_image: open("./db/images/maria.jpg"),
  email: "mm@gmail.com",
  password: "password",
  password_confirmation: "password"
  )

u13.save!

e1 = Event.create!(
  title: "Lauren & James",
  location: "East London",
  event_images: [open("./db/images/adcockwedding.jpg"), open("./db/images/laurenj.jpg")],
  user_id: u13.id
  )

e1.save!

e2 = Event.create!(
  title: "Lakers vs Spurs",
  location: "West London",
  event_images: [open("./db/images/laker_game.jpg"), open("./db/images/kbdunk.jpg")],
  user_id: u14.id
  )

e2.save!

e3 = Event.create!(
  title: "Coachella 2017",
  location: "South London",
  event_images: [open("./db/images/concert.jpg"), open("./db/images/coachella.jpg")],
  user_id: u8.id
  )

e3.save!

e4 = Event.create!(
  title: "The Gang in London",
  location: "West London",
  event_images: [open("./db/images/boselfie.jpg"), open("./db/images/dcQueen.jpg")],
  user_id: u2.id
  )

e4.save!

e5 = Event.create!(
  title: "Men's 200m butterfly after party",
  location: "East London",
  event_images: [open("./db/images/phelps.jpg"), open("./db/images/diddy.jpg")],
  user_id: u8.id
  )

e5.save!

e6 = Event.create!(
  title: "The Donald Party",
  location: "East London",
  event_images: [open("./db/images/trump-orange.jpg"), open("./db/images/thedonald.jpg")],
  user_id: u1.id
  )

e6.save!

e7 = Event.create!(
  title: "Tech City London",
  location: "East London",
  event_images: [open("./db/images/larrypagelondon.jpg"), open("./db/images/sherylslondon.jpg")],
  user_id: u15.id
  )

e7.save!

e8 = Event.create!(
  title: "Freddie's 2nd Birthday",
  location: "North London",
  event_images: [open("./db/images/freddie2.jpg"), open("./db/images/freddie1.jpg")],
  user_id: u11.id
  )

e8.save!

e9 = Event.create!(
  title: "West Ham Pub Crawl",
  location: "East London",
  event_images: [open("./db/images/westhamsteel.jpg"), open("./db/images/westhamjoe.jpg")],
  user_id: u3.id
  )

e9.save!

e10 = Event.create!(
  title: "Microsoft",
  location: "North London",
  event_images: [open("./db/images/larrypagelondon.jpg"), open("./db/images/sherylslondon.jpg")],
  user_id: u15.id
  )

e10.save!

e11 = Event.create!(
  title: "Tech Summit",
  location: "North London",
  event_images: [open("./db/images/larrypagelondon.jpg"), open("./db/images/sherylslondon.jpg")],
  user_id: u15.id
  )

e11.save!

