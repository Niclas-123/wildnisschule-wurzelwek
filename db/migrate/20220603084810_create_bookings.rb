class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|

      t.references :seminar
      t.string :first_name
      t.string :last_name
      t.datetime :birthday
      t.string :adress
      t.integer :zip_code
      t.string :email
      t.string :tel

      t.timestamps
    end
  end
end
