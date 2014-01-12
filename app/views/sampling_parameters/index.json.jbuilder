json.array!(@sampling_parameters) do |sampling_parameter|
  json.extract! sampling_parameter, :name
  json.url sampling_parameter_url(sampling_parameter, format: :json)
end