import 'dart:convert';
import 'dart:io';

Future<List> getUserListFromFile() async {
  var f = File('users.json');
  var contents = await f.readAsString();
  return jsonDecode(contents);
}