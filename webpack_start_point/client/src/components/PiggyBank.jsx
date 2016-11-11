// ##Tasks:
// - Add an owner property to the piggy bank
// - Add a 'withdraw' button which decreases the total.
// - Add a depositAmount property - pass in a value which depositing or withdrawing will change the total by.

var React = require('react');

var PiggyBank = React.createClass({

  getInitialState: function() {
    console.log("Getting initial state");
    return {total: 0}
  },

  propTypes: {
    title: React.PropTypes.string.isRequired,
    owner: React.PropTypes.string.isRequired,
    depositAmount: React.PropTypes.number.isRequired
  },

  addToSavings: function() {
    this.setState({
      total: this.state.total + this.props.depositAmount
    })
  },

  withdrawFromSavings: function() {
    this.setState({
      total: this.state.total - this.props.depositAmount
    })
  },

  compoenntWillRecieveProps: function() {
    console.log("will get props")
  },

  componentWillMount: function() {
    console.log("Component WILL Mount");
    var button = document.querySelector('button');
    console.log("Button: ", button);
  },

  componentDidMount: function() {
    console.log("Component DID mount");
    var button = document.querySelector('button');
    console.log("Button: ", button);
  },

  componentWillUpdate: function(nextProps, nextState) {
    console.log("Component WILL update");
    console.log("Next s:", nextState);
    console.log("Next p:", nextProps);
  },

  componentDidUpdate: function(prevProps, prevState) {
    console.log("Component DID update");
    console.log("Prev s:", prevState);
    console.log("Prev p:", prevProps);
  },

  componentWillUnount: function() {
    console.log("Component WILL Unmount");
    var button = document.querySelector('button');
    console.log("Button: ", button);
  },

  componentDidUnount: function() {
    console.log("Component DID Unmount");
    var button = document.querySelector('button');
    console.log("Button: ", button);
  },

  render: function() {
    console.log("Rendering...")
    return (
      <div>
      <h1>{this.props.title}</h1>
      <h2>Owner: {this.props.owner}</h2>
      <p>Total savings: £{this.state.total}</p>
      <button onClick={this.addToSavings}>Deposit change!</button>
      <button onClick={this.withdrawFromSavings}>Withdraw</button>
      </div>
    )
  }
});

module.exports = PiggyBank;