json.array!(@water_suppliers) do |water_supplier|
  json.extract! water_supplier, :name
  json.url water_supplier_url(water_supplier, format: :json)
end