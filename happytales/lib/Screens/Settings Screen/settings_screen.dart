import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  final bool darkMode;
  final ValueChanged<bool> onDarkModeChanged;

  SettingsScreen({
    required this.darkMode,
    required this.onDarkModeChanged,
  });

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SettingsPage(
      darkMode: widget.darkMode,
      onDarkModeChanged: widget.onDarkModeChanged,
    );
  }
}

class SettingsPage extends StatelessWidget {
  final bool darkMode;
  final ValueChanged<bool> onDarkModeChanged;

  SettingsPage({
    required this.darkMode,
    required this.onDarkModeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Use pop to return to the previous screen
          },
        ),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('Dark mode'),
            value: darkMode,
            onChanged: onDarkModeChanged,
            secondary: Icon(Icons.nights_stay),
          ),
          ListTile(
            title: Text('Profile & Accounts'),
            leading: Icon(Icons.account_circle_sharp),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            title: Text('Notification'),
            leading: Icon(Icons.notification_add_sharp),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to Notifications settings
            },
          ),
          Divider(),
          ListTile(
            title: Text('Privacy & Security'),
            leading: Icon(Icons.privacy_tip_sharp),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to Privacy & Security settings
            },
          ),
          ListTile(
            title: Text('Terms and conditions'),
            leading: Icon(Icons.list_alt_sharp),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to Terms and Conditions
            },
          ),
          Divider(),
          ListTile(
            title: Text('Leave feedback'),
            subtitle: Text('Let us know what you think of the app.'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to Feedback
            },
          ),
          SizedBox(height: 280),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Implement sign out functionality
              },
              child: Text('Sign out'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 48),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
