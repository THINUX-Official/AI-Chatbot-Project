const form = document.getElementById('chatForm');
const input = document.getElementById('message');
const chatBox = document.getElementById('chatBox');

function addMessage(text, type) {
    const div = document.createElement('div');
    div.className = `message ${type}`;
    div.innerHTML = text;
    chatBox.appendChild(div);
    chatBox.scrollTop = chatBox.scrollHeight;
}

form.addEventListener('submit', async (e) => {
    e.preventDefault();
    const msg = input.value.trim();
    if (!msg) return;

    addMessage(msg, 'user');
    input.value = '';

    try {
        const response = await fetch('chat.php', {
            method: 'POST',
            headers: {'Content-Type': 'application/x-www-form-urlencoded'},
            body: `message=${encodeURIComponent(msg)}`
        });
        const data = await response.json();
        addMessage(data.reply, 'bot');
    } catch (error) {
        addMessage('Connection error. Please check XAMPP and database.', 'bot');
    }
});
