class CreateSeminars < ActiveRecord::Migration[7.0]
  def change
    create_table :seminars do |t|

      t.references :location
      t.references :seminar_instance
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
