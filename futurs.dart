import 'dart:io';

main(){

Future<String> saludaAsync() async {
  return 'hola';
}
print('inicio');
saludaAsync().then((s){
print(s);
});

print('fin');
/*   print("i-*****nicio");
  File file = File('futurs.dart');
  file.readAsString().then((value) {
    print(value);
  });
  print("i-*****fin"); */
}