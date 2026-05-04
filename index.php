<?php include 'includes/db.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AI Travel Chat Bot</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div class="page">
        <div class="left-panel">
            <div class="badge">AI Coursework 2026</div>
            <h1>Ceylon Travel Assistant</h1>
            <p>An AI based chatbot for Sri Lanka travel and tourism support.</p>
            <ul>
                <li>Natural Language Interface</li>
                <li>Inference Engine</li>
                <li>MySQL Knowledge Base</li>
                <li>Simple Learning Feature</li>
            </ul>
            <a class="admin-link" href="admin.php">Admin Panel</a>
        </div>

        <div class="chat-card">
            <div class="chat-header">
                <div>
                    <h2>Travel Chat Bot</h2>
                    <span>Ask about packages, destinations, booking or contact.</span>
                </div>
                <div class="online">Online</div>
            </div>
            <div id="chatBox" class="chat-box">
                <div class="message bot">Hello! I am your Sri Lanka Travel Assistant. How can I help you?</div>
            </div>
            <form id="chatForm" class="chat-form">
                <input type="text" id="message" placeholder="Type your message..." autocomplete="off" required>
                <button type="submit">Send</button>
            </form>
            <div class="help-text">Try: “show packages”, “best places in Sri Lanka”, “contact number”</div>
        </div>
    </div>
    <script src="assets/js/chat.js"></script>
</body>
</html>
