@listings.each do |listing|
  json.set! listing.id do
    json.extract! listing, :id, :name, :price, :city, :lat, :lng
    json.review_num listing.reviews.length
    json.photoUrls listing.photos.map { |photo| url_for(photo) }
    json.average_rating listing.calculate_average_ratings
  end 
end 