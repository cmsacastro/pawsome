import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.conversationId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        // console.log(data); // called when data is broadcast in the cable
        const response = JSON.parse(data);
        console.log(response.user_id);
        messagesContainer.insertAdjacentHTML('beforeend', response.message);
        window.scrollTo(0,document.body.scrollHeight);
        const messages = messagesContainer.querySelectorAll(".message-container");
        console.log(messages);
        // this loop doesn't work
        for (let i = 0; i < messages.length; i++) {
          message = messages[i - 1];
          const senderId = response.user_id;
          const currentUserId = +messagesContainer.dataset.currentUserId;
          if (senderId !== currentUserId) {
          message.classList.add("received");
        } else {
          message.classList.add("sent");
        };
         };
        const lastMessage = messages[messages.length - 1];
        const senderId = response.user_id;
        const currentUserId = +messagesContainer.dataset.currentUserId;
        console.log(senderId, currentUserId);
        if (senderId !== currentUserId) {
          lastMessage.classList.add("new-message");
        };
        // TODO: add classlist if the message is either authored or received
      },
    });
  }
}

export { initChatroomCable };

// try to build out a forEach function
sentOrReceived(value, index, array) {

};
