json.array!(@factories) do |factory|
  json.extract! factory, :factoryAddress, :mailingAddress, :name, :corporate_id, :clientNumber, :address, :cityId, :sectorId, :physicalNumber, :sewageFarmId, :arrangement, :waterSupplierId, :isActive
  json.url factory_url(factory, format: :json)
end