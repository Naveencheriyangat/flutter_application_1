import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Home.dart';
import 'profile.dart';

void main() {
  runApp(PatientDetailsPage());
}

class PatientDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardio Vista',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Color.fromARGB(255, 240, 251, 255),
      ),
      home: PatientDetailsScreen(),
    );
  }
}

class PatientDetailsScreen extends StatelessWidget {
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
      body: PatientDetailsForm(),
      bottomNavigationBar: SizedBox(
  height: 50, // Adjust the height as needed
  child: ClipRRect(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20.0),
      topRight: Radius.circular(20.0),
    ),
    child: BottomAppBar(
      elevation: 0, // Remove shadow
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            iconSize: 28, // Adjust icon size
            icon: Icon(Icons.home, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CardioVistaApp()),
              );
            },
          ),
          IconButton(
            iconSize: 28, // Adjust icon size
            icon: Icon(Icons.person, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
    ),
  ),
),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class PatientDetailsForm extends StatefulWidget {
  @override
  _PatientDetailsFormState createState() => _PatientDetailsFormState();
}

class _PatientDetailsFormState extends State<PatientDetailsForm> {
  TextEditingController ageController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController sexController = TextEditingController();
  TextEditingController bpController = TextEditingController();
  TextEditingController chestPainController = TextEditingController();
  TextEditingController palpitationController = TextEditingController();
  TextEditingController surgeryController = TextEditingController();
  TextEditingController otherDiseaseController = TextEditingController();

  bool _isSignInHovered = false;
  bool _isBackHovered = false;

  bool _isPasswordCompliant(String password) {
    // Your password compliance check logic goes here
    return password.length >= 6;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Patient Details',
          style: TextStyle(color: Color(0xFFAA1F24)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 80.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              _buildTextField('Age', ageController),
              _buildTextField('Weight', weightController),
              _buildTextField('Height', heightController),
              _buildTextField('Sex', sexController),
              _buildTextField('Hyper tension/BP', bpController),
              _buildTextField('Chest Pain', chestPainController),
              _buildTextField('Palpitation', palpitationController),
              _buildTextField('Surgery if any', surgeryController),
              _buildTextField('Any other disease', otherDiseaseController),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: MouseRegion(
                  onEnter: (_) {
                    if (!_isSignInHovered) {
                      setState(() => _isSignInHovered = true);
                    }
                  },
                  onExit: (_) {
                    if (_isSignInHovered) {
                      setState(() => _isSignInHovered = false);
                    }
                  },
                  child: ElevatedButton(
                    onPressed: () {
                      var passwordController;
                      if (_isPasswordCompliant(passwordController.text)) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CardioVistaApp()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: _isSignInHovered ? Colors.black : Colors.white,
                      backgroundColor: _isSignInHovered ? Color(0xFFAA1F24) : Color.fromARGB(255, 240, 251, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Color(0xFFAA1F24)),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.black), // Set text color to black
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
                  onEnter: (_) {
                    if (!_isBackHovered) {
                      setState(() => _isBackHovered = true);
                    }
                  },
                  onExit: (_) {
                    if (_isBackHovered) {
                      setState(() => _isBackHovered = false);
                    }
                  },
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CardioVistaApp()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: _isBackHovered ? Colors.black : Colors.white,
                      backgroundColor: _isBackHovered ? Color(0xFFAA1F24) : Color.fromARGB(255, 240, 251, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Color(0xFFAA1F24) ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Back',
                        style: TextStyle(color: Colors.black), // Set text color to black
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, TextEditingController controller) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      margin: EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Color(0xFFAA1F24)),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Color(0xFFAA1F24)),
          border: InputBorder.none,
        ),
        style: TextStyle(color: Color(0xFFAA1F24)),
      ),
    );
  }
}
