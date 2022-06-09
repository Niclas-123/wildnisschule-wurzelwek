class CreateSeminarInstances < ActiveRecord::Migration[7.0]
  def change
    create_table :seminar_instances do |t|

      t.references :seminar_type
      t.references :equipment_list

      t.string :name
      t.text :description

      t.string :stripe_plan_name
      t.string :paypal_plan_name

      t.timestamps

    end
    add_monetize :seminar_instances, :price, currency: { present: true }
  end
end
