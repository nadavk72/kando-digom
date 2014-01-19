json.array!(@water_counter_types) do |water_counter_type|
  json.extract! water_counter_type, :name
  json.url water_counter_type_url(water_counter_type, format: :json)
end