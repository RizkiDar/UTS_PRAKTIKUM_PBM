import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_praktikum_pbm/main_menu.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainMenu()));
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Container(
                    height: 700,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('image/login.png'),
                            fit: BoxFit.cover)),
                    child: Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 25),
                                width: 300,
                                height: 100,
                                child: Text(
                                  "Terima kasih",
                                  style: GoogleFonts.poppins(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 114, 154, 223),
                                  ),
                                ),
                              )
                            ],
                          )
                        ]))))));
  }
}
