class CreateSeminarContents < ActiveRecord::Migration[7.0]
  def change
    create_table :seminar_contents do |t|

      t.references :seminar_instance
      t.text :content

      t.timestamps
    end
  end
end
