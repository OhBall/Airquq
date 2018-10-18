json.extract! listing, :id, :name, :city
json.average_rating listing.calculate_average_ratings
json.photoUrls listing.photos.map { |photo| url_for(photo) }