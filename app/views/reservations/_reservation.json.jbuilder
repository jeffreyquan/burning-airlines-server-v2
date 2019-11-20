json.extract! reservation, :id, :row, :column, :flight_id, :user_id, :created_at, :updated_at
json.extract! reservation.user, :name
# json.url reservation_url(reservation, format: :json)
