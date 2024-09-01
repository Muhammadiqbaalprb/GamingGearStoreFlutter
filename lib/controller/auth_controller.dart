import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  var isLoading = false.obs;

  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  void login(String email, String password) async {
    try {
      isLoading(true);
      final UserCredential myUser = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (myUser.user!.emailVerified) {
        Get.offAllNamed('/home');
      } else {
        Get.defaultDialog(
            title: "Verifikasi email",
            middleText: "Harap verifikasi email terlebih dahulu");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      Get.defaultDialog(
          title: "Terjadi Kesalahan", middleText: "Tidak dapat login ini");
    } finally {
      isLoading(false);
      return;
    }
  }

  void register(String email, String password) async {
    try {
      isLoading(true);
      final UserCredential credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await _firestore
          .collection("users")
          .doc(credential.user!.uid)
          .set({"email": email, 'uid': credential.user!.uid});
      Get.defaultDialog(
          title: "Verifikasi email",
          middleText: "Silahkan cek email verifikasi kamu",
          onConfirm: () {
            Get.back(); //close dialog
            Get.back(); //go to login
          },
          textConfirm: 'Ok');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        Get.defaultDialog(
          title: "Terjadi Kesalahan",
          middleText: "The password provided is too weak",
        );
      } else if (e.code == 'email telah digunakan') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
  }

  void logout() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed('/login');
  }
}
