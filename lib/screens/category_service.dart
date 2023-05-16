import 'dart:async';
import 'dart:convert';

import 'package:compiler/screens/model.dart';
import 'package:dio/dio.dart';

class CategoryService {
  final Dio _dio = Dio();
/*

  FutureOr<LanguageListModel?> categoryList() async {
    try {
      final Response response =
          await _dio.post('https://api.github.com/user/repos',
              data: {
                'name': 'demo1',
                'private': false,
              },
              options: Options(headers: {
                'Authorization': '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',
                'Content-Type': 'application/json',
              }));

      print('categorylist ----->  ${response.data}');
      if (response.statusCode == 200) {
        print("Created");
      } else {
        print("error");
      }
    } catch (e) {
      print('assas${e}');
    }
    return null;
  }
*/

}
