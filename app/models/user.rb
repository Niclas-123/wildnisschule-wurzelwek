class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, confirmation: true
  validates :email, :first_name, :last_name, :tel, :birth_year, :adress, :zip_code, :city, presence: true

  validates :email, uniqueness: true, email_format: {message: "Format ist nicht gültig."}

  has_many :guestbook_entries
end
