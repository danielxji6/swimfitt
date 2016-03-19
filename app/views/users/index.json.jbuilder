json.array!(@users) do |user|
  json.extract! user, :id, :email, :password_digest, :fullName, :weight, :height, :age, :gender
  json.url user_url(user, format: :json)
end
