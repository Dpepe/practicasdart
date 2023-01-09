import 'modulo.dart';

class Colorss {

  int r,g,b;
  Colorss(this.r, this.g, this.b);

  String toString() => 'Colorss($r, $g, $b)';

  static final rojo = Colorss(255, 0, 0);

  static final negro = Colorss(5, 0, 0);

  static Colorss mezcla(Colorss a, Colorss b) => Colorss(a.r + b.r, b.g +a.g, a.b+b.b);
}

void main(){

  var p = Persona('Dvid', "Perex");

  print(p);//david

  p.nombre = "marcos";
  p.apellido = "yucatan";

  print(p.nombre_completo);
  
  print(Colorss.mezcla(Colorss.rojo, Colorss.negro));


}