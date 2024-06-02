class ChatMessage {
  final String message;
  final bool isSentByHuman;

  ChatMessage({
    required this.message,
    required this.isSentByHuman,
  });
}


List<ChatMessage> chats = [
  ChatMessage(message: "Hello, how can I assist you today?", isSentByHuman: false),
  ChatMessage(message: "Can you tell me about the weather?", isSentByHuman: true),
  ChatMessage(message: "Sure, today's weather is sunny with a high of 25°C.", isSentByHuman: false),
  ChatMessage(message: "Thank you!", isSentByHuman: true),
  ChatMessage(message: "You're welcome!", isSentByHuman: false),
  ChatMessage(message: "Can you recommend some tourist attractions in Ghana?", isSentByHuman: true),
  ChatMessage(message: "Certainly! You should visit Kakum National Park, Cape Coast Castle, and Mole National Park.", isSentByHuman: false),
  ChatMessage(message: "That sounds interesting! What activities can I do at Mole National Park?", isSentByHuman: true),
  ChatMessage(message: "At Mole National Park, you can go on safari tours to see elephants, antelopes, and various bird species.", isSentByHuman: false),
  ChatMessage(message: "Are there any good beaches in Ghana?", isSentByHuman: true),
  ChatMessage(message: "Yes, Ghana has beautiful beaches like Labadi Beach, Kokrobite Beach, and Busua Beach.", isSentByHuman: false),
  ChatMessage(message: "Great! What are some popular cultural experiences?", isSentByHuman: true),
  ChatMessage(message: "You can experience the vibrant festivals, visit traditional villages, and explore historical sites like the Cape Coast and Elmina Castles.", isSentByHuman: false),
  ChatMessage(message: "Thank you for the information!", isSentByHuman: true),
  ChatMessage(message: "You're welcome! Have a great trip!", isSentByHuman: false),
];

