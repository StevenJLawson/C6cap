#json.extract! city, :id, :name, :created_at, :updated_at

json.id city.id.to_s
json.name city.name
json.created_at city.created_at
json.updated_at city.updated_at
json.url city_url(city, format: :json)
