import 'package:dio/dio.dart';
import 'package:yes_no_app/entities/message.dart';

class GetYesNoAnswer {

  final _dio = Dio();

  Future<Message> getAnswer() async {

    final response = await _dio.get('https://yesno.wtf/api');
    print(response.data);
    // throw Exception('Failed to load answer');

    return Message(
      text: response.data['answer'],
      fromWho: FromWho.other,
      imageUrl: response.data['image']
    );
  }
}