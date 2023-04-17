import 'package:flutter/material.dart';
import 'package:messaging_app/src/features/authentication/screens/signin_screen.dart';
import 'package:messaging_app/src/features/authentication/screens/test_paint.dart';
import 'package:messaging_app/src/features/authentication/screens/welcome_screen.dart';
import 'package:messaging_app/src/utils/themes/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      title: 'Messaging : Android',
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      // onGenerateRoute: ,
      // home: const WelcomeScreen(),
      routes: {
        '/': (ctx) => WelcomeScreen(),
        SignInScreen.routeName: (ctx) => SignInScreen(),
        TestPaintScreen.routeName: (ctx) => TestPaintScreen(),
      },
    );
  }
}
