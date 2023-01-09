enum Elementos{
  agua("whater", 100),
  fuego("fire", 200);

  final String nombre;
  final int numero;

  const Elementos(this.nombre, this.numero);
}

void main(List<String> args) {
  print(Elementos.agua.numero);
}