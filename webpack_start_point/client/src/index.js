var React = require('react');
var ReactDOM = require('react-dom');
var PiggyBank = require('./components/PiggyBank.jsx');

window.onload = function() {

  var appDiv = document.getElementById('app');

  ReactDOM.render(<PiggyBank title="PIGGY BANK ヽ(｀(00)´)ノ" owner="James" depositAmount={1}/>, appDiv);
};

