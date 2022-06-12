class Booking < ApplicationRecord
  enum status: { pending: 0, failed: 1, paid: 2, paypal_executed: 3}
  enum payment_gateway: { stripe: 0, paypal: 1, bank_transfer: 2 }

  monetize :price_cents

  belongs_to :seminar

  scope :recently_created, ->  { where(created_at: 1.minutes.ago..DateTime.now) }

  def set_paid
    self.status = Booking.statuses[:paid]
  end
  def set_failed
    self.status = Booking.statuses[:failed]
  end
  def set_paypal_executed
    self.status = Booking.statuses[:paypal_executed]
  end

  validates :email, :first_name, :last_name, :tel, :birth_year, :adress, :zip_code, :city, presence: true
  validates :email, email_format: {message: "Format ist nicht gültig."}
  validates :agb, :privacy, acceptance: true
end
