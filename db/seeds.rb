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

demo.profile_photo.attach(io: File.open('/Users/Xiaoyun/Desktop/airquq-pics/user/demo.png'), filename: 'demo.png')

listing1 = Listing.create!(name: 'La casa', host_id: rika.id, description: 'A cottage made up of stone and timber built on two storeys, with a large living room, glass window, a couch for two people and a bathroom with sauna; on the second storey there is a double bedroom. Outdoors, there is a large garden with a porch equipped with BBQ and a wooden table. The site is located on the pleasant hills between Bellegra and Olevano Romano. We have currently added two beds, set up in a wonderful Indian teepe available for two extra guests in addition to the four ones.',
                          price: 309, room_num: 2, bed_num: 2, bath_num: 1, air_conditioning: true, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: true, hair_dryer: false, shampoo: false, 
                          address: '100 Sea Ln', city: 'Los Angeles', state: 'California', country: 'USA', zipcode: '90001', lat: 34.023506, lng: -118.263150)
listing2 = Listing.create!(name: 'Joshua Tree House', host_id: john.id, description: '*This cabin was featured in the New York Times in January, 2017. * A magical homesteader cabin embedded in 5 acres of unfenced Joshua Tree desert wilderness, 12 minutes from downtown Joshua Tree. Experience peace, quiet, wildlife and STARS—on the grid but off the pavement.',
                          price: 109, room_num: 5, bed_num: 6, bath_num: 3, air_conditioning: true, heating: true, essentials: true, wifi: true, tv: true, washer: true, kitchen: true, free_parking: true, hair_dryer: true, shampoo: true, 
                          address: '2304 Tree Circle', city: 'Los Angeles', state: 'California', country: 'USA', zipcode: '90001', lat: 34.023506, lng: -118.263150)
listing3 = Listing.create!(name: 'Sunny apartment near metro station', host_id: dirk.id, description: 'I rent out a very sunny and bright apartment only 7 minutes walking distance to the metro station Ober-St. Veit. The aparrment has a spacious living room with a kitchen, one bedroom and a bathroom with mit bath. A terrace can be used in summer.',
                          price: 59, room_num: 1, bed_num: 1, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '2304 Tree Circle', city: 'San Francisco', state: 'California', country: 'USA', zipcode: '94411', lat: 37.72342, lng: -122.415)
listing4 = Listing.create!(name: 'Manhattan Lux Loft.Like.Love.Lots.Look !', host_id: dirk.id, description: 'I rent out a very sunny and bright apartment only 7 minutes walking distance to the metro station Ober-St. Veit. The aparrment has a spacious living room with a kitchen, one bedroom and a bathroom with mit bath. A terrace can be used in summer.',
                          price: 89, room_num: 1, bed_num: 1, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '2304 Tree Circle', city: 'San Francisco', state: 'California', country: 'USA', zipcode: '94411', lat: 37.72342, lng: -122.415)
listing5 = Listing.create!(name: 'Sunny, Modern room in East Village!', host_id: dirk.id, description: 'I rent out a very sunny and bright apartment only 7 minutes walking distance to the metro station Ober-St. Veit. The aparrment has a spacious living room with a kitchen, one bedroom and a bathroom with mit bath. A terrace can be used in summer.',
                          price: 239, room_num: 1, bed_num: 1, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '2304 Tree Circle', city: 'San Francisco', state: 'California', country: 'USA', zipcode: '94411', lat: 37.72342, lng: -122.415)
listing6 = Listing.create!(name: 'Sunny, Modern room in East Village!', host_id: dirk.id, description: 'I rent out a very sunny and bright apartment only 7 minutes walking distance to the metro station Ober-St. Veit. The aparrment has a spacious living room with a kitchen, one bedroom and a bathroom with mit bath. A terrace can be used in summer.',
                          price: 239, room_num: 1, bed_num: 1, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '2304 Tree Circle', city: 'San Francisco', state: 'California', country: 'USA', zipcode: '94411', lat: 37.72342, lng: -122.415)
listing7 = Listing.create!(name: 'Sunny, Modern room in East Village!', host_id: dirk.id, description: 'I rent out a very sunny and bright apartment only 7 minutes walking distance to the metro station Ober-St. Veit. The aparrment has a spacious living room with a kitchen, one bedroom and a bathroom with mit bath. A terrace can be used in summer.',
                          price: 239, room_num: 1, bed_num: 1, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '2304 Tree Circle', city: 'San Francisco', state: 'California', country: 'USA', zipcode: '94411', lat: 37.72342, lng: -122.415)
listing8 = Listing.create!(name: 'Sunny, Modern room in East Village!', host_id: dirk.id, description: 'I rent out a very sunny and bright apartment only 7 minutes walking distance to the metro station Ober-St. Veit. The aparrment has a spacious living room with a kitchen, one bedroom and a bathroom with mit bath. A terrace can be used in summer.',
                          price: 239, room_num: 1, bed_num: 1, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '2304 Tree Circle', city: 'San Francisco', state: 'California', country: 'USA', zipcode: '94411', lat: 37.72342, lng: -122.415)
listing9 = Listing.create!(name: 'Sunny, Modern room in East Village!', host_id: dirk.id, description: 'I rent out a very sunny and bright apartment only 7 minutes walking distance to the metro station Ober-St. Veit. The aparrment has a spacious living room with a kitchen, one bedroom and a bathroom with mit bath. A terrace can be used in summer.',
                          price: 239, room_num: 1, bed_num: 1, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '2304 Tree Circle', city: 'San Francisco', state: 'California', country: 'USA', zipcode: '94411', lat: 37.72342, lng: -122.415)
listing10 = Listing.create!(name: 'Sunny, Modern room in East Village!', host_id: dirk.id, description: 'I rent out a very sunny and bright apartment only 7 minutes walking distance to the metro station Ober-St. Veit. The aparrment has a spacious living room with a kitchen, one bedroom and a bathroom with mit bath. A terrace can be used in summer.',
                          price: 239, room_num: 1, bed_num: 1, bath_num: 1, air_conditioning: false, heating: true, essentials: true, wifi: true, tv: true, washer: false, kitchen: true, free_parking: false, hair_dryer: true, shampoo: false,
                          address: '2304 Tree Circle', city: 'San Francisco', state: 'California', country: 'USA', zipcode: '94411', lat: 37.72342, lng: -122.415)
listing11 = Listing.create!(name: 'Joshua Tree House', host_id: john.id, description: '*This cabin was featured in the New York Times in January, 2017. * A magical homesteader cabin embedded in 5 acres of unfenced Joshua Tree desert wilderness, 12 minutes from downtown Joshua Tree. Experience peace, quiet, wildlife and STARS—on the grid but off the pavement.',
                          price: 109, room_num: 5, bed_num: 6, bath_num: 3, air_conditioning: true, heating: true, essentials: true, wifi: true, tv: true, washer: true, kitchen: true, free_parking: true, hair_dryer: true, shampoo: true, 
                          address: '2304 Tree Circle', city: 'Los Angeles', state: 'California', country: 'USA', zipcode: '90001', lat: 34.023506, lng: -118.263150)                          
listing12 = Listing.create!(name: 'Joshua Tree House', host_id: john.id, description: '*This cabin was featured in the New York Times in January, 2017. * A magical homesteader cabin embedded in 5 acres of unfenced Joshua Tree desert wilderness, 12 minutes from downtown Joshua Tree. Experience peace, quiet, wildlife and STARS—on the grid but off the pavement.',
                          price: 109, room_num: 5, bed_num: 6, bath_num: 3, air_conditioning: true, heating: true, essentials: true, wifi: true, tv: true, washer: true, kitchen: true, free_parking: true, hair_dryer: true, shampoo: true, 
                          address: '2304 Tree Circle', city: 'Los Angeles', state: 'California', country: 'USA', zipcode: '90001', lat: 34.023506, lng: -118.263150)                          
listing13 = Listing.create!(name: 'Joshua Tree House', host_id: john.id, description: '*This cabin was featured in the New York Times in January, 2017. * A magical homesteader cabin embedded in 5 acres of unfenced Joshua Tree desert wilderness, 12 minutes from downtown Joshua Tree. Experience peace, quiet, wildlife and STARS—on the grid but off the pavement.',
                          price: 109, room_num: 5, bed_num: 6, bath_num: 3, air_conditioning: true, heating: true, essentials: true, wifi: true, tv: true, washer: true, kitchen: true, free_parking: true, hair_dryer: true, shampoo: true, 
                          address: '2304 Tree Circle', city: 'Los Angeles', state: 'California', country: 'USA', zipcode: '90001', lat: 34.023506, lng: -118.263150)                          
listing14 = Listing.create!(name: 'Joshua Tree House', host_id: john.id, description: '*This cabin was featured in the New York Times in January, 2017. * A magical homesteader cabin embedded in 5 acres of unfenced Joshua Tree desert wilderness, 12 minutes from downtown Joshua Tree. Experience peace, quiet, wildlife and STARS—on the grid but off the pavement.',
                          price: 109, room_num: 5, bed_num: 6, bath_num: 3, air_conditioning: true, heating: true, essentials: true, wifi: true, tv: true, washer: true, kitchen: true, free_parking: true, hair_dryer: true, shampoo: true, 
                          address: '2304 Tree Circle', city: 'Los Angeles', state: 'California', country: 'USA', zipcode: '90001', lat: 34.023506, lng: -118.263150)                          
listing15 = Listing.create!(name: 'Joshua Tree House', host_id: john.id, description: '*This cabin was featured in the New York Times in January, 2017. * A magical homesteader cabin embedded in 5 acres of unfenced Joshua Tree desert wilderness, 12 minutes from downtown Joshua Tree. Experience peace, quiet, wildlife and STARS—on the grid but off the pavement.',
                          price: 109, room_num: 5, bed_num: 6, bath_num: 3, air_conditioning: true, heating: true, essentials: true, wifi: true, tv: true, washer: true, kitchen: true, free_parking: true, hair_dryer: true, shampoo: true, 
                          address: '2304 Tree Circle', city: 'Los Angeles', state: 'California', country: 'USA', zipcode: '90001', lat: 34.023506, lng: -118.263150)                          

booking1 = Booking.create!(listing_id: listing1.id, guest_id: danny.id, checkin_date: Date.parse('2018-11-12'), checkout_date: Date.parse('2018-11-15'), guest_num: 2)
booking2 = Booking.create!(listing_id: listing2.id, guest_id: rika.id, checkin_date: Date.parse('2018-12-12'), checkout_date: Date.parse('2018-12-15'), guest_num: 2)
booking3 = Booking.create!(listing_id: listing3.id, guest_id: tony.id, checkin_date: Date.parse('2019-10-26'), checkout_date: Date.parse('2019-10-28'), guest_num: 2)
booking4 = Booking.create!(listing_id: listing2.id, guest_id: dirk.id, checkin_date: Date.parse('2018-11-03'), checkout_date: Date.parse('2018-11-09'), guest_num: 1)
booking5 = Booking.create!(listing_id: listing3.id, guest_id: rika.id, checkin_date: Date.parse('2018-12-05'), checkout_date: Date.parse('2018-12-08'), guest_num: 2)

booking6 = Booking.create!(listing_id: listing1.id, guest_id: demo.id, checkin_date: Date.parse('2018-10-23'), checkout_date: Date.parse('2018-10-26'), guest_num: 1)
booking7 = Booking.create!(listing_id: listing2.id, guest_id: demo.id, checkin_date: Date.parse('2018-10-26'), checkout_date: Date.parse('2018-10-31'), guest_num: 2)
booking8 = Booking.create!(listing_id: listing3.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-05'), checkout_date: Date.parse('2018-11-09'), guest_num: 2)
booking9 = Booking.create!(listing_id: listing4.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-13'), checkout_date: Date.parse('2018-11-18'), guest_num: 1)
booking10 = Booking.create!(listing_id: listing5.id, guest_id: demo.id, checkin_date: Date.parse('2018-11-20'), checkout_date: Date.parse('2018-11-25'), guest_num: 2)

review1 = Review.create!(author_id: danny.id, listing_id: listing1.id, body: 'We loved our time here in the mountains. It’s a charming spot with amazing views. I wish we could have stayed longer.',
                        accuracy: 5, location: 5, communication: 5, check_in: 5, cleanliness: 5, value: 4)
review2 = Review.create!(author_id: rika.id, listing_id: listing2.id, body: 'A very special place to stay. Hand-crafted house, creatively appointed, in a beautiful location. Pietro is a warm and lovely host, he welcomed us with local cheese and olives and wine and helped us get settled. ',
                        accuracy: 5, location: 1, communication: 2, check_in: 4, cleanliness: 4, value: 5)
review3 = Review.create!(author_id: rika.id, listing_id: listing3.id, body: 'It doesn’t get any better than this. This most creative and unusual rustic cottage set in an olive grove overlooking a beautiful valley is a travelers dream.',
                        accuracy: 5, location: 4, communication: 5, check_in: 5, cleanliness: 5, value: 5)
review5 = Review.create!(author_id: danny.id, listing_id: listing3.id, body: 'Awesome place!',
                        accuracy: 5, location: 2, communication: 1, check_in: 5, cleanliness: 4, value: 5)
review6 = Review.create!(author_id: john.id, listing_id: listing1.id, body: 'Awesome place!',
                        accuracy: 5, location: 2, communication: 1, check_in: 5, cleanliness: 4, value: 5)
review7 = Review.create!(author_id: dirk.id, listing_id: listing1.id, body: 'Awesome place!',
                        accuracy: 5, location: 2, communication: 1, check_in: 5, cleanliness: 4, value: 5)
review8 = Review.create!(author_id: demo.id, listing_id: listing1.id, body: 'Awesome place!',
                        accuracy: 5, location: 2, communication: 1, check_in: 5, cleanliness: 4, value: 5)
review9 = Review.create!(author_id: rika.id, listing_id: listing1.id, body: 'Awesome place!',
                        accuracy: 5, location: 2, communication: 1, check_in: 5, cleanliness: 4, value: 5)
review10 = Review.create!(author_id: tony.id, listing_id: listing1.id, body: 'Awesome place!',
                        accuracy: 5, location: 2, communication: 1, check_in: 5, cleanliness: 4, value: 5)
review11 = Review.create!(author_id: danny.id, listing_id: listing1.id, body: 'Awesome place!',
                        accuracy: 5, location: 2, communication: 1, check_in: 5, cleanliness: 4, value: 5)
review12 = Review.create!(author_id: tony.id, listing_id: listing2.id, body: 'Awesome place!',
                        accuracy: 5, location: 2, communication: 1, check_in: 5, cleanliness: 4, value: 5)
