json.array!(@corporates) do |corporate|
  json.extract! corporate, :name
  json.url corporate_url(corporate, format: :json)
end