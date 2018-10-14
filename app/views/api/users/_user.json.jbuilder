json.extract! user, :id, :email, :first_name, :last_name, :created_at
if user.profile_photo.attached?
  json.photoUrl url_for(user.profile_photo)
end