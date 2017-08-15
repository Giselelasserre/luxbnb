class CreateFlats < ActiveRecord::Migration[5.0]
  def change
    create_table :flats do |t|
      t.string :location
      t.text :description
      t.decimal :price
      t.string :picture

      t.timestamps
    end
  end
end
