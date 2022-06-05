class CreateEquipmentLists < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment_lists do |t|
      t.text :content

      t.timestamps
    end
  end
end
