

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget{

  final Message message;

  const HerMessageBubble({super.key, required this.message});


  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color:colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(message.text, style: TextStyle(color: Colors.white),),
          ),
        ),
        SizedBox(height: 5,),

        _ImageBurble( message.imageUrl! ),

        SizedBox(height: 10)
      ],

    );
  }
}


class _ImageBurble extends StatelessWidget {

  final String imageUrl;

   const _ImageBurble ( this.imageUrl );

  @override
  Widget build(BuildContext context) {
    final  size = MediaQuery.of(context).size;

    ///MediaQuery sirve para tomar las medidas del telefono

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl,
          height: 150,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            
            if ( loadingProgress == null) return child;

            return Container(
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: const Text('Mi vida está enviando una imagen'),
            );

          },
        ));
    }
}