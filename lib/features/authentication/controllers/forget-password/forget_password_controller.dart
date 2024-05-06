import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shop/data/repositories/authentication/authentication_repository.dart';
import 'package:shop/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:shop/utils/constants/image_string.dart';
import 'package:shop/utils/networks/network_manager.dart';
import 'package:shop/utils/popups/full_screen_loader.dart';
import 'package:shop/utils/popups/loaders.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordKey = GlobalKey<FormState>();

  sendPasswordResetEmail() async {
    try {
      FullScreenLoader.openLoadingDailog(
          'Procesing your Request...', TImage.docerAnimation);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      if (!forgetPasswordKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance
          .sendPasswordResetEmails(email.text.trim());

      FullScreenLoader.stopLoading();

      Loaders.successSnackBar(
          title: 'Email sent', message: 'Email Link sent to Reset Password'.tr);
      Get.to(() => ResetPasswordScreen(email: email.text.trim()));
    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'On Snap!', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      FullScreenLoader.openLoadingDailog(
          'Procesing your Request...', TImage.docerAnimation);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance.sendPasswordResetEmails(email);

      FullScreenLoader.stopLoading();

      Loaders.successSnackBar(
          title: 'Email sent', message: 'Email Link sent to Reset Password'.tr);
    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'On Snap!', message: e.toString());
    }
  }
}
