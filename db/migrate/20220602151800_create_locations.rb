class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|

      t.string :name
      t.text :description
      t.integer :latitude
      t.integer :longitute

      t.timestamps
    end
  end
end
