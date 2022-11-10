import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_praktikum_pbm/model.dart';
import 'package:uts_praktikum_pbm/main_menu.dart';
import 'package:uts_praktikum_pbm/pesan.dart';

class DetailPage extends StatelessWidget {
  final Hotel hotel;

  const DetailPage({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.blue.shade500,
      ),
      backgroundColor: Colors.blue.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(hotel.gambar),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        hotel.title,
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 51, 50, 50)),
                        textAlign: TextAlign.start,
                      ),
                      Row(
                        children: [
                          Text(
                            "${hotel.rating}",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Color.fromARGB(255, 53, 52, 52)),
                            textAlign: TextAlign.left,
                          ),
                          RichText(
                              text: WidgetSpan(
                                  child: Icon(
                            Icons.star,
                            color: Colors.yellow.shade700,
                            size: 19,
                          )))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                            child: Icon(
                          Icons.location_on_outlined,
                          color: Color.fromARGB(255, 68, 66, 66),
                          size: 40,
                        )),
                      ]),
                    ),
                    Text(
                      hotel.description,
                      style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 46, 45, 45)),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(children: [
                          WidgetSpan(
                              child: Icon(
                            Icons.phone_rounded,
                            color: Color.fromARGB(255, 68, 66, 66),
                            size: 30,
                          )),
                        ]),
                      ),
                    ),
                    Text(
                      hotel.telp,
                      style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 41, 40, 40)),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(children: [
                          WidgetSpan(
                              child: Icon(
                            Icons.monetization_on_outlined,
                            color: Color.fromARGB(255, 68, 66, 66),
                            size: 30,
                          )),
                        ]),
                      ),
                    ),
                    Text(
                      hotel.harga,
                      style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 41, 40, 40)),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            backgroundColor: Color.fromARGB(255, 255, 142, 134),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Booking()));
                        },
                        child: Text(
                          'Check In',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class BookDetail extends StatelessWidget {
//   final BookModel bookModel;
//   const BookDetail({super.key, required this.bookModel});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

    
//     )
// //       body: SafeArea(
//         child: Column(
//           children: [
//             Image.network(bookModel.imageid),
//             const SizedBox(
//               height: 24,
//             ),
//             Text(
//               bookModel.name,
//               style: const TextStyle(
//                 fontWeight: FontWeight.w700,
//                 fontSize: 24.0,
//               ),
//             ),
//             const SizedBox(
//               height: 24,
//             ),
//             Text(
//               book.description,
//               style: const TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 12.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
