import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messaging_app/src/features/apphome/screens/home_screen.dart';
import 'package:messaging_app/src/features/authentication/screens/signin_screen.dart';
import 'package:messaging_app/src/features/authentication/screens/signup_screen.dart';
import 'package:messaging_app/src/features/authentication/screens/welcome_screen.dart';
import 'package:messaging_app/src/features/chats/screens/chats_screen.dart';
import 'package:messaging_app/src/utils/themes/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      title: 'Messaging : Android',
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      // initialBinding: ,
      // onGenerateRoute: ,
      // home: const WelcomeScreen(),
      routes: {
        '/': (ctx) => WelcomeScreen(),
        SignInScreen.routeName: (ctx) => SignInScreen(),
        SignUpScreen.routeName: (ctx) => SignUpScreen(),
        AppHomeScreen.routeName: (ctx) => AppHomeScreen(),
        // ChatScreen.routeName: (ctx) => ChatScreen(),
      },
    );
  }
}
