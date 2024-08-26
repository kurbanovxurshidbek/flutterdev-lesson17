import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ngdemo15/pages/home_page.dart';
import 'package:ngdemo15/pages/signin_page.dart';
import 'package:ngdemo15/pages/signup_page.dart';
import 'package:ngdemo15/pages/splash_page.dart';
import 'package:ngdemo15/services/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDoU-ghEt8OA6w07N2zwSYFfb8G7DMPoZQ',
      appId: '1:413593276008:android:0a5d6bb964adba551435dd',
      messagingSenderId: '413593276008',
      projectId: 'ngdemo15',
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashPage(),
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        HomePage.id: (context) => const HomePage(),
        SignInPage.id: (context) => const SignInPage(),
        SignUpPage.id: (context) => const SignUpPage(),
      },
    );
  }
}
