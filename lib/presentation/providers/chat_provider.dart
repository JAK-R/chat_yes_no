


import 'package:flutter/material.dart';
import 'package:yes_no_app/helpers/get_yes_no_answer.dart';

import '../../domain/entities/message.dart';



//En pocas palabras ChangeNotififier notifica cuando hay cambios
class ChatProvider extends ChangeNotifier{


  final ScrollController chatScrollController = ScrollController();
  final getYesNoAnswer =  GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'Hola amor!', fromWho: FromWho.me),
    Message(text: 'Ya regresaste del trabajo?', fromWho: FromWho.me),
  ];

//Clase 9
  Future<void> sendMessage( String text) async{
    if( text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    if(text.endsWith('?')){
      await herReply();
    }

  notifyListeners();
  moveScrollToBottom();
  }

  Future<void> herReply() async{
    final herMessage = await getYesNoAnswer.getAnswer();
messageList.add(herMessage);
notifyListeners();

moveScrollToBottom();
  }


// Es una función asincrona declarada como sendMessage.
///En esta decimos que newMessage es igual a Message donde el texto es igual al texto (/*
/// Seguramente vamos a reemplazar ese texto por algo editable/), y el parametro de quien lo manda
/// luego ese nuevo mensaje se agregara a la lista.


 void moveScrollToBottom() async{

  await Future.delayed(const Duration(milliseconds: 100));

  chatScrollController.animateTo(
    chatScrollController.position.maxScrollExtent,
     duration: const Duration(microseconds: 300),
      curve: Curves.easeOut);
 }
}