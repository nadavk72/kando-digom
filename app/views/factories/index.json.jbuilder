json.array!(@factories) do |factory|
  json.extract! factory, :name, :corporate_id
  json.url factory_url(factory, format: :json)
end