// ##Enumerable Lab

// Create Bank using enumerable lodash methods.

// Bank should be able to:
//   Add an account
//   Find account by name owner name.
//   Find the largest account.
//   Find the total account value.
//   Find the average value.
//   Find the total value for an account type.

// Further:  Write our own map, using forEach

var _ = require("lodash")

var Bank = function(name) {
  this.name = name;
  this.account = [];
}

Bank.prototype = {
  addAccount: function(account) {
    this.account.push(account);
  },
  searchByName: function(account) {
    _.find(this.account, function(item) {
      return item.name === account.name
    })
  },
  findAvarageValue: function() {
    _.forEach(this.account, function(item) {
      return item.value / this.account.length
    })

 }
}
//   // findLargestAccount: function() {
//   //   var account_.map(this.account, function(item) {

//   //   })
//   // }
//   findName: function(account) {
//     return account.name === 

//   }
// }

var Account = function(name, type, value) {
  this.name = name;
  this.type = type;
  this.value = value;
}
// module.exports = Bank;

module.exports.Bank = Bank;
module.exports.Account = Account;
