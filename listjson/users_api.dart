import 'dart:convert';

import 'package:http/http.dart';

Future<List> getUserListFromApi() async {
  var response = await get(Uri.parse("https://randomuser.me/api/?count=10"));

  var datos = jsonDecode(response.body);
  return datos['results'];
}