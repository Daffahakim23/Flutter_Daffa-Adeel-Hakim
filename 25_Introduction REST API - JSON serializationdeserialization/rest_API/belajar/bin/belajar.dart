import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:convert/convert.dart';

// void main() {
//   Dio()
//       .get(
//           "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2")
//       .then(
//     (response) {
//       print(response);
//     },
//   );
// }

// void main() {
//   var dataMap = {"name": "John Cena", "phone": 082110925240};
//   var dataJSON = jsonEncode(dataMap);
//   print(dataJSON);
// }

void main() {
  var dataJSON = '{"name": "John Cena", "phone": 082110925240}';
  var dataMap = jsonDecode(dataJSON);
  print(dataMap);
}
