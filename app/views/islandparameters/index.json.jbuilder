json.array!(@islandparameters) do |islandparameter|
  json.extract! islandparameter, :id
  json.url islandparameter_url(islandparameter, format: :json)
end
