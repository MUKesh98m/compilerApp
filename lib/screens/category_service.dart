import 'dart:async';

import 'package:compiler/screens/model.dart';
import 'package:dio/dio.dart';

class CategoryService {
  final Dio _dio = Dio();

  FutureOr<LanguageListModel?> categoryList() async {
    try {
      final Response response = await _dio.get(
        'https://mlcompiler.000webhostapp.com/compile/getcourses.php',
      );
      print('categorylist ----->  ${response.data}');

      return LanguageListModel.fromJson(response.data);
    } catch (e) {
      print('${e}');
    }
    return null;
  }
}
