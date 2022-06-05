class SorceryCore < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email,            null: false, index: { unique: true }
      t.string :crypted_password
      t.string :salt

      t.string :first_name
      t.string :last_name
      t.string :tel
      t.datetime :birthday

      t.string :adress
      t.integer :zip_code

      t.boolean :admin, default: false

      t.timestamps                null: false
    end
  end
end
