class SeminarInstance < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  monetize :price_cents

  belongs_to :seminar_type

  has_many :equipment_lists
  has_many :equipment_items, through: :equipment_lists
  has_many :seminars
  has_many :guestbook_entries
  has_many :contents
end
