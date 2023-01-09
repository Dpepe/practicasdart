import 'users.dart';

void main() async {
  List users = await getUserList();
  print(users);
}