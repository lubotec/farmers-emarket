
// function handlePlusClick() {
//   let infoDiv = this.parentElement.parentElement
//   let quantity = infoDiv.querySelector('.quantity')
//   quantity.innerHTML = (parseInt(quantity.innerHTML, 10) + 1).toString()
//   changeTotal(infoDiv, quantity.innerHTML)
//   changeSummary()
// };

// function handleMinusClick() {
//   let infoDiv = this.parentElement.parentElement
//   let quantity = infoDiv.querySelector('.quantity')
//   if (parseInt(quantity.innerHTML, 10) > 0) {
//     quantity.innerHTML = (parseInt(quantity.innerHTML, 10) - 1).toString()
//   }
//   changeTotal(infoDiv, quantity.innerHTML)
//   changeSummary()
// };

// function changeTotal(infoDiv, quantity) {
//   let price = infoDiv.querySelector('.price')
//   let totalPrice = infoDiv.querySelector('.total-price')
//   totalPrice.innerHTML = price.innerHTML * quantity
// }

// function changeSummary() {
//   let subtotal = document.querySelector('.subtotal')
//   let shipping = document.querySelector('.shipping')
//   let total_and_shipment = document.querySelector('.total_and_shipment')
//   let total = 0
//   cards.forEach((card) => {
//     const totalPrice = card.querySelector('.total-price')
//     total = total + parseInt(totalPrice.innerHTML, 10)
//   })
//   subtotal.innerHTML = total.toString()
//   if (total > 50) {
//     shipping.innerHTML = "50"
//     console.log()
//   } else {
//     shipping.innerHTML = (Math.round((total * 0.15) * 100) / 100).toString()
    
//   }
//   console.log(total)
  
//   total_and_shipment.innerHTML = (total + parseInt(shipping.innerHTML)).toString()
  
// }

// function initCartForm() {
//   const cards = document.querySelectorAll('.card-product');
//   cards.forEach((card) => {
//     card.querySelector('.plus').addEventListener('click', handlePlusClick)
//     card.querySelector('.minus').addEventListener('click', handleMinusClick)
//   })

// }
 
//  export { initCartForm }