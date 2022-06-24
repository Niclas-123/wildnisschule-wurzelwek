class CreateEquipmentLists < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment_lists do |t|
      t.references :equipment_item
      t.references :seminar_instance

      t.timestamps
    end
  end
end
