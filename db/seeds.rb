# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all
Favorite.destroy_all

lindsay = User.create(first_name: "Lindsay", last_name: "Mecher", email: "lindsaymecher@gmail.com", password: "yolo", voice_type: "Mezzo-Soprano", biography: "American Mezzo-Soprano", degree: "Master's", institution: "UNC School of the Arts", website: "www.lindsaymecher.com")
josh = User.create(first_name: "Josh", last_name: "Pritchett", email: "josh@josh.com", password: "yolo1", voice_type: "Countertenor", biography: "American Countertenor", degree: "Master's", institution: "North Park University", website: "www.joshpritchett.com")
nicolette = User.create(first_name: "Nicolette", last_name: "Nazarowski", email: "nikki@nikki.com", password: "yolo2", voice_type: "Mezzo-Soprano", biography: "American Mezzo-Soprano", degree: "Master's", institution: "UM Kansas City", website: "www.nicolettenazarowski.com")

post1 = Post.create(performance_type: "Concert", voice_type: "Mezzo-Soprano", time: "2000-01-01T12:50:00.000Z", date: "2020-12-13", repertoire: "Brahms Requiem", notes: "Must be an excellent sightreader.", venue_name: "Chicago Symphony Orchestra", street_address: "220 S Michigan Ave", city: "Chicago", state: "IL", zip: 60604, contact_first_name: lindsay.first_name, contact_last_name: lindsay.last_name, contact_email: lindsay.email, paid: true, user: lindsay)
post2 = Post.create(performance_type: "Religious Service", voice_type: "Mezzo-Soprano", time: "2000-01-01T12:50:00.000Z", date: "2020-12-25", repertoire: "Britten and Hovhaness", notes: "Must be an excellent sightreader. There is no rehearsal beforehand.", venue_name: "First United Methodist Church", street_address: "516 Church St", city: "Evanston", state: "IL", zip: 60201, contact_first_name: nicolette.first_name, contact_last_name: nicolette.last_name, contact_email: nicolette.email, paid: true, user: nicolette)
post3 = Post.create(performance_type: "Rehearsal", voice_type: "Countertenor", time: "2000-01-01T12:50:00.000Z", date: "2020-12-20", repertoire: "Bach Magnificat", notes: "I need a mezzo or alto to fill in for a rehearsal. Must know the Bach Magnificat alto solos.", venue_name: "St. John Cantius Church", street_address: "825 N Carpenter St", city: "Chicago", state: "IL", zip: 60642, contact_first_name: josh.first_name, contact_last_name: josh.last_name, contact_email: josh.email, paid: true, user: josh)


favorite1 = Favorite.create(post: post1, user: lindsay)
favorite2 = Favorite.create(post: post3, user: lindsay)
favorite3 = Favorite.create(post: post1, user: josh)
favorite4 = Favorite.create(post: post2, user: josh)
favorite5 = Favorite.create(post: post1, user: nicolette)
favorite6 = Favorite.create(post: post3, user: nicolette)
