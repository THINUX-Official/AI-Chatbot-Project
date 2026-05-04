CREATE DATABASE IF NOT EXISTS ai_chatbot_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE ai_chatbot_db;

CREATE TABLE IF NOT EXISTS knowledge_base (
  id INT AUTO_INCREMENT PRIMARY KEY,
  question_pattern VARCHAR(255) NOT NULL,
  answer TEXT NOT NULL,
  category VARCHAR(100) DEFAULT 'general',
  is_learned TINYINT(1) DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS chat_history (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_message TEXT NOT NULL,
  bot_reply TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS travel_packages (
  id INT AUTO_INCREMENT PRIMARY KEY,
  package_name VARCHAR(150) NOT NULL,
  duration VARCHAR(50) NOT NULL,
  price VARCHAR(50) NOT NULL,
  places TEXT NOT NULL,
  description TEXT NOT NULL,
  status VARCHAR(20) DEFAULT 'active'
);

INSERT INTO knowledge_base (question_pattern, answer, category, is_learned) VALUES
('hello hi hey', 'Hello! Welcome to Ceylon Travel Assistant. How can I help you plan your Sri Lanka tour?', 'greeting', 0),
('good morning', 'Good morning! I can help you with Sri Lanka tour packages, destinations, prices and booking details.', 'greeting', 0),
('thank you thanks', 'You are welcome! Let me know if you need more travel help.', 'greeting', 0),
('bye goodbye', 'Goodbye! Have a wonderful day and safe travels.', 'greeting', 0),
('contact phone whatsapp', 'You can contact us via WhatsApp: 0775553987 or Email: leisurepalsl@gmail.com.', 'contact', 0),
('booking book reserve', 'To book a tour, please send your travel date, number of guests, pickup location and preferred package.', 'booking', 0),
('sri lanka best places destinations', 'Top Sri Lanka destinations include Sigiriya, Kandy, Ella, Yala, Galle Fort, Mirissa, Nuwara Eliya and Colombo.', 'destination', 0),
('sigiriya lion rock', 'Sigiriya is a UNESCO World Heritage rock fortress and one of the most famous attractions in Sri Lanka.', 'destination', 0),
('ella nine arch bridge', 'Ella is famous for Nine Arch Bridge, Little Adam’s Peak, tea estates and beautiful mountain views.', 'destination', 0),
('yala safari elephant leopard', 'Yala National Park is popular for safari tours, elephants, crocodiles, birds and leopards.', 'destination', 0),
('galle fort', 'Galle Fort is a historic UNESCO site with colonial buildings, museums, cafes and ocean views.', 'destination', 0),
('airport pickup drop', 'Yes, airport pickup and drop can be arranged based on your tour package and arrival time.', 'service', 0),
('food breakfast lunch dinner', 'Meals depend on the package. Some tours include breakfast, and lunch or dinner can be added on request.', 'service', 0);

INSERT INTO travel_packages (package_name, duration, price, places, description) VALUES
('Sri Lanka Classic Tour', '7 Days / 6 Nights', 'USD 495', 'Sigiriya, Kandy, Nuwara Eliya, Ella, Yala, Galle', 'A balanced Sri Lanka tour covering culture, mountains, wildlife and beach areas.'),
('Hill Country Escape', '4 Days / 3 Nights', 'USD 280', 'Kandy, Nuwara Eliya, Ella', 'Perfect for tea plantations, waterfalls, cool climate and mountain scenery.'),
('Wildlife & Beach Tour', '5 Days / 4 Nights', 'USD 350', 'Yala, Mirissa, Galle, Hikkaduwa', 'Best for safari, whale watching, beaches and southern coastal attractions.'),
('Colombo Tuk Tuk City Tour', 'Half Day', 'USD 35', 'Colombo Fort, Pettah, Galle Face, Gangaramaya', 'A fun city tour by tuk tuk covering Colombo highlights and local experiences.');
