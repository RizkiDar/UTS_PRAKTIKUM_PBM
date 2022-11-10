import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_praktikum_pbm/login.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Column(children: [
      Container(
        color: Colors.blue.shade500,
        width: double.infinity,
        height: 100,
        padding: EdgeInsets.only(left: 20.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.zero,
            width: 50,
            height: 50,
            child: CircleAvatar(backgroundImage: AssetImage('image/user.png')),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.only(right: 40),
                  child: Text(
                    "Hai, User123!",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.start,
                  )),
              Text(
                "user123@gmail.com",
                style: TextStyle(
                    color: Color.fromARGB(92, 255, 255, 255),
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ]),
      ),
      SizedBox(
        height: 15,
      ),
      Container(
        child: InkWell(
          child: Text(
            "Log out",
            style: GoogleFonts.poppins(
              decoration: TextDecoration.underline,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 131, 131, 131),
            ),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
                ));
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
      )
    ]);
  }
}
