import 'users_api.dart';
import 'users_file.dart';

Future<List> getUserList() async {
  // Leemos de fichero
  //return getUserListFromFile();

  // O usamos la API
  return getUserListFromApi();

  // O devolvemos una lista fabricada
  /*
     return [
       {'name': 'jamesbond', 'email': 'james@bond.com'},
       {'name': 'johndoe', 'email': 'johndoe@gmail.com'},
     ];
  */
}