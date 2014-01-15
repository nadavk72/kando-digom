json.array!(@pit_types) do |pit_type|
  json.extract! pit_type, :name
  json.url pit_type_url(pit_type, format: :json)
end