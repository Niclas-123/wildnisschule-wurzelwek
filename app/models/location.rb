class Location < ApplicationRecord
  has_many :seminars

  has_one_attached :location_image
end
