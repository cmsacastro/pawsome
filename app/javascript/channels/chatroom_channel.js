import consumer from "./consumer";

// TODO: Notify the recipient- when (there is a new message && they are NOT in the chatroom.)
// Can we use the 'else' to this 'if' statement to open the notification channel to recieve popup notifications?
// Could we also create a dynamic icon on the Messages text on the navbar?
// Can we use the 'read' behavior of the message to decide whether the notification icon shows up?

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.conversationId;
    window.scrollTo(0,document.body.scrollHeight);

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        // called when data is broadcast in the cable
        const response = JSON.parse(data);
        const senderId = response.user_id;
        const currentUserId = +messagesContainer.dataset.currentUserId;
        console.log(data);
        messagesContainer.insertAdjacentHTML('beforeend', response.message);
        window.scrollTo(0,document.body.scrollHeight);

        const messages = messagesContainer.querySelectorAll(".message-container");
        // querySelector allows you to apply classList
        const lastMessage = messages[messages.length - 1];
        console.log(lastMessage);
        if (senderId !== currentUserId) {
          lastMessage.classList.remove("sent");
          lastMessage.classList.add("new-message");
          setTimeout( () => {
            lastMessage.classList.remove("new-message");
            lastMessage.classList.add("received");
          },1000);
          console.log(senderId, currentUserId);
        };
      },
    });
  }
}

export { initChatroomCable };
