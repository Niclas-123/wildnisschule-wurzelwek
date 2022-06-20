class SeminarInstance < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  monetize :price_cents

  belongs_to :seminar_type
  belongs_to :equipment_list

  has_many :seminars
  has_many :guestbook_entries
  has_many :contents
end
