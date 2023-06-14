
import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_model.dart';




//Esta es toda la petición HTTP
class GetYesNoAnswer {

  final _dio = Dio();


  Future<Message> getAnswer() async { 

    final response = await _dio.get('https://yesno.wtf/api'); //Clase 12. Todo el objetivo de la petición HTTP se resolvio con DIO.

    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();


  //Codigo incial
  /*return Message(text: response.data['answer'],
   fromWho: FromWho.hers,
   imageUrl: response.data['image'],
   );*/

   /* Reemplazamos este codigo con el que creamos en models (clase 12)
///Codigo Optimizado
   return Message(
    text: yesNoModel.answer,
   fromWho: FromWho.hers,
   imageUrl: yesNoModel.image
   );*/
  }


}