json.array!(@cars) do |car|
  json.extract! car, :id, :police_number, :merk, :capacity, :driver_id
  json.url car_url(car, format: :json)
end
