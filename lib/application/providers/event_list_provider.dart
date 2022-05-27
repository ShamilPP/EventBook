import 'package:flutter/cupertino.dart';

class EventListProvider extends ChangeNotifier {
  bool isGridView = false;

  void setGridView() {
    isGridView = !isGridView;
    notifyListeners();
  }
}
