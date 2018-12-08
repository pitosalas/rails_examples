App.cable.subscriptions.create({
  channel: "UpdateChannel",
  key: "General",
  value: "yes"
}, {
  received(data) {
    console.log("receveived")
  },

});