class Booking < ApplicationRecord
  after_create :generate_reference_number

  enum status: { pending: 0, failed: 1, paid: 2, paypal_executed: 3, transfer: 4, archived: 5}
  enum payment_gateway: { stripe: 0, paypal: 1, bank_transfer: 2 }

  monetize :price_cents
  belongs_to :seminar

  scope :recently_created, ->  { where(created_at: 10.minutes.ago..DateTime.now) }

  validates :email, :first_name, :last_name, :tel, :birth_year, :adress, :zip_code, :city, presence: true
  validates :email, email_format: {message: "Format ist nicht gültig."}
  validates :agb, :privacy, acceptance: true

  def generate_reference_number
    generated_reference_number = loop do
      reference_number = 'B-' + (0...8).map { (rand 65..90).chr }.join
      break reference_number unless Booking.exists?(reference_number: reference_number)
    end
    update(reference_number: generated_reference_number)
  end

  def set_paid
    self.status = Booking.statuses[:paid]
  end

  def set_failed
    self.status = Booking.statuses[:failed]
  end

  def set_paypal_executed
    self.status = Booking.statuses[:paypal_executed]
  end

end
