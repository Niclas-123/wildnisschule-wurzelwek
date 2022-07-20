document.addEventListener("DOMContentLoaded", () => {
  const paypalContainer = document.getElementById("paypal-button-container");
  // Leave, if not on payment page
  if (!paypalContainer) {
    return;
  }

  let paypal_button = paypal.Buttons({
    env: 'sandbox', // Valid values are sandbox and live.
    createOrder: async () => {
      const response = await fetch('/fortbildungen/die-wunderbare-welt-der-vogel/02_06_2023/buchung/4/create_order', {method: 'POST'});
      const responseData = await response.json();
      return responseData.token;
    },
    onApprove: async (data) => {
      const response = await fetch('/fortbildungen/die-wunderbare-welt-der-vogel/02_06_2023/buchung/4/capture_order', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({order_id: data.orderID})
      });

      console.log(response);
      // This returns a status code 204 and a json parsing error - no idea why.
      const responseData = await response.json();

      if (responseData.status === 'COMPLETED') {
        alert("Okay!");
      }
    }
  });
  paypal_button.render('#paypal-button-container');
});
