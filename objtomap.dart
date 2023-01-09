


import 'pruebas.dart';

class Customer {
  String name;
  String email;
  int age;
  Customer(this.name, this.email, this.age);

  @override
  String toString(){
     return '{ ${this.name}, ${this.email}, ${this.age} }';
  }
}
void main(){
 print(Customer("master", "emsssail", 20));

 List<Customer> list = [];
 list.add(Customer("Sandy", "Jaiden99@gmail.com",10)); 
 list.add(Customer("Tate", "Hilario56@yahoo.com",20)); 
 list.add(Customer("Ilene", "Brisa.Leannon@gmail.com",25)); 

 print(list);

/*   var map = Map.fromIterable(list,
    key: (e) => e.name, value: (e) => {'email': e.email, 'age': e.age});
  print(map);

  var maps = Map.fromIterable(list,
      key: (e) => e.name, value: (e) => {'email': e.email, 'age': e.age});
  print(map); */

  Map<String, dynamic> maper = {
  'Jack': {'email': 'jack@gmail.com', 'age': 23},
  'Adam': {'email': 'adam@gmail.com', 'age': 27},
  'Katherin': {'email': 'katherin@gmail.com', 'age': 25}
};
print(maper);
print(maper.entries);
List<Customer> listDos = [];

var m = maper.entries.forEach(
  (e) => listDos.add(Customer(e.key, e.value['email'], e.value['age'])));

imprime.tests(listDos, " lista dos maper.entries.forEach ** ");

var s = maper.forEach(
  (e,y) => listDos.add(Customer(e, y['email'], y['age'])));
imprime.tests(listDos, " maper.forEach *** ");
imprime.tests(listDos.toList(), " maper.forEach tolist *** ");


var d = maper.entries.map(
  (e) => listDos.add(Customer(e.key, e.value['email'], e.value['age'])));

imprime.tests(listDos, " maper.entries.map ");

imprime.tests(d, " maper.entries.map ");

var maperDos = maper.entries.map((e) => {"name":"master"});
// map nos permiete estar interactuando y se convierte en otro mapa
print(maperDos.length);
maperDos.forEach((e) => print(e['name']));
}