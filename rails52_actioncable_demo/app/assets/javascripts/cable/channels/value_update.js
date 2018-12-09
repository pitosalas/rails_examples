App.value_update = App.cable.subscriptions.create("ValueUpdateChannel", {
  connected: function() {
    console.log("value_update.js connected")
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    console.log("value_update.js received")
  },

  method1: function() {
    return this.perform('method1');
  },

  method2: function() {
    return this.perform('method2');
  }
});
