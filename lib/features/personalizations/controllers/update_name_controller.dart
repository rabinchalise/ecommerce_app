import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shop/data/repositories/user/user_repository.dart';
import 'package:shop/features/personalizations/controllers/user_controllers.dart';
import 'package:shop/features/personalizations/screens/profile/profile.dart';
import 'package:shop/utils/constants/image_string.dart';
import 'package:shop/utils/networks/network_manager.dart';
import 'package:shop/utils/popups/full_screen_loader.dart';
import 'package:shop/utils/popups/loaders.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateNameFormKey = GlobalKey<FormState>();

  //init user data when home screen appear
  @override
  void onInit() {
    super.onInit();
    initalizeName();
  }

  Future<void> initalizeName() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateName() async {
    try {
      FullScreenLoader.openLoadingDailog(
          'We are updating your infromation....', TImage.docerAnimation);
      final isConnected = await NetworkManager.instance.isConnected();

      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      if (!updateNameFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

      // update user first name and last name in firebase firestore

      Map<String, dynamic> name = {
        'FirstName': firstName.text.trim(),
        'LastName': lastName.text.trim()
      };
      await userRepository.updateSinglefield(name);

      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      FullScreenLoader.stopLoading();

      Loaders.successSnackBar(
          title: 'Congratulations', message: 'Your Name has been updated');

      Get.off(() => const ProfileScreen());
    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'On Snap!', message: e.toString());
    }
  }
}
