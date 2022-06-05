class CreateSeminarInstances < ActiveRecord::Migration[7.0]
  def change
    create_table :seminar_instances do |t|

      t.references :seminar_type
      t.references :equipment_list
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
