json.array!(@digoms) do |digom|
  json.extract! digom, :id, digomId, :corp, :factory, :persents, :numOfFlows, :flowType, :notes, :lab, :samplerName, :parameters, :executed
  json.url digom_url(digom, format: :json)
end
