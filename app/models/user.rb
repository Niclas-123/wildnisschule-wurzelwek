class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, confirmation: true

  has_many :guestbook_entries
end
