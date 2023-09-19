import 'package:flutter/material.dart';

void main() {
  runApp(BirthdayCard());
}

class BirthdayCard extends StatelessWidget {
  const BirthdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffd2bcd5),
        body: Center(
            child: Image(
          image: AssetImage('images/birthday.png'),
        )),
      ),
    );
  }
}
