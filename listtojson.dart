
import 'pruebas.dart';
import 'dart:convert';

class Tag {
  String name;
  int quantity;

  Tag(this.name, this.quantity);

  factory Tag.fromJson(dynamic json) {
    return Tag(json['name'] as String, json['quantity'] as int);
  }

  @override
  String toString() {
    return '{ ${this.name}, ${this.quantity} }';
  } 
}


main() {
  String arrayObjsText =
      '{"tags": [{"name": "dart", "quantity": 12}, {"name": "flutter", "quantity": 25}, {"name": "json", "quantity": 8}]}';

  var tagObjsJson = jsonDecode(arrayObjsText)['tags'] as List;
  List<Tag> tagObjs = tagObjsJson.map((tagJson) => Tag.fromJson(tagJson)).toList();
 
 imprime.tests(tagObjs,"tabaobjests ****");
  //print(tagObjs);//[{ dart, 12 }, { flutter, 25 }, { json, 8 }]
tagObjs.forEach((e) => print(e));

  

   var tagObjsDos = tagObjsJson.map((tagJson) => Tag.fromJson(tagJson));
   print(tagObjsDos);//({ dart, 12 }, { flutter, 25 }, { json, 8 })
   tagObjsDos.forEach((element) { 
    print(element.name);
   });
   print("tagObjsDos map eleme**---------------------*");
   tagObjsDos.map((element) {
    print(element.name);
    print("tagObjsDos map eleme***");
    
   });

   List tagObjsTres = tagObjsJson.map((tagJson) => Tag.fromJson(tagJson)).toList();
   print(tagObjsTres);//[{ dart, 12 }, { flutter, 25 }, { json, 8 }]

   tagObjsTres.forEach((element) {
    print(element.quantity);
   });
}

/* class User {
  String name;
  int age;

  User(this.name, this.age);

  Map toJson() => {
        'name': name,
        'age': age,
      };
}



main() {
  User user = User('bezkoder', 21);
  //print(user);//Instance of 'User'
  String jsonUser = jsonEncode(user);
  print(jsonUser);//Instance of 'User'
} */