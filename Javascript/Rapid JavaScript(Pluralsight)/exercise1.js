var orderId = 9001.01;
console.log(typeof orderId);
//number

var orderId = "hello";
console.log(typeof orderId);
// string

var isActive = true;
console.log(typeof isActive);
//boolean
var isOk;
console.log(typeof isOk);
// undefined

var fruits = ['banana', 'apple', 'pear'];
console.log(typeof fruits);
//object

var order = null;
console.log(typeof order);
// object

function colors() {
};
console.log(typeof colors);
//function

console.log("-------------------------")



// ******** FUNCTIONS *********
//pass argument to a function


function printOrder(orderId) {
  console.log('Printing order: ' + orderId);
};
printOrder('1000');
// Printing order: 1000



function calcTotalPrice(quantity, price) {
  console.log('Total price: ' + (quantity * price));
};
calcTotalPrice(2, 8);
// Total price: 16



function calcTotalPrice(quantity, price) {
  return quantity * price;
};
var totalPrice = calcTotalPrice(3, 3.00);
console.log(totalPrice);
// 9




// ******** IF AND SWITCH STAEMENTS *********

var wallet = 50;
var price2 = 45;
canBuy = false;

if (wallet >= price2)
  canBuy = true;
console.log("canBuy");
// canBuy


var orderType = 'business';
var shipMethod;

if(orderType == 'business')
  shipMethod = 'FedEx';
else if (orderType == 'personal')
  shipMethod = 'UPS';
else
  shipMethod = 'DPD';
console.log(shipMethod);
//FedEx


var food = 'pasta';
var cusine;

switch(food) {
  case 'pasta':
    cusine = 'Italian';
    break;
  case 'sushi':
    cusine = 'Japanese';
    break;
  default:
    cusine = 'Greek';
}
console.log(cusine);
// Italian



var orderTotal = 99.99;
var discount;

switch(true) {
    case orderTotal >= 50 && orderTotal < 75:
      discount = 10;
      break;
    case orderTotal >=75 && orderTotal < 100:
      discount = 15;
      break;
    case orderTotal >= 100:
      discount = 30;
      break;
    default:
      discount = 0;
}
console.log('Discount is ' + discount + '%.');
// Discount is 15%.
