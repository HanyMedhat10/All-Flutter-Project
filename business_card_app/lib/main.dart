import 'package:flutter/material.dart';

void main() {
  runApp(const BusnessCardApp());
}

class BusnessCardApp extends StatelessWidget {
  
  const BusnessCardApp({Key? key}) : super(key: key);
  @override
  Widget  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff2b475e),
        body: Column(
          children: [
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(999),
            //   child: Image.asset('images/tharwat.png',
            //   width: 200,
            //   ),
            // ),
            const Divider(
              height: 100,
            ),
            const CircleAvatar(
              radius: 122,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('images/tharwat.png'),
              ),
            ),
            const Text(
              'Hany Medhat Gamal',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Pacifico',
              ),
            ),
            const Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                color: Color(0xff6c8090),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Color(0xff6c8090),
              thickness: 2,
              indent: 60,
              endIndent: 60,
              height: 50,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 32,
                  color: Color(0xff2b475e),
                ),
                title: Text(
                  '(+20) 1279625051',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ),

            //   Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            //     //horizontal for right and left
            //     //vertical for top and bottom
            //     child: Container(
            //       decoration:BoxDecoration(
            //         borderRadius:BorderRadius.circular(8),
            //         color: Colors.white,
            //       ) ,
            //       height: 65,

            //       child: Row(
            //         children: [

            //           Padding(
            //             padding: const EdgeInsets.only(left: 8),
            //             child: Icon(Icons.phone,
            //             size: 32,
            //             color:  Color(0xff2b475e),
            //              ),
            //           ),
            //            Padding(
            //              padding: const EdgeInsets.only(left: 15),
            //              child: Text('(+20) 1279625051',
            //              style: TextStyle(
            //               fontSize: 24,
            //              ),
            //              ),
            //            ),

            //         ],
            //       ),
            //     ),
            //   ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                height: 65,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.mail,
                        size: 32,
                        color: Color(0xff2b475e),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Hany.Medhat24@gmail.com',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
