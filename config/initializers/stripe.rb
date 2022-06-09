require 'stripe'

if Rails.application.credentials.stripe.present?
  Stripe.api_key = Rails.application.credentials.stripe[:stripe_secret_key]
end
