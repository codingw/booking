json.array!(@bookingrooms) do |bookingroom|
  json.extract! bookingroom, :id, :room_id, :user_id, :meeting, :description, :start_time, :end_time, :participant, :status
  json.url bookingroom_url(bookingroom, format: :json)
end
