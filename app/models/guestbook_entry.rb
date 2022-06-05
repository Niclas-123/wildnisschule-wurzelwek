class GuestbookEntry < ApplicationRecord
  belongs_to :user
  belongs_to :seminar_instance
end
