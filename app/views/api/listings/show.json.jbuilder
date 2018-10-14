json.extract! @listing, :id, :name, :description, :price, :bed_num, :bath_num, :room_num, :bed_num, :bath_num,
                       :air_conditioning, :heating, :essentials, :wifi, :tv, :washer, :kitchen, :free_parking,
                       :hair_dryer, :shampoo, :address, :city, :state, :country, :zipcode, :lat, :lng

json.host do
  json.partial! 'api/users/user', user: @listing.host
  json.review_num @listing.host.num_received_reviews
end 

if @listing.reviews.length != 0
  json.reviews do 
    @listing.reviews.each do |review|
      json.set! review.id do
        json.partial! 'api/reviews/review', review: review

        json.author do
          json.partial! 'api/users/user', user: review.author
        end 
      end
    end
  end 
end 
