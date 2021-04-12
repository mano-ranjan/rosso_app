import 'package:flutter/material.dart';

class GreetingPage extends StatelessWidget {
  final String name;
  final String no;
  final String mail;
  const GreetingPage(this.name, this.no, this.mail);
  Widget cardFunc(String label) {
    return Card(
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        child: Text(
          '$label',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Rosso'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(
                Icons.delete,
                size: 32,
              ),
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => SignUp()));
              },
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .4,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.brown, width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  cardFunc('$name'),
                  cardFunc('$no'),
                  cardFunc('$mail'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
