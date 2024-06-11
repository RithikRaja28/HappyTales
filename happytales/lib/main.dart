import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:happytales/Screens/Authentication/login.dart';
import 'package:happytales/Screens/Authentication/signup.dart';
import 'package:happytales/Screens/Home/home_screen.dart';
import 'package:happytales/Screens/Welcome%20Screen/welcome_screen.dart';
import 'package:happytales/Widgets/splash.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/splash',

    
      routes: {
        '/signup': (context) => const Signup(),
        '/splash': (context) => const Splash(),
        '/login': (context) => const Login(),
        '/welcome_screen':(context) =>const WelcomeScreen(),
        '/home':(context) => const HomeScreen(),
      },
    );
  }
}

