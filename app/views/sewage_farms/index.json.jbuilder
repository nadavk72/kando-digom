json.array!(@sewage_farms) do |sewage_farm|
  json.extract! sewage_farm, :name
  json.url sewage_farm_url(sewage_farm, format: :json)
end