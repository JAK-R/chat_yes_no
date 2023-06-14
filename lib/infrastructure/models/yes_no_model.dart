
///Nuevo Codigo obtenido de quickType
  import 'dart:convert';

import 'package:yes_no_app/domain/entities/message.dart';


class YesNoModel {
    final String answer;
    final bool forced;
    final String image;

    YesNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });

    factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };

//Maper que voy a utilizar
    Message toMessageEntity() => Message(
      text: answer == 'yes' ? 'Si' : 'No',
       fromWho: FromWho.hers,
       imageUrl: image,
       );
}
  
  
  
/////////////////////////////////////////////
  
  ///CODIGO QUE HICIMOS ANTERIORMENTE
  
  ///Tod0 este codigo es para crear una istancia de yes o no model, este modelo tiene por
  ///objetivo mapear la respuesta.
  ///Cuado resibo esa respuesta, creo esta instancia 

/*class YesNoModel {

  String answer;
  bool forced;
  String image;


  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image
  });

  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => 
    YesNoModel(
        answer: json['answer'],
        forced: json['forced'],
        image: json['image']
      );
}*/