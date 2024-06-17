import 'package:flutter/material.dart';
import 'package:happytales/Screens/Authentication/logout.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 124, 94, 161),
        ),
        accountName: Text(
          'User Name', // user's name
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        accountEmail: Text(
          'user@example.com', //user's email
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        currentAccountPicture: CircleAvatar(
          backgroundImage: AssetImage('assests/images/google.png'), // User profile picture
        ),
      ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.create),
              title: Text('Generate Stories'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.library_books_outlined),
              title: Text('My Story'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favourites'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help & Support'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 125),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sign Out'),
              onTap: () {
                signOut(context);
              },
            ),
          ],
        ),
    );
  }
}