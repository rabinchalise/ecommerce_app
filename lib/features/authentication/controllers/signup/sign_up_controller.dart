import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/data/repositories/authentication/authentication_repository.dart';
import 'package:shop/data/repositories/user/user_repository.dart';
import 'package:shop/features/authentication/models/users/users_model.dart';
import 'package:shop/features/authentication/screens/signup/verify_email.dart';
import 'package:shop/utils/constants/image_string.dart';
import 'package:shop/utils/networks/network_manager.dart';
import 'package:shop/utils/popups/full_screen_loader.dart';
import 'package:shop/utils/popups/loaders.dart';

class SignUpController extends GetxController {
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  static SignUpController get instance => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  final userName = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  GlobalKey<FormState> signUpFormkey = GlobalKey<FormState>();

  void signUp() async {
    try {
      // start loading
      FullScreenLoader.openLoadingDailog(
          'We are processing your information...', TImage.docerAnimation);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      // form Validation
      if (!signUpFormkey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

      // privacy policy check

      if (!privacyPolicy.value) {
        Loaders.warningSnackBar(
            title: 'Accept Privacy and Policy',
            message:
                'In order to create account, you must have read and accept Privacy Policy and Terms of Use');
        FullScreenLoader.stopLoading();
        return;
      }
      //Register user in firebase Authentication and save user data in firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      // save Authenticated user data in firesbase firestore
      final newUser = UserModel(
          id: userCredential.user!.uid,
          userName: firstName.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          profilePicture: userCredential.user!.photoURL ?? '');

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      FullScreenLoader.stopLoading();

      // show sucess message
      Loaders.successSnackBar(
          title: 'Congratulations',
          message: 'Your account has been created! Verify email to continue.');

      //move to verify email screen
      Get.to(() => VerifyEmailScreen(
            email: email.text.trim(),
          ));
    } catch (e) {
      FullScreenLoader.stopLoading();
      //show shome generic error to user
      Loaders.errorSnackBar(title: 'On Snap!', message: e.toString());
    }
  }
}
