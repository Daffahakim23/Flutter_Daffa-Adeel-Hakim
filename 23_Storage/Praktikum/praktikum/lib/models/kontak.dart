// ignore_for_file: file_names, unnecessary_this, prefer_collection_literals

class Kontak {
  int? id;
  String? name;
  String? phoneNumber;

  Kontak({this.id, this.name, this.phoneNumber});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    if (id != null) {
      map['id'] = id;
    }
    map['name'] = name;
    map['phoneNumber'] = phoneNumber;

    return map;
  }

  Kontak.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
    this.phoneNumber = map['phoneNumber'];
  }
}
