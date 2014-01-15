json.array!(@factories) do |factory|
  json.extract! factory, :address, :shipping_address, :name, :corporate_id, :clientNumber, :sectorId, :physicalNumber, :sewageFarmId, :arrangement, :waterSupplierId, :isActive
  json.url factory_url(factory, format: :json)
end