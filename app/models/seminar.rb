class Seminar < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: :slugged

  def set_slug
    self.slug = start_date.strftime("%m_%d_%Y")
  end

  belongs_to :location
  belongs_to :seminar_instance

  has_many :bookings

  validates :start_date, :end_date, :max_participants, presence: true
end
