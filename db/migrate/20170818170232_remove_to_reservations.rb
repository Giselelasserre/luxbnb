class RemoveToReservations < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :user_id, :string
    remove_column :reservations, :flat_id, :string

    add_reference :reservations, :user, foreign_key: true
    add_reference :reservations, :flat, foreign_key: true
  end
end
