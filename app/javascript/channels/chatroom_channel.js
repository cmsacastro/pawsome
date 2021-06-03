import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        console.dir(messagesContainer.lastElementChild.id); // called when data is broadcast in the cable
        messagesContainer.insertAdjacentHTML('beforeend', data);
        // get the message container
        // const newMessage = document.querySelector(messagesContainer.lastElementChild.id);
        // newMessage.scrollIntoView(false); // this was suggested by a TA and way too complicated
        window.scrollTo(0,document.body.scrollHeight);
        // TODO: render notification on the navbar
      },
    });
  }
}

export { initChatroomCable };
