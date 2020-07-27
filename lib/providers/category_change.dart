import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CategoryChange with ChangeNotifier, DiagnosticableTreeMixin {
  int _category = 0;
  int get category => _category;

  void setCategory(int selectedIndex) {
    _category = selectedIndex;
    notifyListeners();
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', category));
  }
}