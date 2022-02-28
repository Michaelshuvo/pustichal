class VitaminModel{
  String? _title;
  String? _image;
  String? _description;
  String? _startColor;
  String? _endColor;


  VitaminModel(this._title, this._image, this._description, this._startColor,
      this._endColor);

  String get endColor => _endColor!;

  set endColor(String value) {
    _endColor = value;
  }

  String get startColor => _startColor!;

  set startColor(String value) {
    _startColor = value;
  }

  String get description => _description!;

  set description(String value) {
    _description = value;
  }

  String get image => _image!;

  set image(String value) {
    _image = value;
  }

  String get title => _title!;

  set title(String value) {
    _title = value;
  }
}
