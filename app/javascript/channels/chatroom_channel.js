import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.conversationId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        // called when data is broadcast in the cable
        const response = JSON.parse(data);
        const senderId = response.user_id;
        const currentUserId = +messagesContainer.dataset.currentUserId;

        messagesContainer.insertAdjacentHTML('beforeend', response.message);
        window.scrollTo(0,document.body.scrollHeight);

        const messages = messagesContainer.querySelectorAll(".message-container");
        // querySelector allows you to apply classList
        const lastMessage = messages[messages.length - 1];

        if (senderId !== currentUserId) {
          lastMessage.classList.add("new-message");
          console.log(senderId, currentUserId);
        };
      },
    });
  }
}

export { initChatroomCable };
