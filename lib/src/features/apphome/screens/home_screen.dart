import 'package:flutter/material.dart';

class AppHomeScreen extends StatelessWidget {
  static const routeName = '/apphome-screen';
  const AppHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
