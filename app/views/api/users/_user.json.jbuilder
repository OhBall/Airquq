json.extract! user, :id, :email, :first_name, :last_name
json.photoUrl url_for(user.profile_photo)