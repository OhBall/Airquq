@listings.each do |listing|
  json.set! listing.id do
    json.extract! listing, :id, :name, :price, :city, :lat, :lng
    json.review_num listing.reviews.length
  end 
end 