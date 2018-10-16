# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Listing.destroy_all
Booking.destroy_all
Review.destroy_all

demo = User.create!(password:'demodemo', first_name:'Demo', last_name:'User', email:'demo@gmail.com')
rika = User.create!(password:'123456', first_name:'Rika', last_name:'Sun', email:'rika@gmail.com')
danny = User.create!(password:'123456', first_name:'Danny', last_name:'Xu', email:'danny@gmail.com')
dirk = User.create!(password:'123456', first_name:'Haupt', last_name:'Sun', email:'dirk@gmail.com')
john = User.create!(password:'123456', first_name:'John', last_name:'Huang', email:'john@gmail.com')
tony = User.create!(password:'123456', first_name:'Tony', last_name:'Huang', email:'tony@gmail.com')
carly = User.create!(password:'123456', first_name:'Carly', last_name:'Schaff', email:'carly@gmail.com')
chris = User.create!(password:'123456', first_name:'Chris', last_name:'Atwood', email:'chris@gmail.com')
stephanie = User.create!(password:'123456', first_name:'Stephanie', last_name:'Hsu', email:'stephanie@gmail.com')
derek = User.create!(password:'123456', first_name:'Derek', last_name:'Choe', email:'derek@gmail.com')

demo.profile_photo.attach(io: File.open('app/assets/images/demo.png'), filename: 'demo.png')
rika.profile_photo.attach(io: File.open('app/assets/images/1.png'), filename: '1.png')
danny.profile_photo.attach(io: File.open('app/assets/images/2.png'), filename: '2.png')
dirk.profile_photo.attach(io: File.open('app/assets/images/3.png'), filename: '3.png')
john.profile_photo.attach(io: File.open('app/assets/images/4.png'), filename: '4.png')
carly.profile_photo.attach(io: File.open('app/assets/images/5.png'), filename: '5.png')
chris.profile_photo.attach(io: File.open('app/assets/images/6.png'), filename: '6.png')
stephanie.profile_photo.attach(io: File.open('app/assets/images/7.png'), filename: '7.png')
derek.profile_photo.attach(io: File.open('app/assets/images/8.png'), filename: '8.png')


# LA

la_listing1 = Listing.create!(name: 'La casa', host_id: rika.id, description: 'A cottage made up of stone and timber built on two storeys, with a large living room, glass window, a couch for two people and a bathroom with sauna; on the second storey there is a double bedroom. Outdoors, there is a large garden with a porch equipped with BBQ and a wooden table. The site is located on the pleasant hills between Bellegra and Olevano Romano. We have currently added two beds, set up in a wonderful Indian teepe available for two extra guests in addition to the four ones.',
                          price: 309, room_num: 2, bed_num: 2, bath_num: 1, air_conditioning: true, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: true, hair_dryer: false, shampoo: false, 
                          address: '100 Sea Ln', city: 'Los Angeles', state: 'California', country: 'USA', zipcode: '90001', lat: 33.997284, lng: -118.210399)
la_listing2 = Listing.create!(name: 'Joshua Tree House', host_id: john.id, description: '*This cabin was featured in the New York Times in January, 2017. * A magical homesteader cabin embedded in 5 acres of unfenced Joshua Tree desert wilderness, 12 minutes from downtown Joshua Tree. Experience peace, quiet, wildlife and STARS—on the grid but off the pavement.',
                          price: 109, room_num: 5, bed_num: 6, bath_num: 3, air_conditioning: true, heating: true, essentials: true, wifi: true, tv: true, washer: true, kitchen: true, free_parking: true, hair_dryer: true, shampoo: true, 
                          address: '2304 Tree Circle', city: 'Los Angeles', state: 'California', country: 'USA', zipcode: '90001', lat: 34.094660, lng: -118.358388)
la_listing3 = Listing.create!(name: 'Sunny apartment near metro station', host_id: dirk.id, description: 'I rent out a very sunny and bright apartment only 7 minutes walking distance to the metro station Ober-St. Veit. The aparrment has a spacious living room with a kitchen, one bedroom and a bathroom with mit bath. A terrace can be used in summer.',
                          price: 59, room_num: 2, bed_num: 2, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '621 Gardena St', city: 'Los Angeles', state: 'California', country: 'USA', zipcode: '94411', lat: 34.061914, lng: -118.074521)
la_listing4 = Listing.create!(name: 'Hollywood Hills guest house w/views', host_id: carly.id, description: 'A perfectly designed Hollywood Hills open plan space with unobstructed panoramic city views all the way to the ocean...A total private guest house with the convenience of being minutes away from Hollywood attractions, the sunset strip & Griffith Park observatory.',
                          price: 89, room_num: 1, bed_num: 1, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '10 South San Gabriel Rd', city: 'Los Angeles', state: 'California', country: 'USA', zipcode: '94411', lat: 33.894245, lng: -118.278125)
la_listing5 = Listing.create!(name: 'Sunny, Modern room in East Village!', host_id: chris.id, description: 'Walk to everything! Located next to the metro. Steps from CVS, restaurants, bars, and rooftops. Pershing Square Park across the street hosts farmers markets, summer concerts, and winter ice skating. Rooftop pool and spa with 360-degree views of DTLA.',
                          price: 239, room_num: 4, bed_num: 3, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '481 Culver Dr', city: 'Los Angeles', state: 'California', country: 'USA', zipcode: '94411', lat: 33.866937, lng: -118.367966)

la_listing1.photo.attach(io: File.open('app/assets/images/h0-1.jpeg'), filename: 'h0-1.jpeg')
la_listing2.photo.attach(io: File.open('app/assets/images/h1-1.jpeg'), filename: 'h1-1.jpeg')
la_listing3.photo.attach(io: File.open('app/assets/images/h2-1.jpeg'), filename: 'h2-1.jpeg')
la_listing4.photo.attach(io: File.open('app/assets/images/h3-1.jpeg'), filename: 'h3-1.jpeg')
la_listing5.photo.attach(io: File.open('app/assets/images/h4-1.jpeg'), filename: 'h4-1.jpeg')

la_booking1 = Booking.create!(listing_id: la_listing1.id, guest_id: danny.id, checkin_date: Date.parse('2018-11-12'), checkout_date: Date.parse('2018-11-15'), guest_num: 2)
la_booking2 = Booking.create!(listing_id: la_listing1.id, guest_id: demo.id, checkin_date: Date.parse('2018-10-23'), checkout_date: Date.parse('2018-10-26'), guest_num: 1)
la_booking3 = Booking.create!(listing_id: la_listing1.id, guest_id: rika.id, checkin_date: Date.parse('2018-12-12'), checkout_date: Date.parse('2018-12-15'), guest_num: 2)
la_booking4 = Booking.create!(listing_id: la_listing2.id, guest_id: dirk.id, checkin_date: Date.parse('2018-11-03'), checkout_date: Date.parse('2018-11-09'), guest_num: 1)
la_booking5 = Booking.create!(listing_id: la_listing2.id, guest_id: demo.id, checkin_date: Date.parse('2018-10-26'), checkout_date: Date.parse('2018-10-31'), guest_num: 2)
la_booking6 = Booking.create!(listing_id: la_listing3.id, guest_id: tony.id, checkin_date: Date.parse('2019-10-26'), checkout_date: Date.parse('2019-10-28'), guest_num: 2)
la_booking7 = Booking.create!(listing_id: la_listing3.id, guest_id: rika.id, checkin_date: Date.parse('2018-12-05'), checkout_date: Date.parse('2018-12-08'), guest_num: 2)
la_booking8 = Booking.create!(listing_id: la_listing3.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-05'), checkout_date: Date.parse('2018-11-09'), guest_num: 2)
la_booking9 = Booking.create!(listing_id: la_listing4.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-13'), checkout_date: Date.parse('2018-11-18'), guest_num: 1)
la_booking10 = Booking.create!(listing_id: la_listing5.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-20'), checkout_date: Date.parse('2018-11-25'), guest_num: 2)


la_review1 = Review.create!(author_id: danny.id, listing_id: la_listing1.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 5, value: 4)
la_review2 = Review.create!(author_id: carly.id, listing_id: la_listing1.id, body: Faker::RickAndMorty.quote,
                        accuracy: 2, location: 3, communication: 8, check_in: 4, cleanliness: 1, value: 2)
la_review3 = Review.create!(author_id: rika.id, listing_id: la_listing1.id, body: Faker::RickAndMorty.quote,
                        accuracy: 4, location: 5, communication: 5, check_in: 5, cleanliness: 5, value: 4)
la_review4 = Review.create!(author_id: john.id, listing_id: la_listing2.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 3, check_in: 5, cleanliness: 2, value: 4)
la_review5 = Review.create!(author_id: tony.id, listing_id: la_listing2.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 1, value: 4)
la_review6 = Review.create!(author_id: chris.id, listing_id: la_listing2.id, body: Faker::RickAndMorty.quote,
                        accuracy: 4, location: 4, communication: 5, check_in: 3, cleanliness: 5, value: 4)
la_review7 = Review.create!(author_id: stephanie.id, listing_id: la_listing3.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 2, value: 4)
la_review8 = Review.create!(author_id: danny.id, listing_id: la_listing3.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 15, check_in: 5, cleanliness: 5, value: 1)
la_review9 = Review.create!(author_id: stephanie.id, listing_id: la_listing3.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 3, communication: 5, check_in: 5, cleanliness: 5, value: 4)
la_review10 = Review.create!(author_id: rika.id, listing_id: la_listing4.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 4, cleanliness: 5, value: 4)
la_review11 = Review.create!(author_id: danny.id, listing_id: la_listing4.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 3, cleanliness: 5, value: 4)
la_review12 = Review.create!(author_id: danny.id, listing_id: la_listing4.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 4, check_in: 5, cleanliness: 5, value: 4)
la_review13 = Review.create!(author_id: stephanie.id, listing_id: la_listing5.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 5, value: 4)
la_review14 = Review.create!(author_id: danny.id, listing_id: la_listing5.id, body: Faker::RickAndMorty.quote,
                        accuracy: 4, location: 5, communication: 5, check_in: 4, cleanliness: 5, value: 4)
la_review15 = Review.create!(author_id: rika.id, listing_id: la_listing5.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 3, check_in: 5, cleanliness: 2, value: 4)
                        
# SF

sf_listing1 = Listing.create!(name: 'Stroll around Golden Gate Park at an Industrial-Chic Haven', host_id: rika.id, description: 'Relax around the fire pit on the private patio at this garden Craftsman studio. Smooth concrete, edison bulb lighting, and chunky furniture create an industrial look, while the open-plan layout keeps things relaxed and comfortable.',
                          price: 309, room_num: 1, bed_num: 2, bath_num: 1, air_conditioning: true, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: true, hair_dryer: false, shampoo: false, 
                          address: '100 Sea Ln', city: 'San Francisco', state: 'California', country: 'USA', zipcode: '90001', lat: 37.758491, lng: -122.483950)
sf_listing2 = Listing.create!(name: 'Garden Suite Private Bathrm GGPark', host_id: carly.id, description: 'New renovated Garden Suite with separated entrance, private Living room, private Bathroom',
                          price: 109, room_num: 1, bed_num: 1, bath_num: 1, air_conditioning: true, heating: true, essentials: true, wifi: true, tv: true, washer: true, kitchen: true, free_parking: true, hair_dryer: true, shampoo: true, 
                          address: '2304 Tree Circle', city: 'San Francisco', state: 'California', country: 'USA', zipcode: '90001', lat: 37.733487, lng: -122.418401)
sf_listing3 = Listing.create!(name: 'Charming SF 1911 Studio', host_id: dirk.id, description: 'Private entry, sidewalk-level suite of living room, kitchen, bedroom and bath with artful touches in 1911 Edwardian. Close to beaches, GGate Park, GGate Bridge, groceries, cafes, restaurants on city-wide trolly line for memorable vacation/business/retreat. Easy drive to Marin.',
                          price: 59, room_num: 2, bed_num: 2, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '621 Gardena St', city: 'San Francisco', state: 'California', country: 'USA', zipcode: '94411', lat: 37.763356, lng: -122.433131)
sf_listing4 = Listing.create!(name: 'Golden Gate Park & Beach Getaway!', host_id: carly.id, description: 'Cozy 2BR flat with private entrance, 1 king bed, 2 twin beds, kitchen, bathroom w/ shower and access to our beautiful backyard. Easy/Free parking, directly across from GGP, 8 blocks to the beach & 2 to public transport. Very safe & quiet neighborhood.',
                          price: 89, room_num: 1, bed_num: 1, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '10 South San Gabriel Rd', city: 'San Francisco', state: 'California', country: 'USA', zipcode: '94411', lat: 37.787251, lng: -122.448563)
sf_listing5 = Listing.create!(name: 'Inlaw room w private bath', host_id: chris.id, description: 'Located in the Sunset District, 3 blocks from Golden Gate Park and short distance from Ocean beach is an in law room on a separate floor with an in room private bath.',
                          price: 239, room_num: 4, bed_num: 3, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '481 Culver Dr', city: 'San Francisco', state: 'California', country: 'USA', zipcode: '94411', lat: 37.736445, lng: -122.387502)

sf_listing1.photo.attach(io: File.open('app/assets/images/h5-1.jpeg'), filename: 'h5-1.jpeg')
sf_listing2.photo.attach(io: File.open('app/assets/images/h6-1.jpeg'), filename: 'h6-1.jpeg')
sf_listing3.photo.attach(io: File.open('app/assets/images/h7-1.jpeg'), filename: 'h7-1.jpeg')
sf_listing4.photo.attach(io: File.open('app/assets/images/h8-1.jpeg'), filename: 'h8-1.jpeg')
sf_listing5.photo.attach(io: File.open('app/assets/images/h9-1.jpeg'), filename: 'h9-1.jpeg')

sf_booking1 = Booking.create!(listing_id: sf_listing1.id, guest_id: danny.id, checkin_date: Date.parse('2018-11-12'), checkout_date: Date.parse('2018-11-15'), guest_num: 2)
sf_booking2 = Booking.create!(listing_id: sf_listing1.id, guest_id: demo.id, checkin_date: Date.parse('2018-10-23'), checkout_date: Date.parse('2018-10-26'), guest_num: 1)
sf_booking3 = Booking.create!(listing_id: sf_listing2.id, guest_id: rika.id, checkin_date: Date.parse('2018-12-12'), checkout_date: Date.parse('2018-12-15'), guest_num: 2)
sf_booking4 = Booking.create!(listing_id: sf_listing2.id, guest_id: dirk.id, checkin_date: Date.parse('2018-11-03'), checkout_date: Date.parse('2018-11-09'), guest_num: 1)
sf_booking5 = Booking.create!(listing_id: sf_listing2.id, guest_id: demo.id, checkin_date: Date.parse('2018-10-26'), checkout_date: Date.parse('2018-10-31'), guest_num: 2)
sf_booking6 = Booking.create!(listing_id: sf_listing3.id, guest_id: tony.id, checkin_date: Date.parse('2019-10-26'), checkout_date: Date.parse('2019-10-28'), guest_num: 2)
sf_booking7 = Booking.create!(listing_id: sf_listing3.id, guest_id: rika.id, checkin_date: Date.parse('2018-12-05'), checkout_date: Date.parse('2018-12-08'), guest_num: 2)
sf_booking8 = Booking.create!(listing_id: sf_listing3.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-05'), checkout_date: Date.parse('2018-11-09'), guest_num: 2)
sf_booking9 = Booking.create!(listing_id: sf_listing4.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-13'), checkout_date: Date.parse('2018-11-18'), guest_num: 1)
sf_booking10 = Booking.create!(listing_id: sf_listing5.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-20'), checkout_date: Date.parse('2018-11-25'), guest_num: 2)



sf_review1 = Review.create!(author_id: danny.id, listing_id: sf_listing1.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 5, value: 4)
sf_review2 = Review.create!(author_id: carly.id, listing_id: sf_listing1.id, body: Faker::RickAndMorty.quote,
                        accuracy: 2, location: 3, communication: 8, check_in: 4, cleanliness: 1, value: 2)
sf_review3 = Review.create!(author_id: rika.id, listing_id: sf_listing1.id, body: Faker::RickAndMorty.quote,
                        accuracy: 4, location: 5, communication: 5, check_in: 5, cleanliness: 5, value: 4)
sf_review4 = Review.create!(author_id: john.id, listing_id: sf_listing2.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 3, check_in: 5, cleanliness: 2, value: 4)
sf_review5 = Review.create!(author_id: tony.id, listing_id: sf_listing2.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 1, value: 4)
sf_review6 = Review.create!(author_id: chris.id, listing_id: sf_listing2.id, body: Faker::RickAndMorty.quote,
                        accuracy: 4, location: 4, communication: 5, check_in: 3, cleanliness: 5, value: 4)
sf_review7 = Review.create!(author_id: stephanie.id, listing_id: sf_listing3.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 2, value: 4)
sf_review8 = Review.create!(author_id: danny.id, listing_id: sf_listing3.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 15, check_in: 5, cleanliness: 5, value: 1)
sf_review9 = Review.create!(author_id: stephanie.id, listing_id: sf_listing3.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 3, communication: 5, check_in: 5, cleanliness: 5, value: 4)
sf_review10 = Review.create!(author_id: rika.id, listing_id: sf_listing4.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 4, cleanliness: 5, value: 4)
sf_review11 = Review.create!(author_id: danny.id, listing_id: sf_listing4.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 3, cleanliness: 5, value: 4)
sf_review12 = Review.create!(author_id: danny.id, listing_id: sf_listing4.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 4, check_in: 5, cleanliness: 5, value: 4)
sf_review13 = Review.create!(author_id: stephanie.id, listing_id: sf_listing5.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 5, value: 4)
sf_review14 = Review.create!(author_id: danny.id, listing_id: sf_listing5.id, body: Faker::RickAndMorty.quote,
                        accuracy: 4, location: 5, communication: 5, check_in: 4, cleanliness: 5, value: 4)
sf_review15 = Review.create!(author_id: rika.id, listing_id: sf_listing5.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 3, check_in: 5, cleanliness: 2, value: 4)