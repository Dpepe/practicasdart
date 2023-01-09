



void maissn(){
  for(var i = 0;  i < 10; i++) {
    //print(i);
  }
  var i = 0;
  while (i<20) {
    print(i);
    i++;
  }
}



void main() {
  /* Map <dynamic, dynamic> frutas = {
    0: "sda",
    1: "1112",
    2: "55",
  };
  
  var longitud = frutas.length;
  print(longitud);
  
  for (int i = 0; i < longitud; i++) {
    var kns = frutas[i];
    print('hello ${kns}');
  } */
  /*
hello sdaq
hello 1112
hello 55*/
/*     frutas.forEach((k,v)  { 
    
      print( '${k}: ${v}' );
                           
    }); 
  
  void doSomethingWithValue(int val) => print(val);
  
  doSomethingWithValue(10);
  
  int tripleValue(int val) => val * 3;
  
  print(tripleValue(2));
  
  int dobleValue(int val) {
      return val * 2;
  }
  print(dobleValue(4));
 */

  List<Map<dynamic, dynamic>> fruits = [
    { "uno": "unoxzc", "dos": "doszxc"},
    { "uno": "ddd", "dos": "doszxc"},
  ];
  var longit = fruits.length;
  print(longit);
  
  for(var valor in fruits){
    print(valor['uno']);
  }

/*   List <List<dynamic>> frutasssss= [
    [1, "unoxzc", "dos", "doszxc"],
    ["uno", "unoxzc", "dos", "doszxc"],
  ];
  
  var longitud = frutasssss.length;
  print(longitud);
  
  for(var valor in frutasssss){
    print(valor[1]);
  } */
  //frutas.forEach((k,v) => { print('${k}: ${v}') }) ; 
  
 
 /*
  * void main() { 
   var details = {'Usrname':'tom','Password':'pass@123'}; 
   print(details.keys); 
}
It will produce the following output -

(Usrname, Password)
  * 
  *  List <List<dynamic>> frutas= [
    [1, "unoxzc", "dos", "doszxc"],
    ["uno", "unoxzc", "dos", "doszxc"],
  ];
  
  var longitud = frutas.length;
  print(longitud);
  
  for(var valor in frutas){
    print(valor[1]);
  }*/
  
 /* List<Map<dynamic, dynamic>> frutas = [
    { "uno": "unoxzc", "dos": "doszxc"},
    { "uno": "ddd", "dos": "doszxc"},
  ];
  var longitud = frutas.length;
  print(longitud);
  
  for(var valor in frutas){
    print(valor['uno']);
  }*/
  /*for (int i = 0; i < longitud; i++) {
    print('hello ${frutas[i]}');

    
  }
  
  import 'dart:async';
import 'dart:convert';
class Task {
  final String id;
  final String tarea;
  final String time_cronometro;
  final String create_date;
  final String nameproject;
  final String id_proyecto;
  final String id_user;
  final String detalles;
  const Task({
    required this.id,
    required this.tarea,
    required this.time_cronometro,
    required this.nameproject,
    required this.create_date,
    required this.id_proyecto,
    required this.id_user,
    required this.detalles,
  });
}

main() {
  
  Future.value([{"master" : "uno", "last": 2, "lasts": 3},{"master" : "dos", "last": 2, "lasts": 3},{"master" : "tres", "last": 2, "lasts": 3}]).then((value) { 
    print(value[0]['master']); 
    /*for(var i = 0;i < value.length;i++){
      print(value[i]['master']);
    }*/
    
    for(var val in value ){
      print(val['master']);
    }
    value.forEach((i){
      print(i['master']);
    });
  }).whenComplete(() { 
    print('complete'); 
  }); 
  
  Future.value([{"tarea" : "a", "nameproject": "b", "detalles": "c"},{"tarea" : "a", "nameproject": "b", "detalles": "c"}]).then((value){
    print(value); 
  }).whenComplete(() { 
    print('complete dis'); 
  }); 
  
}
  */
  
}
