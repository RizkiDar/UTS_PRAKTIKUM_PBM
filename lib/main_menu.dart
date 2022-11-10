import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_praktikum_pbm/detail.dart';
import 'package:uts_praktikum_pbm/drawer.dart';
import 'package:uts_praktikum_pbm/model.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Container(
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Icon(
        //             Icons.menu,
        //             color: Colors.white,
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        centerTitle: true,
        title: RichText(
          text: TextSpan(children: [
            TextSpan(
              text: "N G I N E P ",
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
            ),
            WidgetSpan(
                child: Icon(
              Icons.king_bed_rounded,
              color: Colors.white,
            ))
          ]),
        ),
        backgroundColor: Colors.blue.shade500,
      ),
      backgroundColor: Colors.blue.shade200,
      body: SafeArea(
          child: ListView.builder(
        itemCount: listHotel.length,
        itemBuilder: (context, index) {
          final item = listHotel[index];
          return Padding(
            padding: EdgeInsets.all(3),
            child: Container(
              height: 80,
              child: Card(
                elevation: 10,
                child: Center(
                  child: ListTile(
                    title: Text(item.title,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Color.fromARGB(255, 49, 48, 48),
                            fontWeight: FontWeight.bold)),
                    leading: Container(
                      width: 80,
                      height: 80,
                      color: Colors.amber,
                      child: Image.asset(
                        "${item.gambar}",
                        fit: BoxFit.cover,
                      ),
                    ),
                    trailing: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "${item.rating}",
                          style: GoogleFonts.poppins(
                              color: Color.fromARGB(255, 54, 53, 53),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      WidgetSpan(
                          child: Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 25,
                      ))
                    ])),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(hotel: item)),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      )),
      drawer: Container(
        width: MediaQuery.of(context).size.width * .6,
        child: Drawer(
            backgroundColor: Colors.white,
            child: SingleChildScrollView(
              child: Container(
                  child: Column(
                children: [
                  DrawerPage(),
                ],
              )),
            )),
      ),
    );
    ;
  }
}
    
//         body: FutureBuilder<String>(
//       future: DefaultAssetBundle.of(context).loadString('assets/list.json'),
//       builder: (context, snapshot) {
//         List<BookModel> books = parse(snapshot.data);

//         return ListView.builder(
//           itemCount: books.length,
//           itemBuilder: (context, index) {
//             return InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => BookDetail(bookModel: books[index]),
//                   ),
//                 );
//               },
//               child: ListTile(
//                 leading: Image.network(books[index].imageid),
//                 title: Text(books[index].name),
//                 contentPadding: const EdgeInsets.all(
//                   8.0,
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     ));
//   }
// }
