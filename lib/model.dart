// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

// import 'dart:convert';

// class BookModel {
//   BookModel({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.published,
//     required this.blinding,
//     required this.writer,
//     required this.imageid,
//     required this.price,
//   });

//   String id;
//   String name;
//   String description;
//   String published;
//   String blinding;
//   String writer;
//   String imageid;
//   String price;

//   factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
//         id: json["id"],
//         name: json["name"],
//         description: json["description"],
//         published: json["published"],
//         blinding: json["blinding"],
//         writer: json["writer"],
//         imageid: json["imageid"],
//         price: json["price"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "description": description,
//         "published": published,
//         "blinding": blinding,
//         "writer": writer,
//         "imageid": imageid,
//         "price": price,
//       };
// }

// List<BookModel> parse(String? json) {
//   if (json == null) {
//     return [];
//   }

//   final List parsed = jsonDecode(json)['book'];
//   return parsed.map((data) => BookModel.fromJson(data)).toList();
// }
class Hotel {
  final String title;
  final String description;
  final double rating;
  final String gambar;
  final String harga;
  final String telp;

  const Hotel({
    required this.title,
    required this.description,
    required this.rating,
    required this.gambar,
    required this.harga,
    required this.telp,
  });
}

const List<Hotel> listHotel = [
  Hotel(
      title: "Arya Hotel",
      description:
          "Jl. Siliwangi Jl. Tlk. Jambe Utara No.Selatan, Kadipaten, Kec. Kadipaten, Kabupaten Majalengka, Jawa Barat 45452",
      rating: 4.1,
      gambar: "image/arya.jpg",
      harga: "Rp. 230.000/malam",
      telp: "(0233) 6540085"),
  Hotel(
      title: "Fitra Hotel",
      description:
          "Jl. K.H.Abdul Halim No.88, Munjul, Kec. Majalengka, Kabupaten Majalengka, Jawa Barat 45418",
      rating: 4.8,
      gambar: "image/fitra.jpg",
      harga: "Rp. 250.000/malam",
      telp: "(0233) 8890342"),
  Hotel(
      title: "Garden Hotel",
      description:
          "Jl. K.H.Abdul Halim No.1, Munjul, Kec. Majalengka, Kabupaten Majalengka, Jawa Barat 45418",
      rating: 4.4,
      gambar: "image/garden.jpg",
      harga: "Rp. 220.000/malam",
      telp: "(0233) 8886285"),
  Hotel(
      title: "Noni Hotel",
      description:
          "Jl. Ahmad Yani, Majalengka Wetan, Kec. Majalengka, Kabupaten Majalengka, Jawa Barat 45411",
      rating: 3.8,
      gambar: "image/Noni.jpg",
      harga: "Rp. 200.000/malam",
      telp: "(0233) 8811285"),
  Hotel(
      title: "Puri Elsas Hotel",
      description:
          "Belakang UNMA, Jl. Pemuda No.44, Majalengka Kulon, Kec. Majalengka, Kabupaten Majalengka, Jawa Barat 45418 ",
      rating: 3.4,
      gambar: "image/puri.jpg",
      harga: "Rp. 180.000/malam",
      telp: "(0233) 8291055"),
];
