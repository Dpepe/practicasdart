
Future<int> retardado(int valor) async {

  await Future.delayed(Duration(seconds: 1));
  return valor;

}

Stream<int> countStream(int from, int to) async* {
  yield from;
  for(int i = from - 1; i >= to; i--){
    
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }

}
main(){
  print('inicio');
  int suma = 0;
  countStream(5, 0).listen((event) {

    suma = suma + event;
    print(event);

    print("suma $suma");

  });
  /* print('inicio');

  retardado(5).then((value) => print(value));

  print('fin'); */
    /* Stream<int> stream = countStream(10);

    print(countStream(10)); */

    ///listen expulsa cada vez que se necesita
  
}