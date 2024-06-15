import 'package:flutter/material.dart';
import 'package:happytales/Screens/Authentication/logout.dart';
import 'package:happytales/Screens/Home/side_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            signOut(context); // Pass the context to the signOut function
          },
          child: Text('Sign Out'),
        ),
      ),
      drawer: SideBar(),
    );
  }
}
