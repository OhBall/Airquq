@listings.each do |listing|
  json.set! listing.id do
    json.extract! listing, :id, :name, :price, :city, :lat, :lng
    json.review_num listing.reviews.length
    json.photoUrls listing.photos.map { |photo| url_for(photo) }
    # json.min_price @min_price
    # json.max_price @max_price
    # json.average_price @average_price
  end 
end 