import 'package:scoped_model/scoped_model.dart';

class DataModel extends Model {
  double height = 300;
  double width = 300;
  changeHeight(double h) {
    height = h;
    notifyListeners();
  }

  changeWidth(double w) {
    width = w;
  }
}

DataModel model = DataModel();
