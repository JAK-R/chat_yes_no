

enum FromWho {me, hers}

class Message {

  final String text;
  final String? imageUrl;
  final FromWho fromWho;


Message({
  required this.text, 
this. imageUrl, 
required this.fromWho
});
}

///Esta clase se utiliza para representar un mensaje en una aplicación o sistema de chat.
/// Al crear una instancia de esta clase y proporcionar los valores adecuados para 
/// las propiedades, puedes crear un objeto de mensaje completo que contiene el texto
///  del mensaje, una URL de imagen (si está disponible) y la información sobre quién 
/// envió el mensaje.

///La clase "Message" es una estructura de datos que se puede utilizar para almacenar y
/// manipular información relacionada con los mensajes en un programa. Por ejemplo,
///  podrías tener una lista de objetos "Message" para representar una conversación
///  completa entre dos personas en una aplicación de chat.

///En resumen, este código define una clase "Message" que sirve como una estructura
/// de datos para representar mensajes en un sistema de chat y proporciona una forma de
///  crear y manipular objetos de mensaje con texto, imágenes y la información sobre
///  quién envió el mensaje.
 

///  El constructor te permite crear un objeto "Message" y asignar valores a sus
///  propiedades en el momento de la creación del objeto. Esto es útil porque no
///  tendrías que asignar cada propiedad por separado después de crear el objeto.
///  Puedes pasar los valores directamente al constructor y el objeto se inicializará
///  correctamente.
/// 
/// Aquí hay un ejemplo de cómo se podría utilizar el constructor
///  para crear un objeto "Message":
/*
Message myMessage = Message(
  text: "Hola, ¿cómo estás?",
  imageUrl: "https://example.com/image.jpg",
  fromWho: FromWho.me,
);
*/

/**
 * En este ejemplo, se crea un nuevo objeto "Message" llamado "myMessage". 
 * Se proporcionan los valores para las propiedades "text", "imageUrl" y "fromWho" al
 *  constructor, y el objeto se inicializa con esos valores.

Al utilizar un constructor, puedes asegurarte de que los objetos de la clase "Message"
 se creen correctamente con los valores adecuados desde el principio. Esto facilita la
  creación y manipulación de objetos de mensaje en tu programa y ayuda a mantener un
   código más limpio y legible.
 */