// validate cart
// create Order
// reserve inventory
// process payment
// generate invoice
// notify user
// update wallet

const cart = [
    {id:1, name:"Laptop", price:50000, stock:2},
    {id:2, name:"Mouse", price:5000, stock:3},
    {id:3, name:"Chair", price:10000, stock:5},
    {id:4, name:"Keyboard", price:3000, stock:20},
    {id:5, name:"Multiplug", price:500, stock:12}
];

const wallet = {
    balance : 20000
};


validateCart(cart)
.then(function (){
    return createOrder;
})
.then(function(){
    return reserveInventory;
})
.then(function(){
    return processPayment();
})
.then(function(){
    return generateInvoice();
})
.then(function(){
    return notifyUser();
})
.then(function(){
    return updateWallet();
})