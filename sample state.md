```js
{
  entities: {
    users: {
      1: {
        id: 1,
        username: 'kit001',
        first_name: 'Alice',
        last_name: 'Yang',
        email: 'kit001@gmail.com'        
      },
      2: {
        id: 2,
        username: 'kit002',
        first_name: 'Rika',
        last_name: 'Sun',
        email: 'kit002@gmail.com'    
      }
    },
    spots: {
      1: {
        id: 1,
        name: 'Unique Cob Cottage',
        description: 'Welcoming and cozy retreat!',
        price: 109,
        bed_num: 1,
        address: '1 cob ln',
        city: 'Mayne Island',
        state: 'British Columbia',
        country: 'Canada',
        zipcode: '70000',
        lat: 48.8380,
        lng: 123.2877,
        host_id: 2
      }
    },
    bookings: {
      1: {
        id: 1,
        spot_id: 1,
        guest_id: 1,
        start_date: 2018-08-02,
        end_date: 2018-08-04,
      }
    },
    reviews: {
      1: {
        id: 1,
        author_id: 1,
        spot_id: 1,
        title: 'Awesome place!',
        body: 'We enjoyed our stay!',
        accuracy: 5,
        location: 4,
        communication: 5,
        check_in: 5,
        cleanliness: 5,
        value: 4,
      }
    },
    message: {
      1: {
        id: 1,
        sender_id: 2,
        receiver_id: 1,
        body: 'hi!'
      }
    }
  },
  ui: {
    loading: true/false
  },
  errors: {
    login: ["Incorrect username/password combination"],
    bookingform: ["Please select a check-out date"],
  },
  session: { currentUserId: 1 }
}
```