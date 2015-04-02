var Hello = React.createClass({
  mixins: [Backbone.React.Component.mixin],
  render: function(){
    return (<h1>{this.state.model.foo}!</h1>);
  }
});

module.exports = Hello;