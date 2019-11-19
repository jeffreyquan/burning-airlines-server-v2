json.extract! flight, :id, :flight_no, :origin, :destination, :date, :plane_id, :created_at, :updated_at
json.url flight_url(flight, format: :json)
