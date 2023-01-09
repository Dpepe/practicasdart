class Persona {
  String _nombre, _apellido;

  Persona(this._nombre, this._apellido);

  String get nombre => _nombre;
  String get apellido => _apellido; 

   set nombre(String nombre){
    _nombre = nombre;
  }
  set apellido(String apellido){
    _apellido = apellido;
  }

  /* String  nombre() => _nombre;
  String  apellido() => _apellido;

  void setNombre(String nombre){
    _nombre = nombre;
  }
  void setApellido(String apellido){
    _apellido = apellido;
  } */

  String get nombre_completo => "$_nombre, $_apellido";

  String toString() => 'Persona("$_nombre, $_apellido")';


}
void muestra_opcion(Persona p){
  print(p._nombre);
  print(p._apellido);
}