class Location < ApplicationRecord
  has_many :seminars

  has_one_attached :location_image

  reverse_geocoded_by :latitude, :longitude do |obj,results|
    if geo = results.first
      obj.city = geo.city
      obj.zip = geo.postal_code
      obj.street = geo.street
      obj.house_number = geo.house_number
    end
  end

  after_validation :reverse_geocode

  def location
    city = geo.city
    zipcode = geo.postal_code
    street = geo.street
    house_number  = geo.house_number
  end
end
