class SellsPointModel{
  String? _title;
  double? _lat;
  double? _lang;


  SellsPointModel(this._title, this._lat, this._lang);

  double get lang => _lang!;

  set lang(double value) {
    _lang = value;
  }

  double get lat => _lat!;

  set lat(double value) {
    _lat = value;
  }

  String get title => _title!;

  set title(String value) {
    _title = value;
  }
}
