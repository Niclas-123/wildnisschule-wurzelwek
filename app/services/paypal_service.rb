class PaypalService

  def initialize(params)
    @params = params
  end

  def paypal_payment
    begin
      payment = PayPal::SDK::REST::Payment.find(@params[:paypal_payment_id])
      payer_id = payment.payer.payer_info.payer_id
      amount = payment.transactions.first.amount.total.to_f

      execute = payment.execute(payer_id: payer_id)
    rescue => e
      Raven.capture_exception(e)
      return false
    end

    payment = PayPal::SDK::REST::Payment.find(@params[:paypal_payment_id])

    state = {
      "approved" => :succeeded,
      "failed" => :payment_failed,
      "created" => :initial,

    }.fetch(payment.state, :error)

    return {payment_service: "paypal", payment_status: state, charge_id: payment.id, description: payment.transactions.first.description, payment_response: payment.to_json}
  end
end
