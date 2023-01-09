import 'dart:convert';
class User {
  String? name;
  int? age;

  User(this.name, this.age);

  Map toJson() => {
    'name': name,
    'age': age,
  };
  /* @override
  String toString(){
    return '{ ${this.name}, ${this.age} }';;
  } */
}

class Tutorial {
  String title;
  String description;
  User? author;

  Tutorial(this.title, this.description, [this.author]);

  Map toJson() {
    var autho = this.author != null ? this.author : null;
    return {'title': title, 'description': description, 'author': autho};
  }
}



main() {
  User user = User('bezkoder', 21);

  String jsonUser = jsonEncode(user);//{"name":"bezkoder","age":21}
  print(jsonUser);
  
  User users = User('bezkoder', 21);
  Tutorial tutorial = Tutorial('Dart Tut#1', 'Tut#1 Description', users);

  String jsonTutorial = jsonEncode(tutorial);
  print(jsonTutorial);
}