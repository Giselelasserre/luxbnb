class AddToReservation < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :starting, :date

    add_column :reservations, :final, :date

  end
end
