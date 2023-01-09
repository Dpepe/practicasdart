
class MyClass<T, M>{

  final T propiedad;
  final M propidadDos;
  MyClass(this.propiedad, this.propidadDos);

  void mostreProopiedad(){
    print("${propiedad} ++ ${propidadDos}");
  }

  void mostreArray(){
    print(propiedad);
  }
  
}
void main(List<String> args) {

  var instancia = MyClass<String, String>("Holas", "mundo");
  var otrainstancia = MyClass<int, int>(5, 2);
  var unamas = MyClass<List<String>, List<String>>(["propiedad","ssss"], ["sda", "ddfs"]);
  
  instancia.mostreProopiedad();
  otrainstancia.mostreProopiedad();
  unamas.mostreArray();
}