json.array!(@users) do |user|
  json.extract! user, :id, :nik, :username, :password, :name, :email, :division_id, :level_id, :address, :telp, :status
  json.url user_url(user, format: :json)
end
