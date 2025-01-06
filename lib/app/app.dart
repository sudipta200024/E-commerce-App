import 'package:ecommerce/app/controller_binder.dart';
import 'package:ecommerce/features/auth/ui/screens/email_verification_screen.dart';
import 'package:ecommerce/features/common/ui/screens/main_bottom_nav_screen.dart';
import 'package:ecommerce/features/product/ui/screens/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import '../features/auth/ui/screens/complete_profile_screen.dart';
import '../features/auth/ui/screens/otp_verification_screen.dart';
import '../features/auth/ui/screens/splash_screen.dart';
import '../features/category/ui/screens/category_list_screen.dart';
import '../features/product/ui/screens/product_list_screen.dart';
import 'app_theme_data.dart';

class CraftyBay extends StatefulWidget {
  const CraftyBay({super.key});

  @override
  State<CraftyBay> createState() => _CraftyBayState();
}

class _CraftyBayState extends State<CraftyBay> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      theme: AppThemeData.lightThemeData,
      darkTheme: AppThemeData.darkThemeData,
      initialBinding: ControllerBinder(),
      onGenerateRoute: (RouteSettings settings){
        late Widget widget;

        if(settings.name==SplashScreen.name){
          widget = const SplashScreen();
        }else if(settings.name==EmailVerificationScreen.name){
          widget = const EmailVerificationScreen();
        }else if(settings.name==OTPVerificationScreen.name){
          widget = const OTPVerificationScreen();
        }else if(settings.name==CompleteProfileScreen.name){
          widget = const CompleteProfileScreen();
        }else if(settings.name==MainBottomNavScreen.name){
          widget = const MainBottomNavScreen();
        }else if(settings.name==CategoryListScreen.name){
          widget = const CategoryListScreen();
        }else if(settings.name==ProductListScreen.name){
          String name = settings.arguments as String;
          widget = ProductListScreen(categoryName: name,);
        }else if(settings.name==ProductDetailsScreen.name){
          int productId = settings.arguments as int;
          widget = ProductDetailsScreen(productId:productId,);
        }
        return MaterialPageRoute(
            builder: (ctx){
          return widget;
        });
      },
    );
  }
}
