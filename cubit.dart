import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
}
void main() {
  final cubitA = CounterCubit(0); // state starts at 0
  final cubitB = CounterCubit(10); // state starts at 10  
print(cubitA);
}
