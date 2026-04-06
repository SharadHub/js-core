const cart = ["mouse", "keyboard", "monitor"];

createOrder(cart)
  .then(function (orderId) {
    console.log(orderId);
    return orderId;
  })
  .catch(function (err) {
    // put catch function here to procceed to payment even if cart is failed.
    console.log(err.message);
  })
  .then(function (orderId) {
    return proceedToPayment(orderId);
  })
  .then(function (paymentInfo) {
    console.log(paymentInfo);
  })
  .catch(function (err) {
    console.log(err.message);
  })
  .then(function (orderId) {
    console.log("I will be called anyhow");
  });

function createOrder(cart) {
  const pr = new Promise(function (resolve, reject) {
    // createOrder
    //validateCart
    // orderId
    if (!validateCart(cart)) {
      const err = Error("Cart is not valid");
      reject(err); // .catch
    }
    //logic to create order
    const orderId = "12345";
    if (orderId) {
      setTimeout(function () {
        resolve(orderId); // .then 
      }, 5000);
    }
  });
  return pr;
}

function proceedToPayment(orderId) {
  return new Promise(function (resolve, reject) {
    resolve("Payment Successful");
  });
}

function validateCart() {
  return false;
}
