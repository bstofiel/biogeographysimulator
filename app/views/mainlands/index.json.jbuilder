json.array!(@mainlands) do |mainland|
  json.extract! mainland, :id, :name, :project_id, :number_of_species
  json.url mainland_url(mainland, format: :json)
end
