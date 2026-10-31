import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry2/features/auth/cubit/auth_cubit.dart';
import 'package:hungry2/features/cart/cubit/cart_cubit.dart';
import 'package:hungry2/features/checkout/cubit/checkout_cubit.dart';
import 'package:hungry2/features/home/cubit/home_cubit.dart';
import 'package:hungry2/features/product/cubit/product_cubit.dart';
import 'package:hungry2/root/cubit/root_cubit.dart';
import 'package:hungry2/root/view/root.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => RootCubit()),
        BlocProvider(create: (context) => HomeCubit()),
        BlocProvider(create: (context) => ProductCubit()),
        BlocProvider(create: (context) => CartCubit()),
        BlocProvider(create: (context) => CheckoutCubit()),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        home: Root(),
      ),
    );
  }
}
