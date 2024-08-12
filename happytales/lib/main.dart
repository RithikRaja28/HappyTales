import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:happytales/Screens/Authentication/login.dart';
import 'package:happytales/Screens/Authentication/signup.dart';
import 'package:happytales/Screens/Gemini%20API/gemini.dart';
import 'package:happytales/Screens/Home/home_screen.dart';
import 'package:happytales/Screens/Settings%20Screen/profile.dart';
import 'package:happytales/Screens/Settings%20Screen/settings_screen.dart';
import 'package:happytales/Screens/Story%20Screen/story_page.dart';
import 'package:happytales/Screens/Welcome%20Screen/welcome_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _darkMode = false;
  bool _notificationEnabled = true; // Default value for notification state

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Happy Tales',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _darkMode ? ThemeMode.dark : ThemeMode.light,
      home: AuthCheck(), // Set the home to AuthCheck which handles initial routing
      routes: {
        '/signup': (context) => Signup(),
        '/login': (context) => Login(),
        '/welcome_screen': (context) => WelcomeScreen(),
        '/home': (context) => HomeScreen(),
        '/settings': (context) => SettingsScreen(
          darkMode: _darkMode,
          notificationEnabled: _notificationEnabled,
          onDarkModeChanged: (value) {
            setState(() {
              _darkMode = value;
            });
          },
          onNotificationChanged: (value) {
            setState(() {
              _notificationEnabled = value;
            });
          },
        ),
        '/gemini': (context) => Gemini(),
        '/story': (context) => StoryPage(
          title: '',
          author: '',
          img: '',
          content: '',
          moral: '',
        ),
        '/profile': (context) => ProfilePage()
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
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(), // Show a loading indicator while checking auth state
            ),
          );
        } else if (snapshot.hasData) {
          return HomeScreen(); // If the user is signed in, navigate to HomePage
        } else {
          return Login(); // If the user is not signed in, navigate to LoginPage
        }
      },
    );
  }
}
