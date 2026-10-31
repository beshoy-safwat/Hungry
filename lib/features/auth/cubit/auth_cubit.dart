import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:hungry2/core/constants/app_functions.dart';
import 'package:hungry2/features/auth/cubit/auth_states.dart';
import 'package:hungry2/features/home/view/home_view.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitial());

  final GlobalKey<FormState> loginkey = GlobalKey<FormState>();
  final GlobalKey<FormState> signupkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController signupnamecontroller = TextEditingController();
  final TextEditingController signupemailcontroller = TextEditingController();
  final TextEditingController signuppasscontroller = TextEditingController();
  final TextEditingController signuppass2controller = TextEditingController();
  TextEditingController profileNameController = TextEditingController(text: "Besho Safwat");
  TextEditingController profileEmailController = TextEditingController(text: "Besho@gmail.com");
  TextEditingController profileAddressController = TextEditingController(text: "Shoubra, Egypt");

  void login(BuildContext context) {
    if (loginkey.currentState!.validate()) {
      Routing.pushReplacement(context, HomeView());
    }
  }

  void signup(BuildContext context) {
    if (signupkey.currentState!.validate()) {
      Routing.pushReplacement(context, HomeView());
    }
  }
}
