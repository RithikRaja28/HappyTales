import 'package:flutter/material.dart';
import 'package:happytales/Screens/Authentication/logout.dart';

class SettingsScreen extends StatefulWidget {
  final bool darkMode;
  final bool notificationEnabled;
  final ValueChanged<bool> onDarkModeChanged;
  final ValueChanged<bool> onNotificationChanged;

  SettingsScreen({
    required this.darkMode,
    required this.notificationEnabled,
    required this.onDarkModeChanged,
    required this.onNotificationChanged,
  });

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SettingsPage(
      darkMode: widget.darkMode,
      notificationEnabled: widget.notificationEnabled,
      onDarkModeChanged: widget.onDarkModeChanged,
      onNotificationChanged: widget.onNotificationChanged,
    );
  }
}

class SettingsPage extends StatelessWidget {
  final bool darkMode;
  final bool notificationEnabled;
  final ValueChanged<bool> onDarkModeChanged;
  final ValueChanged<bool> onNotificationChanged;

  SettingsPage({
    required this.darkMode,
    required this.notificationEnabled,
    required this.onDarkModeChanged,
    required this.onNotificationChanged,
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
          SwitchListTile(
            title: Text('Notifications'),
            value: notificationEnabled,
            onChanged: onNotificationChanged,
            secondary: Icon(Icons.notifications),
          ),
          ListTile(
            title: Text('Profile & Accounts'),
            leading: Icon(Icons.account_circle_sharp),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
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
                signOut(context);
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
