import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shop/bindings/general_bindings.dart';
import 'package:shop/firebase_options.dart';
import 'package:shop/utils/constants/app_routes.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/theme/theme.dart';

import 'data/repositories/authentication/authentication_repository.dart';

void main() async {
  await GetStorage.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      getPages: AppRoutes.pages,
      home: const Scaffold(
          backgroundColor: TColor.kPrimaryColor,
          body: Center(child: CircularProgressIndicator(color: Colors.white))),
    );
  }
}
