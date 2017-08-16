class AddAddressToFlats < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :addresse, :string
  end
end
