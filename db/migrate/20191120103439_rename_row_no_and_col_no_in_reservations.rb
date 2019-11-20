class RenameRowNoAndColNoInReservations < ActiveRecord::Migration[6.0]
  def change
    rename_column :reservations, :row_no, :row
    rename_column :reservations, :col_no, :column
  end
end
