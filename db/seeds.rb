# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

user_photo_1 = File.open('app/assets/images/user_1.png')
user_photo_2 = File.open('app/assets/images/user_2.png')
user_photo_3 = File.open('app/assets/images/user_3.png')
user_photo_4 = File.open('app/assets/images/user_4.png')
user_photo_5 = File.open('app/assets/images/user_5.png')
user_photo_6 = File.open('app/assets/images/user_6.png')
user_photo_7 = File.open('app/assets/images/user_7.png')
user_photo_8 = File.open('app/assets/images/user_8.png')
user_photo_9 = File.open('app/assets/images/user_9.png')
user_photo_demo = File.open('app/assets/images/user_demo.png')

demo.profile_photo.attach(io: user_photo_demo, filename: 'demo.png')
rika.profile_photo.attach(io: user_photo_1, filename: '1.png')
danny.profile_photo.attach(io: user_photo_2, filename: '2.png')
dirk.profile_photo.attach(io: user_photo_3, filename: '3.png')
john.profile_photo.attach(io: user_photo_4, filename: '4.png')
carly.profile_photo.attach(io: user_photo_5, filename: '5.png')
chris.profile_photo.attach(io: user_photo_6, filename: '6.png')
stephanie.profile_photo.attach(io: user_photo_7, filename: '7.png')
derek.profile_photo.attach(io: user_photo_8, filename: '8.png')
tony.profile_photo.attach(io: user_photo_9, filename: '9.png')


# photos
home1 = File.open('app/assets/images/h1-1.jpeg')
home2 = File.open('app/assets/images/h2-1.jpeg')
home3 = File.open('app/assets/images/h3-1.jpeg')
home4 = File.open('app/assets/images/h4-1.jpeg')
home5 = File.open('app/assets/images/h5-1.jpeg')

home6 = File.open('app/assets/images/h6-1.jpeg')
home7 = File.open('app/assets/images/h7-1.jpeg')
home8 = File.open('app/assets/images/h8-1.jpeg')
home9 = File.open('app/assets/images/h9-1.jpeg')
home10 = File.open('app/assets/images/h10-1.jpeg')

home11 = File.open('app/assets/images/h11-1.jpeg')
home12 = File.open('app/assets/images/h12-1.jpeg')
home13 = File.open('app/assets/images/h13-1.jpeg')
home14 = File.open('app/assets/images/h14-1.jpeg')
home15 = File.open('app/assets/images/h15-1.jpg')

home16 = File.open('app/assets/images/h16-1.jpeg')
home17 = File.open('app/assets/images/h17-1.jpeg')
home18 = File.open('app/assets/images/h18-1.jpeg')
home19 = File.open('app/assets/images/h19-1.jpeg')
home20 = File.open('app/assets/images/h20-1.jpeg')

home21 = File.open('app/assets/images/h21.jpeg')
home22 = File.open('app/assets/images/h22.jpeg')
home23 = File.open('app/assets/images/h23.jpeg')
home24 = File.open('app/assets/images/h24.jpeg')
home25 = File.open('app/assets/images/h25.jpeg')

home26 = File.open('app/assets/images/h26.jpeg')
home27 = File.open('app/assets/images/h27.jpeg')
home28 = File.open('app/assets/images/h28.jpeg')
home29 = File.open('app/assets/images/h29.jpg')
home30 = File.open('app/assets/images/h30.jpeg')

home31 = File.open('app/assets/images/h31.jpeg')
home32 = File.open('app/assets/images/h32.jpeg')
home33 = File.open('app/assets/images/h33.jpeg')
home34 = File.open('app/assets/images/h34.jpeg')
home35 = File.open('app/assets/images/h35.jpeg')

home36 = File.open('app/assets/images/h36.jpeg')
home37 = File.open('app/assets/images/h37.jpeg')
home38 = File.open('app/assets/images/h38.jpeg')
home39 = File.open('app/assets/images/h39.jpeg')
home40 = File.open('app/assets/images/h40.jpeg')

inte1 = File.open('app/assets/images/in-1.jpeg')
inte2 = File.open('app/assets/images/in-2.jpeg')
inte3 = File.open('app/assets/images/in-3.jpeg')
inte4 = File.open('app/assets/images/in-4.jpeg')

inte5 = File.open('app/assets/images/in-5.jpeg')
inte6 = File.open('app/assets/images/in-6.jpeg')
inte7 = File.open('app/assets/images/in-7.jpeg')
inte8 = File.open('app/assets/images/in-8.jpeg')

inte9 = File.open('app/assets/images/in-9.jpeg')
inte10 = File.open('app/assets/images/in-10.jpeg')
inte11 = File.open('app/assets/images/in-11.jpeg')
inte12 = File.open('app/assets/images/in-12.png')

inte13 = File.open('app/assets/images/in-13.jpeg')
inte14 = File.open('app/assets/images/in-14.jpeg')
inte15 = File.open('app/assets/images/in-15.jpeg')
inte16 = File.open('app/assets/images/in-16.jpeg')

inte17 = File.open('app/assets/images/in-17.jpeg')
inte18 = File.open('app/assets/images/in-18.jpeg')
inte19 = File.open('app/assets/images/in-19.jpeg')
inte20 = File.open('app/assets/images/in-1.jpeg')

inte21 = File.open('app/assets/images/in-21.jpeg')
inte22 = File.open('app/assets/images/in-22.jpeg')
inte23 = File.open('app/assets/images/in-23.jpeg')
inte24 = File.open('app/assets/images/in-24.jpeg')

inte25 = File.open('app/assets/images/in-25.jpeg')
inte26 = File.open('app/assets/images/in-26.jpeg')
inte27 = File.open('app/assets/images/in-27.jpeg')
inte28 = File.open('app/assets/images/in-28.jpeg')

inte29 = File.open('app/assets/images/in-29.jpeg')
inte30 = File.open('app/assets/images/in-30.jpg')
inte31 = File.open('app/assets/images/in-31.jpeg')
inte32 = File.open('app/assets/images/in-32.jpeg')

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

la_listing6 = Listing.create!(name: 'TOP OF THE HILL ACRES', host_id: rika.id, description: 'Rugged, beautiful landscape with picturesque mountain views and wide open cloudless blue skies. Magical hiking trails close by. It’s a perfect spot for people who love the outdoors, but also want to be close enough to the city. Beauty. Simplicity. Nature.',
                          price: 125, room_num: 3, bed_num: 4, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: true, hair_dryer: false, shampoo: false,
                          address: '100 Sea Ln', city: 'Los Angeles', state: 'California', country: 'USA', zipcode: '90001', lat: 34.052105, lng: -118.37156)
la_listing7 = Listing.create!(name: 'Great location on a budget, POOL', host_id: dirk.id, description: 'Welcome to our house! Centrally located in historic Hancock Park, we just short drive away from Hollywood Attractions, Beverly Hills, Grove Shopping Center, Universal Studio, Downtown LA!',
                          price: 60, room_num: 5, bed_num: 6, bath_num: 3, air_conditioning: true, heating: false, essentials: true, wifi: true, tv: true, washer: true, kitchen: true, free_parking: true, hair_dryer: true, shampoo: true,
                          address: '2304 Tree Circle', city: 'Los Angeles', state: 'California', country: 'USA', zipcode: '90001', lat: 33.973975, lng: -118.210086)
la_listing8 = Listing.create!(name: 'Private Guest House in Top Location', host_id: carly.id, description: 'Our modern, cozy guest house has hardwood floors, a TempraPedic bed, kitchenette and rain-shower in a very private setting, just for you. 5 min away is action packed Hollywood Blvd. Enjoy relaxing surrounded by nature before exploring the city!',
                          price: 459, room_num: 4, bed_num: 7, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: false, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '621 Gardena St', city: 'Los Angeles', state: 'California', country: 'USA', zipcode: '94411', lat: 33.765767, lng: -118.355337)

la_listing1.photos.attach(io: home1, filename: 'home.jpeg')
la_listing1.photos.attach(io: inte1, filename: 'home.jpeg')
la_listing1.photos.attach(io: inte2, filename: 'home.jpeg')
la_listing1.photos.attach(io: inte3, filename: 'home.jpeg')
la_listing1.photos.attach(io: inte4, filename: 'home.jpeg')

la_listing2.photos.attach(io: home2, filename: 'home.jpeg')
la_listing2.photos.attach(io: inte5, filename: 'home.jpeg')
la_listing2.photos.attach(io: inte6, filename: 'home.jpeg')
la_listing2.photos.attach(io: inte7, filename: 'home.jpeg')
la_listing2.photos.attach(io: inte8, filename: 'home.jpeg')

la_listing3.photos.attach(io: home3, filename: 'home.jpeg')
la_listing3.photos.attach(io: inte9, filename: 'home.jpeg')
la_listing3.photos.attach(io: inte10, filename: 'home.jpeg')
la_listing3.photos.attach(io: inte11, filename: 'home.jpeg')
la_listing3.photos.attach(io: inte12, filename: 'home.jpeg')

la_listing4.photos.attach(io: home4, filename: 'home.jpeg')
la_listing4.photos.attach(io: inte13, filename: 'home.jpeg')
la_listing4.photos.attach(io: inte14, filename: 'home.jpeg')
la_listing4.photos.attach(io: inte15, filename: 'home.jpeg')
la_listing4.photos.attach(io: inte16, filename: 'home.jpeg')

la_listing5.photos.attach(io: home5, filename: 'home.jpeg')
la_listing5.photos.attach(io: inte17, filename: 'home.jpeg')
la_listing5.photos.attach(io: inte18, filename: 'home.jpeg')
la_listing5.photos.attach(io: inte19, filename: 'home.jpeg')
la_listing5.photos.attach(io: inte20, filename: 'home.jpeg')

la_listing6.photos.attach(io: home40, filename: 'home.jpeg')
la_listing6.photos.attach(io: inte21, filename: 'home.jpeg')
la_listing6.photos.attach(io: inte22, filename: 'home.jpeg')
la_listing6.photos.attach(io: inte23, filename: 'home.jpeg')
la_listing6.photos.attach(io: inte24, filename: 'home.jpeg')

la_listing7.photos.attach(io: home39, filename: 'home.jpeg')
la_listing7.photos.attach(io: inte25, filename: 'home.jpeg')
la_listing7.photos.attach(io: inte26, filename: 'home.jpeg')
la_listing7.photos.attach(io: inte27, filename: 'home.jpeg')
la_listing7.photos.attach(io: inte28, filename: 'home.jpeg')

la_listing8.photos.attach(io: home38, filename: 'home.jpeg')
la_listing8.photos.attach(io: inte29, filename: 'home.jpeg')
la_listing8.photos.attach(io: inte30, filename: 'home.jpeg')
la_listing8.photos.attach(io: inte31, filename: 'home.jpeg')
la_listing8.photos.attach(io: inte32, filename: 'home.jpeg')



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
la_booking11 = Booking.create!(listing_id: la_listing6.id, guest_id: dirk.id, checkin_date: Date.parse('2018-11-03'), checkout_date: Date.parse('2018-11-09'), guest_num: 1)
la_booking12 = Booking.create!(listing_id: la_listing6.id, guest_id: demo.id, checkin_date: Date.parse('2018-10-26'), checkout_date: Date.parse('2018-10-31'), guest_num: 2)
la_booking13 = Booking.create!(listing_id: la_listing8.id, guest_id: tony.id, checkin_date: Date.parse('2019-10-26'), checkout_date: Date.parse('2019-10-28'), guest_num: 2)
la_booking14 = Booking.create!(listing_id: la_listing7.id, guest_id: rika.id, checkin_date: Date.parse('2018-12-05'), checkout_date: Date.parse('2018-12-08'), guest_num: 2)
la_booking15 = Booking.create!(listing_id: la_listing7.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-05'), checkout_date: Date.parse('2018-11-09'), guest_num: 2)
la_booking16 = Booking.create!(listing_id: la_listing8.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-13'), checkout_date: Date.parse('2018-11-18'), guest_num: 1)
la_booking17 = Booking.create!(listing_id: la_listing8.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-20'), checkout_date: Date.parse('2018-11-25'), guest_num: 2)


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
la_review16 = Review.create!(author_id: stephanie.id, listing_id: la_listing6.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 3, communication: 5, check_in: 5, cleanliness: 5, value: 4)
la_review17 = Review.create!(author_id: rika.id, listing_id: la_listing6.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 4, cleanliness: 5, value: 4)
la_review18 = Review.create!(author_id: danny.id, listing_id: la_listing7.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 3, cleanliness: 5, value: 4)
la_review19 = Review.create!(author_id: danny.id, listing_id: la_listing7.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 4, check_in: 5, cleanliness: 5, value: 4)
la_review20 = Review.create!(author_id: stephanie.id, listing_id: la_listing8.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 5, value: 4)
la_review21 = Review.create!(author_id: danny.id, listing_id: la_listing8.id, body: Faker::RickAndMorty.quote,
                        accuracy: 4, location: 5, communication: 5, check_in: 4, cleanliness: 5, value: 4)
la_review22 = Review.create!(author_id: rika.id, listing_id: la_listing8.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 3, check_in: 5, cleanliness: 2, value: 4)

# SF

inte1 = File.open('app/assets/images/in-1.jpeg')
inte2 = File.open('app/assets/images/in-2.jpeg')
inte3 = File.open('app/assets/images/in-3.jpeg')
inte4 = File.open('app/assets/images/in-4.jpeg')

inte5 = File.open('app/assets/images/in-5.jpeg')
inte6 = File.open('app/assets/images/in-6.jpeg')
inte7 = File.open('app/assets/images/in-7.jpeg')
inte8 = File.open('app/assets/images/in-8.jpeg')

inte9 = File.open('app/assets/images/in-9.jpeg')
inte10 = File.open('app/assets/images/in-10.jpeg')
inte11 = File.open('app/assets/images/in-11.jpeg')
inte12 = File.open('app/assets/images/in-12.png')

inte13 = File.open('app/assets/images/in-13.jpeg')
inte14 = File.open('app/assets/images/in-14.jpeg')
inte15 = File.open('app/assets/images/in-15.jpeg')
inte16 = File.open('app/assets/images/in-16.jpeg')

inte17 = File.open('app/assets/images/in-17.jpeg')
inte18 = File.open('app/assets/images/in-18.jpeg')
inte19 = File.open('app/assets/images/in-19.jpeg')
inte20 = File.open('app/assets/images/in-1.jpeg')

sf_listing1 = Listing.create!(name: 'Stroll around Golden Gate Park', host_id: rika.id, description: 'Relax around the fire pit on the private patio at this garden Craftsman studio. Smooth concrete, edison bulb lighting, and chunky furniture create an industrial look, while the open-plan layout keeps things relaxed and comfortable.',
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

sf_listing1.photos.attach(io: home6, filename: 'home.jpeg')
sf_listing1.photos.attach(io: inte1, filename: 'home.jpeg')
sf_listing1.photos.attach(io: inte2, filename: 'home.jpeg')
sf_listing1.photos.attach(io: inte3, filename: 'home.jpeg')
sf_listing1.photos.attach(io: inte4, filename: 'home.jpeg')

sf_listing2.photos.attach(io: home7, filename: 'home.jpeg')
sf_listing2.photos.attach(io: inte5, filename: 'home.jpeg')
sf_listing2.photos.attach(io: inte6, filename: 'home.jpeg')
sf_listing2.photos.attach(io: inte7, filename: 'home.jpeg')
sf_listing2.photos.attach(io: inte8, filename: 'home.jpeg')

sf_listing3.photos.attach(io: home8, filename: 'home.jpeg')
sf_listing3.photos.attach(io: inte9, filename: 'home.jpeg')
sf_listing3.photos.attach(io: inte10, filename: 'home.jpeg')
sf_listing3.photos.attach(io: inte11, filename: 'home.jpeg')
sf_listing3.photos.attach(io: inte12, filename: 'home.jpeg')

sf_listing4.photos.attach(io: home9, filename: 'home.jpeg')
sf_listing4.photos.attach(io: inte13, filename: 'home.jpeg')
sf_listing4.photos.attach(io: inte14, filename: 'home.jpeg')
sf_listing4.photos.attach(io: inte15, filename: 'home.jpeg')
sf_listing4.photos.attach(io: inte16, filename: 'home.jpeg')

sf_listing5.photos.attach(io: home10, filename: 'home.jpeg')
sf_listing5.photos.attach(io: inte17, filename: 'home.jpeg')
sf_listing5.photos.attach(io: inte18, filename: 'home.jpeg')
sf_listing5.photos.attach(io: inte19, filename: 'home.jpeg')
sf_listing5.photos.attach(io: inte20, filename: 'home.jpeg')

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

# Seattle 

inte21 = File.open('app/assets/images/in-21.jpeg')
inte22 = File.open('app/assets/images/in-22.jpeg')
inte23 = File.open('app/assets/images/in-23.jpeg')
inte24 = File.open('app/assets/images/in-24.jpeg')

inte25 = File.open('app/assets/images/in-25.jpeg')
inte26 = File.open('app/assets/images/in-26.jpeg')
inte27 = File.open('app/assets/images/in-27.jpeg')
inte28 = File.open('app/assets/images/in-28.jpeg')

inte29 = File.open('app/assets/images/in-29.jpeg')
inte30 = File.open('app/assets/images/in-30.jpg')
inte31 = File.open('app/assets/images/in-31.jpeg')
inte32 = File.open('app/assets/images/in-32.jpeg')

inte33 = File.open('app/assets/images/in-33.jpeg')
inte34 = File.open('app/assets/images/in-34.jpeg')
inte35 = File.open('app/assets/images/in-35.jpeg')
inte36 = File.open('app/assets/images/in-36.jpeg')

inte37 = File.open('app/assets/images/in-37.jpeg')
inte38 = File.open('app/assets/images/in-38.jpeg')
inte39 = File.open('app/assets/images/in-39.jpeg')
inte40 = File.open('app/assets/images/in-40.jpeg')

sea_listing1 = Listing.create!(name: 'Cottage in the Heart of the City', host_id: rika.id, description: 'New cottage, cabin-like, in the heart of Seattle. Close to bus line, cruise ships, shops, restaurants, waterfront, parks, bike paths, stadiums, Space Needle. Our cottage offers a kitchen, w/d and queen bed among other amenities. Built green.',
                          price: 89, room_num: 1, bed_num: 1, bath_num: 1, air_conditioning: true, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: true, hair_dryer: false, shampoo: false,
                          address: '100 3rd St', city: 'Seattle', state: 'Washington', country: 'USA', zipcode: '90001', lat: 47.639955, lng: -122.371483)
sea_listing2 = Listing.create!(name: 'Sky Cabin Apartment with Views', host_id: carly.id, description: 'Enjoy the serenity of our stunning apartment in the heart of Seattle, with fantastic views of the lake, Gasworks Park, and the Olympic Mountains. Vaulted ceilings, wood paneling, and mid-century decor make our space comfortable, warm, and peaceful.',
                          price: 109, room_num: 4, bed_num: 2, bath_num: 3, air_conditioning: true, heating: true, essentials: true, wifi: true, tv: true, washer: true, kitchen: true, free_parking: true, hair_dryer: true, shampoo: true,
                          address: '2304 Aurora Rd', city: 'Seattle', state: 'Washington', country: 'USA', zipcode: '90001', lat: 47.673033, lng: -122.300123)
sea_listing3 = Listing.create!(name: 'Vintage Loft with Historic Features in Vibrant Capitol Hill', host_id: dirk.id, description: 'Watch the sun rise from the private balcony or head up to the shared rooftop and admire the city views. This Capitol Hill loft melds a historic facade with a cozy, modern interior and industrial-chic details like the rustic, open-tread stairs.',
                          price: 59, room_num: 1, bed_num: 2, bath_num: 2, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '621 Bellvue Blvd', city: 'Seattle', state: 'Washington', country: 'USA', zipcode: '94411', lat: 47.615999, lng: -122.171178)
sea_listing4 = Listing.create!(name: 'Tiny House in Seattle', host_id: carly.id, description: 'Tipsy is a 180 square foot (including the loft) tiny house located in the heart of West Seattle, minutes away from restaurants, bars, coffee shops, boutiques, grocery stores, Sunday Farmer’s Market, etc. ',
                          price: 105, room_num: 2, bed_num: 1, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '10 114th St', city: 'Seattle', state: 'Washington', country: 'USA', zipcode: '94411', lat: 47.663045, lng: -122.166984)
sea_listing5 = Listing.create!(name: '"Little House" Living in Ballard', host_id: chris.id, description: 'Our Little House is easy walking distance from some of Seattle\'s best coffee, restaurants, markets and retail stores. The house, formerly a garage, was completely renovated in 2013. It sits behind our main house and includes shared access to a courtyard, outdoor seating and a BBQ grill.',
                          price: 239, room_num: 4, bed_num: 3, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '481 Redwood Dr', city: 'Seattle', state: 'Washington', country: 'USA', zipcode: '94411', lat: 47.612373, lng: -122.324899)

sea_listing1.photos.attach(io: home11, filename: 'home.jpeg')
sea_listing1.photos.attach(io: inte21, filename: 'home.jpeg')
sea_listing1.photos.attach(io: inte22, filename: 'home.jpeg')
sea_listing1.photos.attach(io: inte23, filename: 'home.jpeg')
sea_listing1.photos.attach(io: inte24, filename: 'home.jpeg')

sea_listing2.photos.attach(io: home12, filename: 'home.jpeg')
sea_listing2.photos.attach(io: inte25, filename: 'home.jpeg')
sea_listing2.photos.attach(io: inte26, filename: 'home.jpeg')
sea_listing2.photos.attach(io: inte27, filename: 'home.jpeg')
sea_listing2.photos.attach(io: inte28, filename: 'home.jpeg')

sea_listing3.photos.attach(io: home13, filename: 'home.jpeg')
sea_listing3.photos.attach(io: inte29, filename: 'home.jpeg')
sea_listing3.photos.attach(io: inte30, filename: 'home.jpeg')
sea_listing3.photos.attach(io: inte31, filename: 'home.jpeg')
sea_listing3.photos.attach(io: inte32, filename: 'home.jpeg')

sea_listing4.photos.attach(io: home14, filename: 'home.jpeg')
sea_listing4.photos.attach(io: inte33, filename: 'home.jpeg')
sea_listing4.photos.attach(io: inte34, filename: 'home.jpeg')
sea_listing4.photos.attach(io: inte35, filename: 'home.jpeg')
sea_listing4.photos.attach(io: inte36, filename: 'home.jpeg')

sea_listing5.photos.attach(io: home15, filename: 'home.jpeg')
sea_listing5.photos.attach(io: inte37, filename: 'home.jpeg')
sea_listing5.photos.attach(io: inte38, filename: 'home.jpeg')
sea_listing5.photos.attach(io: inte39, filename: 'home.jpeg')
sea_listing5.photos.attach(io: inte40, filename: 'home.jpeg')

sea_booking1 = Booking.create!(listing_id: sea_listing1.id, guest_id: danny.id, checkin_date: Date.parse('2018-11-12'), checkout_date: Date.parse('2018-11-15'), guest_num: 2)
sea_booking2 = Booking.create!(listing_id: sea_listing1.id, guest_id: demo.id, checkin_date: Date.parse('2018-10-23'), checkout_date: Date.parse('2018-10-26'), guest_num: 1)
sea_booking3 = Booking.create!(listing_id: sea_listing2.id, guest_id: rika.id, checkin_date: Date.parse('2018-12-12'), checkout_date: Date.parse('2018-12-15'), guest_num: 2)
sea_booking4 = Booking.create!(listing_id: sea_listing2.id, guest_id: dirk.id, checkin_date: Date.parse('2018-11-03'), checkout_date: Date.parse('2018-11-09'), guest_num: 1)
sea_booking5 = Booking.create!(listing_id: sea_listing2.id, guest_id: demo.id, checkin_date: Date.parse('2018-10-26'), checkout_date: Date.parse('2018-10-31'), guest_num: 2)
sea_booking6 = Booking.create!(listing_id: sea_listing3.id, guest_id: tony.id, checkin_date: Date.parse('2019-10-26'), checkout_date: Date.parse('2019-10-28'), guest_num: 2)
sea_booking7 = Booking.create!(listing_id: sea_listing3.id, guest_id: rika.id, checkin_date: Date.parse('2018-12-05'), checkout_date: Date.parse('2018-12-08'), guest_num: 2)
sea_booking8 = Booking.create!(listing_id: sea_listing3.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-05'), checkout_date: Date.parse('2018-11-09'), guest_num: 2)
sea_booking9 = Booking.create!(listing_id: sea_listing4.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-13'), checkout_date: Date.parse('2018-11-18'), guest_num: 1)
sea_booking10 = Booking.create!(listing_id: sea_listing5.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-20'), checkout_date: Date.parse('2018-11-25'), guest_num: 2)

sea_review1 = Review.create!(author_id: danny.id, listing_id: sea_listing1.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 5, value: 4)
sea_review2 = Review.create!(author_id: carly.id, listing_id: sea_listing1.id, body: Faker::RickAndMorty.quote,
                        accuracy: 2, location: 3, communication: 8, check_in: 4, cleanliness: 1, value: 2)
sea_review3 = Review.create!(author_id: rika.id, listing_id: sea_listing1.id, body: Faker::RickAndMorty.quote,
                        accuracy: 4, location: 5, communication: 5, check_in: 5, cleanliness: 5, value: 4)
sea_review4 = Review.create!(author_id: john.id, listing_id: sea_listing2.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 3, check_in: 5, cleanliness: 2, value: 4)
sea_review5 = Review.create!(author_id: tony.id, listing_id: sea_listing2.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 1, value: 4)
sea_review6 = Review.create!(author_id: chris.id, listing_id: sea_listing2.id, body: Faker::RickAndMorty.quote,
                        accuracy: 4, location: 4, communication: 5, check_in: 3, cleanliness: 5, value: 4)
sea_review7 = Review.create!(author_id: stephanie.id, listing_id: sea_listing3.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 2, value: 4)
sea_review8 = Review.create!(author_id: danny.id, listing_id: sea_listing3.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 15, check_in: 5, cleanliness: 5, value: 1)
sea_review9 = Review.create!(author_id: stephanie.id, listing_id: sea_listing3.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 3, communication: 5, check_in: 5, cleanliness: 5, value: 4)
sea_review10 = Review.create!(author_id: rika.id, listing_id: sea_listing4.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 4, cleanliness: 5, value: 4)
sea_review11 = Review.create!(author_id: danny.id, listing_id: sea_listing4.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 3, cleanliness: 5, value: 4)
sea_review12 = Review.create!(author_id: danny.id, listing_id: sea_listing4.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 4, check_in: 5, cleanliness: 5, value: 4)
sea_review13 = Review.create!(author_id: stephanie.id, listing_id: sea_listing5.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 5, value: 4)
sea_review14 = Review.create!(author_id: danny.id, listing_id: sea_listing5.id, body: Faker::RickAndMorty.quote,
                        accuracy: 4, location: 5, communication: 5, check_in: 4, cleanliness: 5, value: 4)
sea_review15 = Review.create!(author_id: rika.id, listing_id: sea_listing5.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 3, check_in: 5, cleanliness: 2, value: 4)

# Miami

inte21 = File.open('app/assets/images/in-21.jpeg')
inte22 = File.open('app/assets/images/in-22.jpeg')
inte23 = File.open('app/assets/images/in-23.jpeg')
inte24 = File.open('app/assets/images/in-24.jpeg')

inte25 = File.open('app/assets/images/in-25.jpeg')
inte26 = File.open('app/assets/images/in-26.jpeg')
inte27 = File.open('app/assets/images/in-27.jpeg')
inte28 = File.open('app/assets/images/in-28.jpeg')

inte29 = File.open('app/assets/images/in-29.jpeg')
inte30 = File.open('app/assets/images/in-30.jpg')
inte31 = File.open('app/assets/images/in-31.jpeg')
inte32 = File.open('app/assets/images/in-32.jpeg')

inte33 = File.open('app/assets/images/in-33.jpeg')
inte34 = File.open('app/assets/images/in-34.jpeg')
inte35 = File.open('app/assets/images/in-35.jpeg')
inte36 = File.open('app/assets/images/in-36.jpeg')

inte37 = File.open('app/assets/images/in-37.jpeg')
inte38 = File.open('app/assets/images/in-38.jpeg')
inte39 = File.open('app/assets/images/in-39.jpeg')
inte40 = File.open('app/assets/images/in-40.jpeg')

inte41 = File.open('app/assets/images/in-41.jpeg')
inte42 = File.open('app/assets/images/in-42.jpeg')
inte43 = File.open('app/assets/images/in-43.jpeg')
inte44 = File.open('app/assets/images/in-44.jpeg')

inte45 = File.open('app/assets/images/in-45.jpeg')
inte46 = File.open('app/assets/images/in-46.jpeg')
inte47 = File.open('app/assets/images/in-47.jpeg')
inte48 = File.open('app/assets/images/in-48.jpeg')

inte49 = File.open('app/assets/images/in-49.jpeg')
inte50 = File.open('app/assets/images/in-50.jpg')
inte51 = File.open('app/assets/images/in-51.jpeg')
inte52 = File.open('app/assets/images/in-52.jpeg')

inte53 = File.open('app/assets/images/in-53.jpeg')
inte54 = File.open('app/assets/images/in-54.jpeg')
inte55 = File.open('app/assets/images/in-55.jpeg')
inte56 = File.open('app/assets/images/in-56.jpeg')

mia_listing1 = Listing.create!(name: 'Cozy and charming cottage', host_id: rika.id, description: 'Our cottage is located in a very quiet residential area, 15mn to the beach (Bal Harbor area). Located in the backyard of the main house but separate and with a independent entry. Enjoy our tropical garden and beautiful pool, secluded with no eyes from neighbors. We use the pool very little and give priority to our guests to enjoy it! Parking available in our front yard. No kitchen but microwave and fridge. TV, cable and WIFI. It is suggested to have a car. Public transportations are slow.',
                          price: 95, room_num: 1, bed_num: 1, bath_num: 1, air_conditioning: true, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: true, hair_dryer: false, shampoo: false,
                          address: '100 3rd St', city: 'Miami', state: 'Florida', country: 'USA', zipcode: '90001', lat: 25.802181, lng: -80.221561)
mia_listing2 = Listing.create!(name: 'Amazing Brickell Bay Penthouse', host_id: carly.id, description: 'Amazing Penthouse 1/1.5 furnished in the heart of Brickell with an incomparable view...walking distance to metro mover and Mary Brickell Village...perfect place to enjoy Miami and its attractions, the beaches and malls. Parking Included!!!',
                          price: 109, room_num: 4, bed_num: 2, bath_num: 3, air_conditioning: true, heating: true, essentials: true, wifi: true, tv: true, washer: true, kitchen: true, free_parking: true, hair_dryer: true, shampoo: true,
                          address: '2304 Aurora Rd', city: 'Miami', state: 'Florida', country: 'USA', zipcode: '90001', lat: 25.770643, lng: -80.221220)
mia_listing3 = Listing.create!(name: 'LUXURY CONDO TOP FLOOR SPA + GYM', host_id: dirk.id, description: 'This is a nice luxury place for vacations. Beautiful 1 bedroom apartment with spectacular OCEAN view in the hottest building in Miami\'s Brickell area: "The Icon Brickell". Brickell area is also located in the heart of Miami.',
                          price: 59, room_num: 1, bed_num: 2, bath_num: 2, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '621 Bellvue Blvd', city: 'Miami', state: 'Florida', country: 'USA', zipcode: '94411', lat: 25.792900, lng: -80.189967)
mia_listing4 = Listing.create!(name: 'SOUTH BEACH FLAT STEPS TO THE BEACH', host_id: carly.id, description: 'Come experience South Beach in this Ultra Modern/Chic Condo. This is a Studio apartment complete with full size kitchen and bathroom, Netflix, Amazon TV and FREE WIFI.',
                          price: 105, room_num: 2, bed_num: 1, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '10 114th St', city: 'Miami', state: 'Florida', country: 'USA', zipcode: '94411', lat: 25.826601, lng: -80.190991)
mia_listing5 = Listing.create!(name: 'Amazing Brickell Bay Penthouse', host_id: chris.id, description: 'Amazing Penthouse 1/1.5 furnished in the heart of Brickell with an incomparable view...walking distance to metro mover and Mary Brickell Village...perfect place to enjoy Miami and its attractions, the beaches and malls. Parking Included!!!',
                          price: 239, room_num: 4, bed_num: 3, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '481 Redwood Dr', city: 'Miami', state: 'Florida', country: 'USA', zipcode: '94411', lat: 25.760576, lng: -80.219044)
mia_listing6 = Listing.create!(name: 'Luxury Resort-Spacious 2B/2B - 48th Floor.', host_id: dirk.id, description: 'Our 2 BR unit on the 48th floor of the W, is right in the center of downtown Miami. It has resort-style amenities, movie theater, game room, café with poolside food and beverage service, 24-hour full-service concierge and valet parking.',
                          price: 360, room_num: 2, bed_num: 2, bath_num: 2, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '621 Bellvue Blvd', city: 'Miami', state: 'Florida', country: 'USA', zipcode: '94411', lat: 25.782900, lng: -80.190967)
mia_listing7 = Listing.create!(name: 'Relaxing Cottage in Coconut Grove', host_id: carly.id, description: 'This private cottage situated in the back corner of our family home is located in the center of Miami, in the charming, laid-back neighborhood of Coconut Grove. The space features a Koi pond / waterfall, a pool, an outside dining area, and an outside lounge space.',
                          price: 95, room_num: 2, bed_num: 1, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '10 114th St', city: 'Miami', state: 'Florida', country: 'USA', zipcode: '94411', lat: 25.768468, lng: -80.159718)
mia_listing8 = Listing.create!(name: 'New 15th Floor Beachfront 180º Oceanview Apartment', host_id: chris.id, description: 'A modern style and freshly renovated large beachfront studio apartment in Miami Beach with 180 degree ocean views of the crystal clear water and free parking. The apartment features a king size bed, fast and free unlimited 300mb WiFi Internet and a 65inch Samsung LED TV 4K with Netflix HBOGO and TIVO HD service 500 channels.',
                          price: 69, room_num: 2, bed_num: 2, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '481 Redwood Dr', city: 'Miami', state: 'Florida', country: 'USA', zipcode: '94411', lat: 25.862653, lng: -80.123201)

mia_listing1.photos.attach(io: home16, filename: 'home.jpeg')
mia_listing1.photos.attach(io: inte21, filename: 'home.jpeg')
mia_listing1.photos.attach(io: inte22, filename: 'home.jpeg')
mia_listing1.photos.attach(io: inte23, filename: 'home.jpeg')
mia_listing1.photos.attach(io: inte24, filename: 'home.jpeg')

mia_listing2.photos.attach(io: home17, filename: 'home.jpeg')
mia_listing2.photos.attach(io: inte25, filename: 'home.jpeg')
mia_listing2.photos.attach(io: inte26, filename: 'home.jpeg')
mia_listing2.photos.attach(io: inte27, filename: 'home.jpeg')
mia_listing2.photos.attach(io: inte28, filename: 'home.jpeg')

mia_listing3.photos.attach(io: home18, filename: 'home.jpeg')
mia_listing3.photos.attach(io: inte29, filename: 'home.jpeg')
mia_listing3.photos.attach(io: inte30, filename: 'home.jpeg')
mia_listing3.photos.attach(io: inte31, filename: 'home.jpeg')
mia_listing3.photos.attach(io: inte32, filename: 'home.jpeg')

mia_listing4.photos.attach(io: home19, filename: 'home.jpeg')
mia_listing4.photos.attach(io: inte33, filename: 'home.jpeg')
mia_listing4.photos.attach(io: inte34, filename: 'home.jpeg')
mia_listing4.photos.attach(io: inte35, filename: 'home.jpeg')
mia_listing4.photos.attach(io: inte36, filename: 'home.jpeg')

mia_listing5.photos.attach(io: home20, filename: 'home.jpeg')
mia_listing5.photos.attach(io: inte37, filename: 'home.jpeg')
mia_listing5.photos.attach(io: inte38, filename: 'home.jpeg')
mia_listing5.photos.attach(io: inte39, filename: 'home.jpeg')
mia_listing5.photos.attach(io: inte40, filename: 'home.jpeg')

mia_listing6.photos.attach(io: home36, filename: 'home.jpeg')
mia_listing6.photos.attach(io: inte41, filename: 'home.jpeg')
mia_listing6.photos.attach(io: inte42, filename: 'home.jpeg')
mia_listing6.photos.attach(io: inte43, filename: 'home.jpeg')
mia_listing6.photos.attach(io: inte44, filename: 'home.jpeg')

mia_listing7.photos.attach(io: home35, filename: 'home.jpeg')
mia_listing7.photos.attach(io: inte45, filename: 'home.jpeg')
mia_listing7.photos.attach(io: inte46, filename: 'home.jpeg')
mia_listing7.photos.attach(io: inte47, filename: 'home.jpeg')
mia_listing7.photos.attach(io: inte48, filename: 'home.jpeg')

mia_listing8.photos.attach(io: home34, filename: 'home.jpeg')
mia_listing8.photos.attach(io: inte49, filename: 'home.jpeg')
mia_listing8.photos.attach(io: inte50, filename: 'home.jpeg')
mia_listing8.photos.attach(io: inte51, filename: 'home.jpeg')
mia_listing8.photos.attach(io: inte52, filename: 'home.jpeg')

mia_booking1 = Booking.create!(listing_id: mia_listing1.id, guest_id: danny.id, checkin_date: Date.parse('2018-11-12'), checkout_date: Date.parse('2018-11-15'), guest_num: 2)
mia_booking2 = Booking.create!(listing_id: mia_listing1.id, guest_id: demo.id, checkin_date: Date.parse('2018-10-23'), checkout_date: Date.parse('2018-10-26'), guest_num: 1)
mia_booking3 = Booking.create!(listing_id: mia_listing2.id, guest_id: rika.id, checkin_date: Date.parse('2018-12-12'), checkout_date: Date.parse('2018-12-15'), guest_num: 2)
mia_booking4 = Booking.create!(listing_id: mia_listing2.id, guest_id: dirk.id, checkin_date: Date.parse('2018-11-03'), checkout_date: Date.parse('2018-11-09'), guest_num: 1)
mia_booking5 = Booking.create!(listing_id: mia_listing2.id, guest_id: demo.id, checkin_date: Date.parse('2018-10-26'), checkout_date: Date.parse('2018-10-31'), guest_num: 2)
mia_booking6 = Booking.create!(listing_id: mia_listing3.id, guest_id: tony.id, checkin_date: Date.parse('2019-10-26'), checkout_date: Date.parse('2019-10-28'), guest_num: 2)
mia_booking7 = Booking.create!(listing_id: mia_listing3.id, guest_id: rika.id, checkin_date: Date.parse('2018-12-05'), checkout_date: Date.parse('2018-12-08'), guest_num: 2)
mia_booking8 = Booking.create!(listing_id: mia_listing3.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-05'), checkout_date: Date.parse('2018-11-09'), guest_num: 2)
mia_booking9 = Booking.create!(listing_id: mia_listing4.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-13'), checkout_date: Date.parse('2018-11-18'), guest_num: 1)
mia_booking10 = Booking.create!(listing_id: mia_listing5.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-20'), checkout_date: Date.parse('2018-11-25'), guest_num: 2)
mia_booking4 = Booking.create!(listing_id: mia_listing6.id, guest_id: dirk.id, checkin_date: Date.parse('2018-11-03'), checkout_date: Date.parse('2018-11-09'), guest_num: 1)
mia_booking5 = Booking.create!(listing_id: mia_listing6.id, guest_id: demo.id, checkin_date: Date.parse('2018-10-26'), checkout_date: Date.parse('2018-10-31'), guest_num: 2)
mia_booking6 = Booking.create!(listing_id: mia_listing7.id, guest_id: tony.id, checkin_date: Date.parse('2019-10-26'), checkout_date: Date.parse('2019-10-28'), guest_num: 2)
mia_booking7 = Booking.create!(listing_id: mia_listing7.id, guest_id: rika.id, checkin_date: Date.parse('2018-12-05'), checkout_date: Date.parse('2018-12-08'), guest_num: 2)
mia_booking8 = Booking.create!(listing_id: mia_listing7.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-05'), checkout_date: Date.parse('2018-11-09'), guest_num: 2)
mia_booking9 = Booking.create!(listing_id: mia_listing8.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-13'), checkout_date: Date.parse('2018-11-18'), guest_num: 1)
mia_booking10 = Booking.create!(listing_id: mia_listing8.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-20'), checkout_date: Date.parse('2018-11-25'), guest_num: 2)

mia_review1 = Review.create!(author_id: danny.id, listing_id: mia_listing1.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 5, value: 4)
mia_review2 = Review.create!(author_id: carly.id, listing_id: mia_listing1.id, body: Faker::RickAndMorty.quote,
                        accuracy: 2, location: 3, communication: 8, check_in: 4, cleanliness: 1, value: 2)
mia_review3 = Review.create!(author_id: rika.id, listing_id: mia_listing1.id, body: Faker::RickAndMorty.quote,
                        accuracy: 4, location: 5, communication: 5, check_in: 5, cleanliness: 5, value: 4)
mia_review4 = Review.create!(author_id: john.id, listing_id: mia_listing2.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 3, check_in: 5, cleanliness: 2, value: 4)
mia_review5 = Review.create!(author_id: tony.id, listing_id: mia_listing2.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 1, value: 4)
mia_review6 = Review.create!(author_id: chris.id, listing_id: mia_listing2.id, body: Faker::RickAndMorty.quote,
                        accuracy: 4, location: 4, communication: 5, check_in: 3, cleanliness: 5, value: 4)
mia_review7 = Review.create!(author_id: stephanie.id, listing_id: mia_listing3.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 2, value: 4)
mia_review8 = Review.create!(author_id: danny.id, listing_id: mia_listing3.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 15, check_in: 5, cleanliness: 5, value: 1)
mia_review9 = Review.create!(author_id: stephanie.id, listing_id: mia_listing3.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 3, communication: 5, check_in: 5, cleanliness: 5, value: 4)
mia_review10 = Review.create!(author_id: rika.id, listing_id: mia_listing4.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 4, cleanliness: 5, value: 4)
mia_review11 = Review.create!(author_id: danny.id, listing_id: mia_listing4.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 3, cleanliness: 5, value: 4)
mia_review12 = Review.create!(author_id: danny.id, listing_id: mia_listing4.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 4, check_in: 5, cleanliness: 5, value: 4)
mia_review13 = Review.create!(author_id: stephanie.id, listing_id: mia_listing5.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 5, value: 4)
mia_review14 = Review.create!(author_id: danny.id, listing_id: mia_listing5.id, body: Faker::RickAndMorty.quote,
                        accuracy: 4, location: 5, communication: 5, check_in: 4, cleanliness: 5, value: 4)
mia_review15 = Review.create!(author_id: rika.id, listing_id: mia_listing5.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 3, check_in: 5, cleanliness: 2, value: 4)
mia_review6 = Review.create!(author_id: chris.id, listing_id: mia_listing6.id, body: Faker::RickAndMorty.quote,
                        accuracy: 4, location: 4, communication: 5, check_in: 3, cleanliness: 5, value: 4)
mia_review7 = Review.create!(author_id: stephanie.id, listing_id: mia_listing7.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 2, value: 4)
mia_review8 = Review.create!(author_id: danny.id, listing_id: mia_listing7.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 15, check_in: 5, cleanliness: 5, value: 1)
mia_review9 = Review.create!(author_id: stephanie.id, listing_id: mia_listing7.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 3, communication: 5, check_in: 5, cleanliness: 5, value: 4)
mia_review10 = Review.create!(author_id: rika.id, listing_id: mia_listing8.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 4, cleanliness: 5, value: 4)
mia_review11 = Review.create!(author_id: danny.id, listing_id: mia_listing8.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 3, cleanliness: 5, value: 4)
mia_review12 = Review.create!(author_id: danny.id, listing_id: mia_listing6.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 4, check_in: 5, cleanliness: 5, value: 4)
mia_review13 = Review.create!(author_id: stephanie.id, listing_id: mia_listing7.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 5, value: 4)
mia_review14 = Review.create!(author_id: danny.id, listing_id: mia_listing7.id, body: Faker::RickAndMorty.quote,
                        accuracy: 4, location: 5, communication: 5, check_in: 4, cleanliness: 5, value: 4)
mia_review15 = Review.create!(author_id: rika.id, listing_id: mia_listing6.id, body: Faker::RickAndMorty.quote,
                        accuracy: 5, location: 5, communication: 3, check_in: 5, cleanliness: 2, value: 4)