
import 'dart:io';
import 'dart:convert';
void main(){
  
  var file = File("spacesx.json");

  var text = file.readAsStringSync();

  var json  = jsonDecode(text);

  print(json[0]);

}