
Stream<int> countStream(int max) async* {
    for (int i = 0; i < max; i++) {
      await Future.delayed(Duration(seconds: 1));
      print('countStream funcion**');
        yield i;
    }
}
Future<int> sumStream(Stream<int> stream) async {
    int sum = 0;
    print('sumStream funcio***');
    await for (int value in stream) {
      //ejecuta y espera al countstream para modificar su resultado sin llamar a la funcion, la funcion se esta ejecutando dentro del stream
      print('sumStream funcio*** for await');
      sum += value;
      
    }
    print('suma ss** $sum');
    return sum;
}
void main() async {
  print('inicio');
    /// Initialize a stream of integers 0-9
    Stream<int> stream = countStream(5);
    print('countStream');
     print(stream);
    /// Compute the sum of the stream of integers
    /// en espera de todos los valores para acceder
    int sum = await sumStream(stream);
     print('sumStream');
    /// Print the sum
    print('print');
    print(sum); // 45
}