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

      t.boolean :rideshare, default: false
      t.boolean :agb, default: false
      t.boolean :privacy, default: false

      t.integer :user_id
      t.integer :status, default: 0
      t.string :token
      t.string :charge_id
      t.string :error_message
      t.string :customer_id
      t.integer :payment_gateway

      t.string :reference_number

      t.timestamps

    end
    add_monetize :bookings, :price, currency: { present: false }
  end
end
