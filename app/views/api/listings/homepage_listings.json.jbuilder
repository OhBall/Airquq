@listings_hash.each do |city, listings|
  json.set! city do
    listings.each do |listing|
      json.set! listing.id do  
        json.extract! listing, :id, :name, :price, :city
      end 
    end
  end 
end