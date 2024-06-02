import 'package:flutter/material.dart';
import 'package:nomadai/model/chat_model.dart';

class AIChatScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       centerTitle: true,
        title: const Text("Ask nomadAi! 🥧"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final message = chats[index];
                return Align(
                  alignment: message.isSentByHuman ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: message.isSentByHuman ? Colors.blue[100] : Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(message.message),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.blue),

                  onPressed: () {
                    
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

