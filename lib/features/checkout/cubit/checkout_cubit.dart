import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit() : super(CheckoutInitial());
  late String paymentMethod = "cash";
  late bool saveChecked = false;

  void onchangecheckout(String value) {
    paymentMethod = value;
    emit(CheckoutChangePayment());
  }

  void changeCash() {
    paymentMethod = "cash";
    emit(CheckoutChangePayment());
  }

  void changeVisa() {
    paymentMethod = "visa";
    emit(CheckoutChangePayment());
  }

  void toggleCheckbot() {
    saveChecked =!saveChecked;
    emit(CheckoutChangeCheckobox());
  }
}
