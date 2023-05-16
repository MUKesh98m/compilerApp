import 'package:compiler/screens/model.dart';
import 'package:flutter/material.dart';

import 'category_service.dart';

class HomeScreenController extends ChangeNotifier {
  LanguageListModel? languageListModel;
  categoryList() async {
    // languageListModel = await CategoryService().categoryList();
    notifyListeners();
    return languageListModel;
  }
}
