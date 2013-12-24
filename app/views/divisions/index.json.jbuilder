json.array!(@divisions) do |division|
  json.extract! division, :id, :name, :description
  json.url division_url(division, format: :json)
end
