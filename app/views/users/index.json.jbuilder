json.array!(@users) do |user|
  json.extract! user, :id, :teacher, :site_admin, :first_name, :last_name, :image_url, :about_me, :phone, :institution, :picture, :education, :gender, :location, :birthday
  json.url user_url(user, format: :json)
end
