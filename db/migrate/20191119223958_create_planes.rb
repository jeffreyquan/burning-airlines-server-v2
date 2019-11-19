class CreatePlanes < ActiveRecord::Migration[6.0]
  def change
    create_table :planes do |t|
      t.text :name
      t.integer :rows
      t.integer :columns

      t.timestamps
    end
  end
end
