
import 'dart:async';

Future<void> exampleFunction() async {
  try {
    // Realiza una tarea que puede tardar mucho tiempo
    await Future.delayed(Duration(seconds: 5));

    // Si la tarea se completa dentro del límite de tiempo, este código se ejecutará
    print('Tarea completada');
  } catch (e) {
    // Si la tarea no se completa dentro del límite de tiempo, este código se ejecutará
    print('Tarea fallida debido a un timeout: $e');
  } 

  
}

void main() {
  exampleFunction().timeout(Duration(seconds: 3));
   var object1 = Object();
  var object2 = Object();


//En Dart, hashCode es un método que se puede llamar en cualquier objeto y que devuelve un entero único para ese objeto. El método hashCode es parte de la clase Object, que es la clase base de todos los objetos en Dart.
  print(object1.hashCode); // Imprime un entero único
  print(object2.hashCode);
}

/*
//ASCream para suscribirse aun future
import 'dart:async';

Future<int> exampleFunction() async {
  // Realiza una tarea que puede tardar mucho tiempo
  await Future.delayed(Duration(seconds: 5));

  // Devuelve un resultado cuando la tarea se complete
  return 42;
}

void main() {
  exampleFunction().asStream().listen((result) {
    // Este código se ejecutará cada vez que exampleFunction se complete
    print('Resultado: $result');
  });
} */