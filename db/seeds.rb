# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



jona = User.create(email: "jona@design.up", password: "hihihi", name: "Jona Dinges")
garrett = User.create(email: "garrett@design.up", password: "hihihihi", name: "Garrett Miller")
julie = User.create(email: "julie@design.up", password: "hihihihi", name: "Julie Johnson")
markus = User.create(email: "markus@design.up", password: "hihihihi", name: "Markus Magnusson")

cuba_sunrise = Post.create(title: "Cuba Sunrise", remote_image_url:"http://res.cloudinary.com/dx6vo3hsg/image/upload/v1466597684/cubasunrise_grrpri.jpg", description: "Illustration of a car in the sunrise", user_id: jona.id)
chieftain = Post.create(title: "Chieftain", remote_image_url: "http://res.cloudinary.com/dx6vo3hsg/image/upload/v1466597685/chieftain_rapfgk.jpg", description: "Illustration", user_id: jona.id)
palm_springs = Post.create(title: "Palm Springs", remote_image_url: "http://res.cloudinary.com/dx6vo3hsg/image/upload/v1466597685/palm-strings1_gq9lsi.jpg", description: "Illustration", user_id: jona.id)
jeff = Post.create(title: "J E F F", remote_image_url: "http://res.cloudinary.com/dx6vo3hsg/image/upload/v1466597684/jeff_vec4jg.png", description: "Illustration", user_id: garrett.id)
que_the_super_dog = Post.create(title: "Que the Super Dog", remote_image_url:"http://res.cloudinary.com/dx6vo3hsg/image/upload/v1466597686/quethesuperdog_kinbwe.jpg", description: "Illustratin", user_id: garrett.id)
scandinavia_club = Post.create(title: "Scandinavia Club", remote_image_url: "http://res.cloudinary.com/dx6vo3hsg/image/upload/v1466597686/scandinavia-club1_xvvnqf.jpg", description: "Illustration", user_id: julie.id)
line_illustrations = Post.create(title: "Line Illustrations", remote_image_url: "http://res.cloudinary.com/dx6vo3hsg/image/upload/v1466597685/line-illustrations_knqosq.jpg", description: "Illustration", user_id: julie.id)
vacation = Post.create(title: "Vacation", remote_image_url: "http://res.cloudinary.com/dx6vo3hsg/image/upload/v1466597688/vacation_qfruki.gif", description: "Animation", user_id: markus.id)
bearhug = Post.create(title: "Bearhug", remote_image_url: "http://res.cloudinary.com/dx6vo3hsg/image/upload/v1466597692/bearhug_voucxb.gif", description: "Animation", user_id: markus.id)


Profile.create(user: jona, image: "jona.png", expertise: "Illustration, Game Art, UI/UX", city: "Berlin", country: "Germany", website: "http://jona.com", bio: "I am super creative")
Profile.create(user: garrett, image: "garrett.png", expertise: "Design, Photography", city: "Washington DC", country: "USA", website: "http://heyitsgarrett.com/", bio: "I am super creative")
Profile.create(user: julie, image: "julie.png", expertise: "Illustration, Design", city: "Moscow", country: "Russia", website: "http://julie.com", bio: "I am super creative")
Profile.create(user: markus, image: "markus.png", expertise: "Animation, Motion Graphics", city: "Stockholm", country: "Sweden", website: "http://markusmagnusson.tv/", bio: "I am super creative")

Comment.create([
  {comment: "Great design", user_id: markus.id, post_id: scandinavia_club.id},
  {comment: "Meh", user_id: markus.id, post_id: line_illustrations.id},
  {comment: "Best animation I've ever seen!", user_id: garrett.id, post_id: bearhug.id},
  {comment: "Nice!", user_id: markus.id, post_id: cuba_sunrise.id},
  {comment: "I like!", user_id: julie.id, post_id: chieftain.id},
  {comment: "Like your style", user_id: garrett.id, post_id: vacation.id},
  {comment: "Awesome!", user_id: markus.id, post_id: chieftain.id},
  {comment: "So cool!", user_id: julie.id, post_id: jeff.id}
  ])
