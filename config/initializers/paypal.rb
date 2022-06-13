if Rails.application.credentials.paypal.present? # Somehow, precompilation does not work otherwise
  if Rails.env.production?
    mode = 'live'
  elsif Rails.env.development? || Rails.env.staging? || Rails.env.test?
    mode = 'sandbox'
  end
  client_id = Rails.application.credentials.paypal[:paypal_client_id]
  client_secret = Rails.application.credentials.paypal[:paypal_client_secret]

  PayPal::SDK.configure(
    mode: mode,
    client_id: client_id,
    client_secret: client_secret,
    ssl_options: {ca_file: nil}
  )

  PayPal::SDK.logger = Rails.logger
end
