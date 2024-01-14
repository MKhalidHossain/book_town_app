import 'package:book_town/screen/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseController extends GetxController {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> getProducts() {
    return _firestore.collection('books').snapshots();
  }

  // void delectProducts({required String id}) async {
  //   Get.defaultDialog(
  //     middleText: 'Are you sure want delete',
  //     confirm: TextButton(
  //       onPressed: () async {
  //         await _firestore.collection('products').doc(id).delete();
  //         Get.back();
  //         Get.snackbar(
  //           'Succeed',
  //           'Product deleted',
  //           backgroundColor: Colors.white,
  //         );
  //       },
  //       child: KText(
  //         text: 'Confirm',
  //       ),
  //     ),
  //   );
  // }

  // void addProducts() async {
  //   await _firestore.collection('products').add({
  //     'title': 'Snakers shoes',
  //     'price': 1550.0,
  //     'rating': 4.5,
  //     'offer': 10,
  //     'thumbnail':
  //         'https://firebasestorage.googleapis.com/v0/b/ecommerce-app-27df5.appspot.com/o/shoes_2.png?alt=media&token=bcd903c0-2bb0-4cc8-80a3-ef32cba693ff'
  //   });
  //   Get.back();
  //   Get.snackbar('Succeed', 'Product Added');
  // }

  // void updateProducts({required String id}) async {
  //   Get.defaultDialog(
  //     middleText: 'Are you sure want updated',
  //     confirm: TextButton(
  //       onPressed: () async {
  //         await _firestore.collection('products').doc(id).update({
  //           'title': 'ZERO TITLE',
  //           'price': '0.0',
  //           'offer': '0',
  //           'rating': '0.0',
  //         });
  //         Get.back();
  //         Get.snackbar(
  //           'Succeed',
  //           'Product updated',
  //           backgroundColor: Colors.white,
  //         );
  //       },
  //       child: KText(
  //         text: 'Confirm',
  //       ),
  //     ),
  //   );
  // }
   logout() async {
    try {
      await _auth.signOut();

      Get.offAll(() => SignIn());
    } catch (e) {
      print(e);
    }
  }
}