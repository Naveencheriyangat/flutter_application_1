import 'package:flutter/material.dart';

void main() => runApp(const PatientListPage());

class PatientListPage extends StatelessWidget {
  const PatientListPage({Key? key}) : super(key: key);

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

  String? get name => null;

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
            Text(
              'My Profile',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFAA1F24),
              ),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey[300], // Placeholder background color
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.grey, // Placeholder icon color
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name ?? '',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFAA1F24),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Email', // Placeholder for email, you need to replace this with the actual email
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            ProfileInfoField(label: 'Age', value: '22'),
            ProfileInfoField(label: 'Weight', value: '70 kg'),
            ProfileInfoField(label: 'Height', value: '170 cm'),
            ProfileInfoField(label: 'Hyper tension/BP', value: 'No'),
            ProfileInfoField(label: 'Sex', value: 'Female'),
            ProfileInfoField(label: 'Chest pain', value: 'No'),
            ProfileInfoField(label: 'Surgery', value: 'No'),
            ProfileInfoField(label: 'Diseases', value: 'None'),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileInfoField extends StatelessWidget {
  final String label;
  final String value;

  const ProfileInfoField({Key? key, required this.label, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
          ),
          child: Text(
            value,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
