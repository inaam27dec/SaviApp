import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:savostoreapp/screens/SplashScreen.dart';
import 'package:savostoreapp/screens/dashboard/createOrders/CreateOrderScreen.dart';
import 'package:savostoreapp/screens/dashboard/createOrders/DeliveryInfoScreen.dart';
import 'package:savostoreapp/utils/Constants.dart';
import 'package:savostoreapp/utils/Prefs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(secondary: AppColors.primary, primary: AppColors.primary),
      ),
      home: const SplashScreen(),
      builder: EasyLoading.init(),
    );
  }
}
