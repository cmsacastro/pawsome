export const submitOnEnter = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
  document.getElementById('message_body')
    .addEventListener('keydown', function(event) {
        if (event.code === 'Enter')
        {
            event.preventDefault();
            document.getElementById('new_message').submit();
            window.scrollTo(0,document.body.scrollHeight);

        }
    });
  }
};
