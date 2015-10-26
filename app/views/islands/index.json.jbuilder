json.array!(@islands) do |island|
  json.extract! island, :id, :name, :project_id, :width, :length, :distance
  json.url island_url(island, format: :json)
end
