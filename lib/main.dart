import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

import 'config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ChatProvider())
      ],
      child: MaterialApp(
        title: 'Ye No App',
        debugShowCheckedModeBanner: false,
        //Lo que queremos lograr es centralizar el control de los temas en la aplicación.
        //Para eso creamos un nuevo archivo donde vamos a controlar los parametros.
         theme: AppTheme( selectedColor: 2 ).theme(),
        home: const ChatScreen(),
        
      ),
    );
  }
}
