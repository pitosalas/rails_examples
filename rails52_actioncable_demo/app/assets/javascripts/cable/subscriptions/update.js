// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
App.updates = App.cable.subscriptions.create(
  { channel: "UpdateChannel"},
  {
    received: function(data) {
      console.log("####### receveived. This is where the js goes to update the field.")
    }
  },
  { connected: function() {console.log("####connected.js")}}
 );

// App.update = App.cable.subscriptions.create("UpdateChannel", 
//   {
//     received(data) {
//       console.log("!!! receveived. This is where the js goes to update the field.")
//     }
//   },
//   { connected() {console.log("!!!#connected.js")}}

// );