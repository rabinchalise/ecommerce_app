import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shop/common/widgets/sucess.dart';
import 'package:shop/data/repositories/authentication/authentication_repository.dart';
import 'package:shop/utils/constants/image_string.dart';
import 'package:shop/utils/constants/text_string.dart';
import 'package:shop/utils/popups/loaders.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  // send email whenever verify screen appears and set timer for auto redirect

  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    checkEmailVerificationStatus();
    super.onInit();
  }

  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerifications();
      Loaders.successSnackBar(
          title: 'Email Sent',
          message: 'Please check your inbox and verify emaail.');
    } catch (e) {
      Loaders.errorSnackBar(title: 'On Snap!', message: e.toString());
    }
  }

  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => SucessScreen(
            imageUrl: TImage.sucessfullyRegisterAnimation,
            title: TText.yourAccountCreatedTitle,
            subTitle: TText.yourAccountCreatedSubTitle,
            onPressed: () =>
                AuthenticationRepository.instance.screenRedirect()));
      }
    });
  }

  checkEmailVerificationStatus() {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(() => SucessScreen(
          imageUrl: TImage.sucessfullyRegisterAnimation,
          title: TText.yourAccountCreatedTitle,
          subTitle: TText.yourAccountCreatedSubTitle,
          onPressed: () => AuthenticationRepository.instance.screenRedirect()));
    }
  }
}
