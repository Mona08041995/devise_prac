import consumer from "./consumer"

consumer.subscriptions.create("ChatRoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected to the chat room!");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
     $('#messages').append('<p class="received"> ' + data.message + '</p>')
  },

  speak(message) {
    this.perform('speak', { message: message })
  }
    // Called when there's incoming data on the websocket for this channel
  }
});

export default chatRoomChannel;
