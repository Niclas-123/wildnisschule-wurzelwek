document.addEventListener("DOMContentLoaded", () => {
  const paypalContainer = document.getElementById("paypal-button-container");
  // Leave, if not on payment page
  if (!paypalContainer) {
    return;
  }

  paypal.Buttons({
    env: 'sandbox', // Valid values are sandbox and live.
    createOrder: async () => {
      const response = await fetch('http://localhost:3000/wanderungen/krauterwanderung/05_02_2023/buchung/23/create_order', {method: 'POST'});
      const responseData = await response.json();
      return responseData.token;
    },
    onApprove: async (data) => {
      const response = await fetch('http://localhost:3000/wanderungen/krauterwanderung/05_02_2023/buchung/23/capture_order', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({order_id: data.orderID})
      });
      const responseData = await response.json();
      if (responseData.status === 'COMPLETED') {
        alert("Okay!");
      } else {
        alert("Not Okay!");
      }
    }
  }).render('#paypal-button-container');
});
