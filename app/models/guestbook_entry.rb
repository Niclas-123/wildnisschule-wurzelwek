class GuestbookEntry < ApplicationRecord
  belongs_to :user, optional: :true
  belongs_to :seminar_instance, optional: true
end
