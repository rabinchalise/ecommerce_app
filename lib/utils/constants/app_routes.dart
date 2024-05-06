import 'package:get/get.dart';
import 'package:shop/features/authentication/screens/login/login.dart';
import 'package:shop/features/authentication/screens/onboarding/onboarding.dart';
import 'package:shop/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:shop/features/authentication/screens/signup/signup.dart';
import 'package:shop/features/authentication/screens/signup/verify_email.dart';
import 'package:shop/features/personalizations/screens/address/adress.dart';
import 'package:shop/features/personalizations/screens/profile/profile.dart';
import 'package:shop/features/personalizations/screens/settings/settings.dart';
import 'package:shop/features/shop/screens/cart/cart.dart';
import 'package:shop/features/shop/screens/checkout/checkout.dart';
import 'package:shop/features/shop/screens/home/home.dart';
import 'package:shop/features/shop/screens/orders/orders.dart';
import 'package:shop/features/shop/screens/product-review/product_review.dart';
import 'package:shop/features/shop/screens/store/store.dart';
import 'package:shop/features/shop/screens/whishlist/whishlist.dart';
import 'package:shop/utils/constants/routes.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: Routes.home, page: () => const HomeScreen()),
    GetPage(name: Routes.store, page: () => const Store()),
    GetPage(name: Routes.favourites, page: () => const Favoritescreen()),
    GetPage(name: Routes.settings, page: () => const SettingsScreen()),
    GetPage(
        name: Routes.productReviews, page: () => const ProductReviewScreen()),
    GetPage(name: Routes.order, page: () => const OrderScreen()),
    GetPage(name: Routes.checkout, page: () => const CheckoutScreen()),
    GetPage(name: Routes.cart, page: () => const CartScreen()),
    GetPage(name: Routes.userProfile, page: () => const ProfileScreen()),
    GetPage(name: Routes.userAddress, page: () => const AddressScreen()),
    GetPage(name: Routes.signUp, page: () => const SignUpScreen()),
    GetPage(name: Routes.verifyEmail, page: () => const VerifyEmailScreen()),
    GetPage(name: Routes.signIn, page: () => const LoginScreen()),
    GetPage(
        name: Routes.forgetPassword, page: () => const ForgetPasswordScreen()),
    GetPage(name: Routes.onBoarding, page: () => const OnBoardingScreen()),
  ];
}
