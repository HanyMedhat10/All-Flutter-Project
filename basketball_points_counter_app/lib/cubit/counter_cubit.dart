import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int temAPints = 0;

  int temBPints = 0;
  void TeamPIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      temAPints += buttonNumber;
      emit(CounterAIncrementState()); //<-ملهيش لازمه هنا
    } else {
      temBPints += buttonNumber;
      emit(CounterBIncrementState()); //<-ملهيش لازمه هنا
    }
  }

  // void TeamBPIncrement(int buttonNumber) {
  //   temBPints = buttonNumber;
  //   emit(CounterBIncrementState());
  // }
}
