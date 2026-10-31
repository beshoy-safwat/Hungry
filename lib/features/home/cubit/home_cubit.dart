import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  late int selectedcategory = 0;
  final List<String> category = ["All", "Combos", "Salads", "Deserts"];
  void changecateogry(int index) {
    selectedcategory = index;
    emit(HomeChangeCategory());
  }
}
