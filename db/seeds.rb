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

lindsay = User.create(honorific: "Ms.", first_name: "Lindsay", last_name: "Mecher", email: "lindsaymecher@gmail.com", password: "yolo", voice_type: "Mezzo-Soprano", biography: "American Mezzo-Soprano", degree: "Master's", institution: "UNC School of the Arts", website: "www.lindsaymecher.com", resume: "https://drive.google.com/file/d/1AFezqIFhjwHl87Pdkx_1idnFgeiQBVR5/view", headshot: "https://drive.google.com/file/d/0B__BZqKE89N6QkFVTEI4a3R4aG8/view?usp=sharing", video: "https://www.youtube.com/watch?v=_UXo5sVO5jk")
josh = User.create(honorific: "Mr.", first_name: "Josh", last_name: "Pritchett", email: "josh@josh.com", password: "yolo1", voice_type: "Countertenor", biography: "American Countertenor", degree: "Master's", institution: "North Park University", website: "www.joshpritchett.com")
nicolette = User.create(honorific: "Ms.", first_name: "Nicolette", last_name: "Nazarowski", email: "nikki@nikki.com", password: "yolo2", voice_type: "Mezzo-Soprano", biography: "American Mezzo-Soprano", degree: "Master's", institution: "UM Kansas City", website: "www.nicolettenazarowski.com")
director1 = User.create(honorific: "Mr.", first_name: "John", last_name: "Smith", email: "john@me.com", password: "yolo", voice_type: "N/A", biography: "Director of a Church", degree: "Master's", institution: "McGill University", website: "www.johnsmith.com")
director2 = User.create(honorific: "Mrs.", first_name: "Mary Kay", last_name: "Spalding", email: "mary@me.com", password: "yolo", voice_type: "N/A", biography: "Director of a Theatre", degree: "Master's", institution: "The Juilliard School", website: "www.mary.com")


post1 = Post.create(performance_type: "Concert", voice_type: "Mezzo-Soprano", time: "2000-01-01T12:50:00.000Z", date: "2020-12-13", repertoire: "Brahms Requiem", notes: "Must be an excellent sightreader.", venue_name: "Chicago Symphony Orchestra", street_address: "220 S Michigan Ave", address_line_two: "", city: "Chicago", state: "IL", zip: 60604, contact_first_name: lindsay.first_name, contact_last_name: lindsay.last_name, contact_email: lindsay.email, paid: true, user: lindsay, user_honorific: lindsay.honorific)
post2 = Post.create(performance_type: "Religious Service", voice_type: "Mezzo-Soprano", time: "2000-01-01T12:50:00.000Z", date: "2020-12-25", repertoire: "Britten and Hovhaness", notes: "Must be an excellent sightreader. There is no rehearsal beforehand.", venue_name: "First United Methodist Church", street_address: "516 Church St", address_line_two: "", city: "Evanston", state: "IL", zip: 60201, contact_first_name: nicolette.first_name, contact_last_name: nicolette.last_name, contact_email: nicolette.email, paid: true, user: nicolette, user_honorific: nicolette.honorific)
post3 = Post.create(performance_type: "Rehearsal", voice_type: "Countertenor", time: "2000-01-01T12:50:00.000Z", date: "2020-12-20", repertoire: "Bach Magnificat", notes: "I need a mezzo or alto to fill in for a rehearsal. Must know the Bach Magnificat alto solos.", venue_name: "St. John Cantius Church", street_address: "825 N Carpenter St", address_line_two: "", city: "Chicago", state: "IL", zip: 60642, contact_first_name: josh.first_name, contact_last_name: josh.last_name, contact_email: josh.email, paid: true, user: josh, user_honorific: josh.honorific)
post4 = Post.create(performance_type: "Religious Service", voice_type: "Soprano", time: "2000-01-01T10:00:00.000Z", date: "2020-10-18", repertoire: "Lauridsen and Spirituals", notes: "I need a strong sightreader. There is no rehearsal and you will be the only soprano.", venue_name: "St. John Vianney Catholic Church", street_address: "46 N Wolf Rd", address_line_two: "", city: "Northlake", state: "IL", zip: 60164, contact_first_name: director1.first_name, contact_last_name: director1.last_name, contact_email: director1.email, paid: true, user: director1, user_honorific: director1.honorific)
post5 = Post.create(performance_type: "Religious Service", voice_type: "Alto", time: "2000-01-01T10:00:00.000Z", date: "2020-10-18", repertoire: "Lauridsen and Spirituals", notes: "I need a strong sightreader. There is no rehearsal and you will be the only alto.", venue_name: "St. John Vianney Catholic Church", street_address: "46 N Wolf Rd", address_line_two: "", city: "Northlake", state: "IL", zip: 60164, contact_first_name: director1.first_name, contact_last_name: director1.last_name, contact_email: director1.email, paid: true, user: director1, user_honorific: director1.honorific)
post6 = Post.create(performance_type: "Religious Service", voice_type: "Tenor", time: "2000-01-01T10:00:00.000Z", date: "2020-10-18", repertoire: "Lauridsen and Spirituals", notes: "I need a strong sightreader. There is no rehearsal and you will be the only tenor.", venue_name: "St. John Vianney Catholic Church", street_address: "46 N Wolf Rd", address_line_two: "", city: "Northlake", state: "IL", zip: 60164, contact_first_name: director1.first_name, contact_last_name: director1.last_name, contact_email: director1.email, paid: true, user: director1, user_honorific: director1.honorific)
post5 = Post.create(performance_type: "Religious Service", voice_type: "Bass", time: "2000-01-01T10:00:00.000Z", date: "2020-10-18", repertoire: "Lauridsen and Spirituals", notes: "I need a strong sightreader. There is no rehearsal and you will be the only bass.", venue_name: "St. John Vianney Catholic Church", street_address: "46 N Wolf Rd", address_line_two: "", city: "Northlake", state: "IL", zip: 60164, contact_first_name: director1.first_name, contact_last_name: director1.last_name, contact_email: director1.email, paid: true, user: director1, user_honorific: director1.honorific)









favorite1 = Favorite.create(post: post1, user: lindsay)
favorite2 = Favorite.create(post: post3, user: lindsay)
favorite3 = Favorite.create(post: post1, user: josh)
favorite4 = Favorite.create(post: post2, user: josh)
favorite5 = Favorite.create(post: post1, user: nicolette)
favorite6 = Favorite.create(post: post3, user: nicolette)
