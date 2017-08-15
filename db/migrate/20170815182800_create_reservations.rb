class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :dates
      t.string :dates
      t.string :references
      t.string :user_id
      t.string :references
      t.string :flat_id

      t.timestamps
    end
  end
end
