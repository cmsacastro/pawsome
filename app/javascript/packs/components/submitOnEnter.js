export const submitOnEnter = () => {
  document.getElementById('message_body')
    .addEventListener('keydown', function(event) {
        if (event.code === 'Enter')
        {
            event.preventDefault();
            document.getElementById('new_message').submit();
        }
    });
};
