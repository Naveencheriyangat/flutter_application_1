import 'package:flutter/material.dart';
import 'Home.dart';


void main() => runApp(const ProfilePage());

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardio Vista',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Color.fromARGB(255, 240, 251, 255),
      ),
      home: const Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Cardio ', style: TextStyle(color: Colors.black)),
            Text('Vista', style: TextStyle(color: Color(0xFFAA1F24))),
          ],
        ),
        elevation: 5,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: MyLoginPage(),
      ),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool _isSaveHovered = false;
  bool _isBackHovered = false;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CREATE PROFILE',
            style: TextStyle(
              color: Color(0xFFAA1F24),
              fontSize: 24,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(2, 2),
                  blurRadius: 2,
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFAA1F24)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Licence number',
                      labelStyle: TextStyle(color: Color(0xFFAA1F24)),
                      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFAA1F24)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Color(0xFFAA1F24)),
                      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFAA1F24)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone number',
                      labelStyle: TextStyle(color: Color(0xFFAA1F24)),
                      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFAA1F24)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Specialization',
                      labelStyle: TextStyle(color: Color(0xFFAA1F24)),
                      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFAA1F24)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Bio',
                      labelStyle: TextStyle(color: Color(0xFFAA1F24)),
                      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: MouseRegion(
                    onEnter: (_) => setState(() => _isSaveHovered = true),
                    onExit: (_) => setState(() => _isSaveHovered = false),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => YourDetailsPage()), // Replace Home() with your desired destination
                        );// Handle SAVE button press
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: _isSaveHovered ? Colors.black : Colors.white,
                        backgroundColor: _isSaveHovered ? Color(0xFFAA1F24) : Color.fromARGB(255, 240, 251, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Color(0xFFAA1F24)),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'SAVE',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: MouseRegion(
                    onEnter: (_) => setState(() => _isBackHovered = true),
                    onExit: (_) => setState(() => _isBackHovered = false),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CardioVistaApp()), // Replace Home() with your desired destination
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: _isBackHovered ? Colors.black : Colors.white,
                        backgroundColor: _isBackHovered ? Color(0xFFAA1F24) : Color.fromARGB(255, 240, 251, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Color(0xFFAA1F24)),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'BACK',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class YourDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Cardio ', style: TextStyle(color: Colors.black)),
            Text('Vista', style: TextStyle(color: Color(0xFFAA1F24))),
          ],
        ),
        elevation: 5,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Add functionality to navigate to edit profile page
                  },
                ),
              ],
            ),
            Text(
              'MY PROFILE',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20), // Adjust the space between CircleAvatar and Text
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey[300], // Placeholder background color
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.grey, // Placeholder icon color
                  ),
                ),
                SizedBox(width: 20), // Adjust the space between CircleAvatar and Text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Name', // Placeholder for name, replace with actual name
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFAA1F24),
                      ),
                    ),
                    SizedBox(height: 10), // Adjust the space between Your Name and Email
                    Text(
                      'Your Email', // Placeholder for email, replace with actual email
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height:50),
            ProfileInfoField(label: 'Licence number', value: '22'),
            ProfileInfoField(label: 'Email', value: '0'),
            ProfileInfoField(label: 'Phone number', value: '0'),
            ProfileInfoField(label: 'Specialization', value: 'No'),
            ProfileInfoField(label: 'Bio', value: 'Female'),
            SizedBox(height: 20),
          ],
        ),
      ),
      // Add bottom navigation bar if needed
    );
  }
}

class ProfileInfoField extends StatelessWidget {
  final String label;
  final String value;

  ProfileInfoField({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
