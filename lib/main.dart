import 'package:flutter/material.dart';
import 'signin.dart'; // Import the Sign In page


void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardio Vista',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Color.fromARGB(255, 240, 251, 255),
      ),
      home: CardioVistaHomePage(),
    );
  }
}

class HoverButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const HoverButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _onHover(true),
      onExit: (event) => _onHover(false),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: Text(widget.text),
        style: ElevatedButton.styleFrom(
          backgroundColor: _isHovered ? Colors.red : Theme.of(context).scaffoldBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Color(0xFFAA1F24)),
          ),
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}

class CardioVistaHomePage extends StatelessWidget {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Heart-shaped logo (you can replace this with your own image)
            Icon(
              Icons.favorite,
              size: 80,
              color: Colors.red,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Cardio Vista',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Create an account to get started on your health and happiness journey.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox( // Wrap the buttons with SizedBox to control width
              width: 200, // Set desired width
              child: HoverButton(
                text: 'SIGN IN',
                onPressed: () {
                  Navigator.push( // Navigate to Sign In page
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox( // Wrap the buttons with SizedBox to control width
              width: 200, // Set desired width
              child: HoverButton(
                text: 'SIGN UP',
                onPressed: () {
                  Navigator.push( // Navigate to Sign Up page
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
