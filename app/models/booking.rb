class Booking < ApplicationRecord
  belongs_to :seminar

  validates :email, :first_name, :last_name, :tel, :birth_year, :adress, :zip_code, :city, presence: true
  validates :email, email_format: {message: "Format ist nicht gültig."}
end
