class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|

      t.string :name
      t.text :description
      t.decimal :latitude, precision: 11, scale: 8
      t.decimal :longitude, precision: 11, scale: 8
      t.text :adress

      t.timestamps
    end
  end
end
