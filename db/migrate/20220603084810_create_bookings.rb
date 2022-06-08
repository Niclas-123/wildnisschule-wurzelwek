class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|

      t.references :seminar

      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :tel
      t.string :birth_year

      t.string :adress
      t.string :zip_code
      t.string :city

      t.timestamps
    end
  end
end
