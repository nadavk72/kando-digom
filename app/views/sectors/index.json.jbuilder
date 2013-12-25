json.array!(@sectors) do |sector|
  json.extract! sector, :name
  json.url sector_url(sector, format: :json)
end