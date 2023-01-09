abstract class Fruta{
  String nombre;
  Fruta(this.nombre);

  double get gramos;
  bool get femenino;

  void come(){
    var det = {femenino ? "una" : "un"};
    print("Te acabas de comer una fruta $det $nombre (gramos $gramos)");
  }

}

class Manzana extends Fruta {
  Manzana() : super('manzana');
  bool get femenino => true;
  double get gramos => 250;
}

class Melon extends Fruta {
  Melon() : super('Melon');
  bool get femenino => false;
  double get gramos => 1500;

  void come(){
    print("vamos abrir el melon");
    super.come();
  }
}

class Arandano extends Fruta{
  Arandano(): super("arandano");
  bool get femenino => false;
  double get gramos => 10;
}

void main(){

  var m = Manzana();
  m.come();

  var m2 = Melon();
  m2.come();

  var frutas = [
    for(int i = 0; i < 3; i++) Manzana(),
    Melon(),
    for (var i = 0; i < 10; i++) Arandano()
  ];

  ///frutas.shuffle();

  for (var f in frutas) {
    f.come();
  }

}

abstract class Animal {
  String nombre;
  Animal(this.nombre);
}

mixin PosicionMixin {

  // USO DE GUION PARA PODER HACERLAS PRIVADAS SetX
  num _x = 0, _y = 0;

  num get x => _x;
  num get y => _y;
  
  //Para poderlos cambiar
  set x(num x) => _x = x; 
  set y(num y) => _y = y; 

  List<num> get pos => [_x, _y];

  void mueve(int dx, int dy){
    _x += dx;
    _y += dy;
  }

  String toString() {
    return 'Nombre: ${_x}';
  }
}

class Leon extends Animal with PosicionMixin {
  
  Leon() : super('leon');

}

/* void main(){

  var ex = Leon();


  //Para dar valo a lo set
    ex.x = 10;
    ex.y = 10;
    
    ex.mueve(5,2);
    ex.mueve(80,5);
    print(ex.pos);
    print(ex.nombre);
    print(ex.toString());
}

 */

