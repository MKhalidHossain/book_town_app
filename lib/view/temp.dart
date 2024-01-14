// ignore_for_file: unused_field

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final Stream<QuerySnapshot> _detailsStream =
      FirebaseFirestore.instance.collection('book').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}




    // StreamBuilder(
    //     stream: _detailsStream,
    //     builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
    //       if (snapshot.hasError) {
    //         return Text('Something went wrong');
    //       }

    //       if (snapshot.connectionState == ConnectionState.waiting) {
    //         return Text("Loading");
    //       }
    //       return ListView(
    //         children: snapshot.data!.docs.map((DocumentSnapshot document) {
    //           Map<String, dynamic> data =
    //               document.data()! as Map<String, dynamic>;
    //           return Container(
    //             height: 400,
    //             child: Card(
    //               elevation: 5,
    //               shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(20)),
    //               child: Row(children: [
    //                 Expanded(child: Image.network(data['img'])),
    //                 Expanded(
    //                     child: Column(
    //                   children: [
    //                     Text(data['book_name']),
    //                     Text(data['edition']),
    //                     Text(data['price']),
    //                     // Text(data['Document ID']),
    //                     ElevatedButton(
    //                         onPressed: () {
    //                           customDialog(data['img'], data['book_name'],
    //                               data['edition'], data['price']);
    //                         },
    //                         child: Text("View Details"))
    //                   ],
    //                 )),
    //               ]),
    //             ),
    //           );
    //         }).toList(),
    //       );
    //     });
  // }

//   customDialog(
//     String img,
//     String book_name,
//     String edition,
//     String price,
//   ) {
//     return showDialog(
//         context: context,
//         builder: (context) {
//           return Dialog(
//             child: Container(
//               height: 300,
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Image.network(img),
//                     Text(book_name),
//                     Text(edition),
//                     Text(price),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         });
//   }
// }