json.extract! listing, :id, :name, :city
json.photoUrls listing.photos.map { |photo| url_for(photo) }