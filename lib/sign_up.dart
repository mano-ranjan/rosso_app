import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:info_app/greeting_page.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameController = TextEditingController();

  final phoneController = TextEditingController();

  final mailController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    phoneController.dispose();
    mailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Enter Details'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
          child: Container(
            height: MediaQuery.of(context).size.height * .4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(hintText: 'Enter your Full Name'),
                ),
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(hintText: 'Enter your Phone No'),
                ),
                TextField(
                  controller: mailController,
                  decoration: InputDecoration(hintText: 'Enter your Email Id'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GreetingPage(nameController.text,
                            phoneController.text, mailController.text)));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Define a custom Form widget.
// class MyCustomForm extends StatefulWidget {
//   @override
//   _MyCustomFormState createState() => _MyCustomFormState();
// }

// // Define a corresponding State class.
// // This class holds the data related to the Form.
// class _MyCustomFormState extends State<MyCustomForm> {
//   // Create a text controller and use it to retrieve the current value
//   // of the TextField.
//   final nameController = TextEditingController();
//   final phoneController = TextEditingController();
//   final mailController = TextEditingController();

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     myController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Fill this out in the next step.
//   }
// }
