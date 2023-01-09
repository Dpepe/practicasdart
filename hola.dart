int calculate() {
  return 6 * 7;
}
int suma(int uno, int dos){
  return uno + dos;
}

void main(List<String> arguments) {
  print('Hello world: ${calculate()}!');
   Map <dynamic, dynamic> frutas = {
    0: "sda",
    1: "1112",
    2: "55",
  };
  
  var longitud = frutas.length;
  print(longitud);

  print(suma(1, 2));
  
  for (var i = 0; i < longitud; i++) {
    var kns = frutas[i];
    print('hello ${kns}');
  }
}
