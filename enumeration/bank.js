var Bank = function() {
  this.accounts = [1, 2, 3, 4];
  this.total = 0;
}

Bank.prototype = {
  calculateTotal: function() {
    this.total = 0;
    this.accounts.forEach(function(account) {
      this.total += account;
      console.log(this);
    })
  }
}

var bank1 = new Bank();
// console.log("total: ", bank1.total);
bank1.calculateTotal();
// console.log("new total: ", bank1.total);