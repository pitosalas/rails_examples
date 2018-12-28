App.value_update = App.cable.subscriptions.create("ValueUpdateChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
    console.log("value_update.js subscribed")
  },

  disconnected: function() {
    console.log("value_update.js disconnected")
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    console.log("value_update.js data")
    // Called when there's incoming data on the websocket for this channel
  },

  method1: function() {
    return this.perform('method1');
  },

  method2: function() {
    return this.perform('method2');
  }
});
