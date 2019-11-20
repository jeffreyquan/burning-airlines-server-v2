json.extract! flight, :id, :flight_no, :origin, :destination, :date, :plane_id, :created_at, :updated_at
json.extract! flight.plane, :name, :rows, :columns
json.set! :reservation do
  json.array! flight.reservations, partial: 'reservations/reservation', as: :reservation
end
# json.url flight_url(flight, format: :json)
