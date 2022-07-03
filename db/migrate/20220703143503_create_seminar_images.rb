class CreateSeminarImages < ActiveRecord::Migration[7.0]
  def change
    create_table :seminar_images do |t|

      t.references :seminar_instance
      t.timestamps
    end
  end
end
