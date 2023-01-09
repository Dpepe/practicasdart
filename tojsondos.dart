import 'dart:convert';
class User {
  String name;
  int age;

  User(this.name, this.age);

  factory User.fromJson(dynamic json){
    return User(json['name'] as String, json['age'] as int) ;
  }

  @override
  String toString() {
    return '{name: ${this.name}, age: ${this.age} }';
  } 
}

class Tutorial {
  String title;
  String description;
  List<User> author;

  Tutorial(this.title, this.description, this.author);

  /* Map toJson() {
    var autho = this.author != null ? this.author : null;
    return {'title': title, 'description': description, 'author': autho};
  } */

  @override
  String toString(){
    return "{'title': '${title}', 'description': '${description}', 'author': '${author}'}";
  } 
}
main() {
  String arrayObjsText =
      '{"title":"Flutter object","description":"Esta es un ejemplo de clase para json","author": [{"name": "dart", "age": 12}, {"name": "flutter", "age": 25}, {"name": "json", "age": 8}]}';

  var userObjsJson = jsonDecode(arrayObjsText)['author'] as List;
  List<User> tagObjs = userObjsJson.map((tagJson) => User.fromJson(tagJson)).toList();

  Tutorial tutorial = Tutorial('Dart Tut#1', 'Tut#1 Description', tagObjs);



 print(tutorial);
}


