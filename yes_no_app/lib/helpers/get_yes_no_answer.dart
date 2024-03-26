import 'package:dio/dio.dart';
import 'package:yes_no_app/entities/message.dart';
import 'package:yes_no_app/models/yes_no_model.dart';

class GetYesNoAnswer {

  final _dio = Dio();

  Future<Message> getAnswer() async {

    final response = await _dio.get('https://yesno.wtf/api');
    // print(response.data);
    // throw Exception('Failed to load answer');

    final YesNoModel yesNoModel = YesNoModel.fromJsonMap(response.data);

    // Map<String, dynamic> json = {
    //   "answer": "yes",
    //   "forced": false,
    //   "image": "https://yesno.wtf/assets/yes/2-5df1b403f2654fa77559af1bf2332d7a.gif"
    // };

    return yesNoModel.toMessageEntity();

    // return Message(
    //   text: yesNoModel.answer,
    //   fromWho: FromWho.other,
    //   imageUrl: yesNoModel.image
    // );
    // return Message(
    //   text: response.data['answer'],
    //   fromWho: FromWho.other,
    //   imageUrl: response.data['image']
    // );
  }
}