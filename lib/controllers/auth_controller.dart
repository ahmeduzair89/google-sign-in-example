import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_signin_example/repo/auth_repo.dart';

class AuthController extends GetxController {
  User? user;
  AuthRepo _repo = AuthRepo();
  bool isLodingState = false;
  handleGoogleSignin() async {
    isLodingState = true;
    update();
    try {
      user = await _repo.signInWithGoogle();
      isLodingState = false;
      update();
    } catch (e) {
      Get.showSnackbar(GetSnackBar(
        title: "Google sign in failed",
        message: e.toString(),
      ));
    }
  }

  handleGoogleSignOut() async {
    isLodingState = true;
    update();
    await _repo.signInWithGoogle();
    user = null;
    isLodingState = false;
    update();
  }
}
