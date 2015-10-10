json.array!(@routes) do |route|
  json.extract! route, :id, :name, :cost, :time_in_mins, :zone1_id, :zone2_id
  json.url route_url(route, format: :json)
end
