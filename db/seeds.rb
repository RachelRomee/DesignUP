# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jona = User.create(email: "jona@design.up", password: "hihihi")
garrett = User.create(email: "garrett@design.up", password: "hihihihi")
julie = User.create(email: "julie@design.up", password: "hihihihi")
markus = User.create(email: "markus@design.up", password: "hihihihi")

#image1 = Image.create

Post.create(title: "Cuba Sunrise", image: "cubasunrise.jpg", description: "Illustration of a car in the sunrise", user_id: jona.id)
Post.create(title: "Chieftain", image: "chieftani.jpg", description: "Illustration", user_id: jona.id)
Post.create(title: "Palm Springs", image: "palm-string1.jpg", description: "Illustration", user_id: jona.id)
Post.create(title: "J E F F", image: "jeff.png", description: "Illustration", user_id: garrett.id)
Post.create(title: "Que the Super Dog", image: "quethesuperdog.jpg", description: "Illustratin", user_id: garrett.id)
Post.create(title: "Scandinavia Club", image: "scandinavia-clubwhole.jpg", description: "Illustration", user_id: julie.id)
Post.create(title: "Line Illustrations", image: "line-illustrations.jpg", description: "Illustration", user_id: julie.id)
Post.create(title: "Vacation", image: "vacation.gif", description: "Animation", user_id: markus.id)
Post.create(title: "Bearhug", image: "bearhug.gif", description: "Animation", user_id: markus.id)

#Avatar.create

Profile.create(user: jona, image: "jona.png", expertise: "Illustration, Game Art, UI/UX", city: "Berlin", country: "Germany", website: "http://jona.com", bio: "I am super creative")
Profile.create(user: garrett, image: "garrett.png", expertise: "Design, Photography", city: "Washington DC", country: "USA", website: "http://heyitsgarrett.com/", bio: "I am super creative")
Profile.create(user: julie, image: "julie.png", expertise: "Illustration, Design", city: "Moscow", country: "Russia", website: "http://julie.com", bio: "I am super creative")
Profile.create(user: markus, image: "markus.png", expertise: "Animation, Motion Graphics", city: "Stockholm", country: "Sweden", website: "http://markusmagnusson.tv/", bio: "I am super creative")
