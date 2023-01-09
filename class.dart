class Hora {
    int h = 0, m = 0, s = 0;
}

class Reloj{
  int hora = 5, minuto=10, segundo=20;

  /*Reloj(int hora, int mminuto, int segundo) {
    this.hora = hora;
    this.minuto = minuto;
    this.segundo = segundo;
  }*/
   /*
    Para no poner tanto this in nombreae doblemente 
   */
  Reloj({this.hora = 0, this.minuto = 0, this.segundo = 0});
  Reloj.nombrado({this.hora = 0, this.minuto = 0, this.segundo = 0});
  Reloj.a_cero() {
    this.hora = 0;
    this.minuto = 0;
    this.segundo = 0;
  }

 // Reloj({this.hora, this.minuto, this.segundo})
}

class Punto2D {
  double x, y;

  //Punto2D(this.x, this.y);
  Punto2D.cero() : x = 0, y = 0;
  Punto2D.fromJson(Map<String, dynamic> json) : x = json['x'], y=json['y'];
}

class Persona {
  String nombre, apellido;
  Persona(this.nombre, this.apellido);
  String nombre_completo() =>  '$nombre $apellido';
  String toString() => '$nombre $apellido';
  
}

void mainaa() {
  var p  = Persona('Pedro', 'Perez');
  //print(p.nombre_completo());
  print(p);
}


void main() {

  var a = Hora();
  a.h = 16;
  a.m = 26;
  a.s = 15;
  print('${a.h}:${a.m}:${a.s}');

  var b = Reloj(segundo: 12, hora: 12, minuto: 24);
  print('${b.hora}:${b.minuto}:${b.segundo}');

  var c = Reloj.nombrado(segundo: 10, hora: 10, minuto: 4);
  print('${c.hora}:${c.minuto}:${c.segundo}');

  var z = Reloj.a_cero();
  print('${z.hora}:${z.minuto}:${z.segundo}');

  var p1 = Punto2D.cero();

  print('${p1.x}:${p1.y}');

  var p2 = Punto2D.fromJson({'x':0.5, 'y':7.1, 'z': 5});
  print('${p2.x}:${p2.y}');

}