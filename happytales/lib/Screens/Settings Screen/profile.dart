import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String userName = '';
  String userDescription = '';
  String userEmail = '';
  String userPhone = '';
  String userWebsite = '';
  String userPassword = '';
  bool isEditing = false; // To track the edit mode
  String selectedAvatar = 'assests/images/default_avatar.jpg'; // Default avatar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        title: Text('Your Profile'),
        actions: [
          IconButton(
            icon: Icon(isEditing ? Icons.save : Icons.edit),
            onPressed: () {
              setState(() {
                if (isEditing) {
                  // Save changes and exit edit mode
                  userName = nameController.text;
                  userDescription = descriptionController.text;
                }
                isEditing = !isEditing;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blueAccent,
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(selectedAvatar),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                userName,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                userDescription,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 32.0),
              if (isEditing) ...[
                buildTextField(Icons.person, 'Name', 'Enter your name', false, nameController),
                SizedBox(height: 16.0),
                buildTextField(Icons.description, 'Description', 'Enter a description', false, descriptionController),
                SizedBox(height: 16.0),
                buildAvatarSelection(),
              ] else ...[
                buildTextField(Icons.email, 'Your Email', 'name@gmail.com', false, emailController),
                SizedBox(height: 16.0),
                buildTextField(Icons.phone, 'Phone Number', '1234567890', false, phoneController),
                SizedBox(height: 16.0),
                buildTextField(Icons.web, 'Website', 'www.name.com', false, websiteController),
                SizedBox(height: 16.0),
                buildTextField(Icons.lock, 'Password', '', true, passwordController),
              ],
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Save email, phone, website, and password
                    userEmail = emailController.text;
                    userPhone = phoneController.text;
                    userWebsite = websiteController.text;
                    userPassword = passwordController.text;

                    // You can add further actions like API calls here
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(IconData icon, String labelText, String placeholder, bool isPassword, TextEditingController controller) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: placeholder,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  Widget buildAvatarSelection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedAvatar = 'assests/images/boy_avatar.jpg';
            });
          },
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assests/images/boy_avatar.jpg'),
            backgroundColor: selectedAvatar == 'assests/images/boy_avatar.jpg' ? Colors.blue : Colors.grey,
          ),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedAvatar = 'assests/images/girl_avatar.jpg';
            });
          },
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assests/images/girl_avatar.jpg'),
            backgroundColor: selectedAvatar == 'assests/images/girl_avatar.jpg' ? Colors.blue : Colors.grey,
          ),
        ),
      ],
    );
  }
}
