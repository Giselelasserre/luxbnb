class RemoveAddresseFromFlats < ActiveRecord::Migration[5.0]
  def change
    remove_column :flats, :addresse, :string
  end
end
