var Hello = require('components/Hello');

var model = require('models/sample');

var Application = function(){
  this.model = model;
}

Application.prototype.start = function(){
  React.render(<Hello model={model} />, document.getElementById('example'));
  return this;
}

Application.prototype.update = function(text){
  // Update the UI
  model.set('foo', text || 'Hello world!');  
  return this;
}

module.exports = new Application();