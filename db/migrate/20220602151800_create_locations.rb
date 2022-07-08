class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|

      t.string :name
      t.text :description

      t.float :latitude
      t.float :longitude

      t.string :street
      t.string :house_number
      t.string :zip
      t.string :city

      t.timestamps
    end
  end
end
