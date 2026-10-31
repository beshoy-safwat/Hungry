import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  // List<int> quantity = List.generate(10, (index) => 1);
  List<int> quantity = [];
  void initializeQuantity(int itemCount) {
    quantity = List.generate(itemCount, (index) => 1);
  }

  void onadd(int index) {
    quantity[index] += 1;
    emit(CartItemAdd());
  }

  void onminus(int index) {
    if (quantity[index] > 1) {
      quantity[index] -= 1;
      emit(CartItemMinus());
    }
  }


}
