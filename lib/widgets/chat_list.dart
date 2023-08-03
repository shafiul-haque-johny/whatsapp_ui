import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/widgets/my_message_cart.dart';
import 'package:whatsapp_ui/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]["isMe"] == true) {
            // MyMessage ->Card
            return MyMessageCart(
                message: messages[index]["text"].toString(),
                date: messages[index]["time"].toString());
          } else {
            // SenderMessage ->Card
            return SenderMessageCart(
                message: messages[index]['text'].toString(),
                date: messages[index]['time'].toString());
          }
        });
  }
}
