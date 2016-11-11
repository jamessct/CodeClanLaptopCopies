var Account = require('../llodash').Account;
var Bank = require('../llodash').Bank;

// var Bank = require('../llodash')
var assert = require('assert')

describe("Bank", function() {
  it("should have a name", function() {
    var rbs = new Bank ("RBS");
    assert.equal("RBS", rbs.name)
  })
  it("should be able to add account", function() {
    var rbs = new Bank ("RBS");
    var jim = new Account ("Jim", "personal", 300);
    rbs.addAccount(jim);
    assert.deepEqual([ { name: 'Jim', type: 'personal', value: 300 } ], rbs.account)
  }),
  it("should be able to search for acc by name", function() {
    var rbs = new Bank ("RBS");
    var jim = new Account ("Jim", "personal", 300);
    rbs.addAccount(jim);
    assert.equal(true, rbs.searchByName(jim))
  })
  it("should give average value of accounts", function() {
    var rbs = new Bank ("RBS");
    var jim = new Account ("Jim", "personal", 300);
    assert.equal(300, rbs.findAverageValue())
  })
})

describe("Account", function() {
  it("should have a name and value", function() {
    var jim = new Account ("Jim", 300);
    assert.equal("Jim", jim.name);
    assert.equal(300, jim.value) 
  })
})