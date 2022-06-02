class CreateSeminars < ActiveRecord::Migration[7.0]
  def change
    create_table :seminars do |t|

      t.references :location
      t.references :seminar_instance
      t.datetime :begins
      t.datetime :ends

      t.timestamps
    end
  end
end
