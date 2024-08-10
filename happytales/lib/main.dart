import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:happytales/Screens/Authentication/login.dart';
import 'package:happytales/Screens/Authentication/signup.dart';
import 'package:happytales/Screens/Gemini%20API/gemini.dart';
import 'package:happytales/Screens/Home/home_screen.dart';
import 'package:happytales/Screens/Settings%20Screen/settings_screen.dart';
import 'package:happytales/Screens/Story%20Screen/story_page.dart';
import 'package:happytales/Screens/Welcome%20Screen/welcome_screen.dart';

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
      title: 'Happy Tales',
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        useMaterial3: true,
        
        
      ),
      home: WelcomeScreen(),

    
      routes: {
        '/signup': (context) => const Signup(),
        '/login': (context) => const Login(),
        '/welcome_screen':(context) =>const WelcomeScreen(),
        '/home':(context) => const HomeScreen(),
        '/settings': (context) => SettingsScreen(),
        '/gemini': (context) => const Gemini(),
        '/story': (context) => StoryPage(
          title: '',
          author: '',
          img: '',
          content: '',
          moral: '',
        ),
      },
    );
  }
}

class AuthCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // Show a loading indicator while checking auth state
        } else if (snapshot.hasData) {
          return HomeScreen(); // If the user is signed in, navigate to HomePage
        } else {
          return Login(); // If the user is not signed in, navigate to LoginPage
        }
      },
    );
  }
}