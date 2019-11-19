json.extract! reservation, :id, :row_no, :col_no, :flight_id, :user_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
