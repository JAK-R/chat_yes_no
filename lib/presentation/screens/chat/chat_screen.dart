

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

import '../../widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget{
  const ChatScreen({super.key});

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/e/e3/TwoDumbbells.JPG"),
          ),
        ),
        title: const Text('Mi amor <3'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

//En esta linéa lo que hacemos es buscar una instancia de chat provider
    final chatProvider = context.watch<ChatProvider>();




    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  
                  final message = chatProvider.messageList[index];

                  return (message.fromWho == FromWho.hers)
                          ? HerMessageBubble( message : message )
                          : MyMessageBubble( message : message);

                /** MyMessageBubble(message: message) es una forma de crear una instancia
                 *  del widget MyMessageBubble y pasar un objeto de mensaje como argumento al
                 *  constructor del widget. Esto permite que el widget acceda y utilice la información
                 *  del mensaje para mostrarla adecuadamente en la interfaz de usuario. */

                },)),
              MessageFieldBox(onValue: (value)=> chatProvider.sendMessage(value),)
          ],
        ),
      ),
    );
  }
}