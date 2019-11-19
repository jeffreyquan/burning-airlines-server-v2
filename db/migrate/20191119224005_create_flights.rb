class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.text :flight_no
      t.text :origin
      t.text :destination
      t.datetime :date
      t.integer :plane_id

      t.timestamps
    end
  end
end
