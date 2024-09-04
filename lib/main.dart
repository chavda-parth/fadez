import 'package:fadez/login.dart';
import 'package:fadez/page_navigation.dart';
import 'package:fadez/register.dart';
import 'package:flutter/material.dart';
import 'package:fadez/splashscreen.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xffeeeeff),
      systemNavigationBarIconBrightness: Brightness.dark));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fadez',
      theme: ThemeData(
        primaryColor: const Color(0xFFeeeeff),
        primaryColorDark: const Color(0xFF4444ff),
        primaryColorLight: const Color.fromRGBO(0, 0, 255, 0.15),
        fontFamily: 'Urbanist',
      ),
      //home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegistrationPage(),
        '/navigation': (context) => const PageNavigation(),
      },
    );
  }
}
