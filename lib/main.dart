import 'package:flutter/material.dart';
import 'package:info_app/greeting_page.dart';
import 'package:info_app/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Rosso'),
        actions: [
          ElevatedButton(
            child: Text(
              'LOGIN',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.orange),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SignUp()));
            },
          )
        ],
      ),
      body: (Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            flex: 8,
            child: Opacity(
              opacity: 0.8,
              child: Image.asset(
                'images/bg.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              color: Colors.brown[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rosso',
                    style: TextStyle(
                        color: Colors.black, fontSize: 20, letterSpacing: 1),
                  ),
                  Text(
                    'Bangalore',
                    style: TextStyle(
                        color: Colors.black, fontSize: 20, letterSpacing: 1),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Cuisines'), Text('Veg'), Text('NonVeg')],
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
