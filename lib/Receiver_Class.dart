
class Receiver {

  int _group;
  int _id;
  String _title;
  String _body;

  Receiver(this._group, this._id, this._title, this._body);

  String get body => _body;

  set body(String value) {
    _body = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  int get group => _group;

  set group(int value) {
    _group = value;
  }

}