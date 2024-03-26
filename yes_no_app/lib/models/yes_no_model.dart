
// FORM 2 FROM https://app.quicktype.io/
// To parse this JSON data, do
//
//     final yesNoModel = yesNoModelFromJson(jsonString);

// import 'dart:convert';

// YesNoModel yesNoModelFromJson(String str) => YesNoModel.fromJson(json.decode(str));

// String yesNoModelToJson(YesNoModel data) => json.encode(data.toJson());

import 'package:yes_no_app/entities/message.dart';

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

    Message toMessageEntity() => Message(
        text: answer == 'yes' ? 'Sí' : 'No',
        fromWho: FromWho.other,
        imageUrl: image
    );

}
    
// FORM 1

// class YesNoModel {
//   final String answer;
//   final bool forced;
//   final String image;

//   YesNoModel({
//     required this.answer, 
//     required this.forced, 
//     required this.image
//   });

//   // factory es una palabra clave que se utiliza para implementar una fábrica de constructores
//   // cuando se llama a ese constructor con nombre se va a crear una instancia
//   factory YesNoModel.fromJsonMap(Map<String, dynamic> json) {
//     return YesNoModel(
//       answer: json['answer'],
//       forced: json['forced'],
//       image: json['image'],
//     );
//   }
// }



 