document.addEventListener('DOMContentLoaded', () => {
  const form = document.getElementById('chatForm');
  const input = document.getElementById('message');
  const chatBox = document.getElementById('chatBox');
  function addMessage(text, type){
    const div = document.createElement('div');
    div.className = 'message ' + type;
    div.innerHTML = text;
    chatBox.appendChild(div);
    chatBox.scrollTop = chatBox.scrollHeight;
  }
  form.addEventListener('submit', async (e) => {
    e.preventDefault();
    const message = input.value.trim();
    if(!message) return;
    addMessage(message.replace(/</g,'&lt;').replace(/>/g,'&gt;'), 'user');
    input.value = '';
    try{
      const data = new FormData();
      data.append('message', message);
      const res = await fetch('chat.php', {method:'POST', body:data});
      const json = await res.json();
      addMessage(json.reply, 'bot');
    } catch(err){
      addMessage('Connection error. Please try again.', 'bot');
    }
  });
});
