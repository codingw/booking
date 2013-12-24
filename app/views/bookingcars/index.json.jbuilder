json.array!(@bookingcars) do |bookingcar|
  json.extract! bookingcar, :id, :car_id, :user_id, :destination, :description, :start_time, :end_time, :participant, :status
  json.url bookingcar_url(bookingcar, format: :json)
end
