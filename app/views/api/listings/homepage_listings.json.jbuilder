@listings_hash.each do |city, listings|
  json.set! city do
    listings.each do |listing|
      json.set! listing.id do  
        json.extract! listing, :id, :name, :price, :city
        json.review_num listing.reviews.length
      end 
    end
  end 
end