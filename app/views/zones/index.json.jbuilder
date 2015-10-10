json.array!(@zones) do |zone|
  json.extract! zone, :id, :agebs, :life_cost, :working_population, :total_population, :student_population, :geo_latitude, :geo_longitude, :name
  json.url zone_url(zone, format: :json)
end
