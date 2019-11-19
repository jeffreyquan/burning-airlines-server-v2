class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.integer :row_no
      t.integer :col_no
      t.integer :flight_id
      t.integer :user_id

      t.timestamps
    end
  end
end
