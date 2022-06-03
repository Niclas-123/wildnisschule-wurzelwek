class Seminar < ApplicationRecord
  belongs_to :location
  belongs_to :seminar_instance

  has_many :bookings
end
