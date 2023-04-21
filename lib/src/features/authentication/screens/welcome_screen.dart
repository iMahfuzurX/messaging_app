import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:messaging_app/src/common_widgets/buttons/primary_button.dart';
import 'package:messaging_app/src/common_widgets/buttons/secondary_button.dart';

import '../../../../src/constants/assets.dart';
import '../../../constants/colors.dart';
import 'signin_screen.dart';
import 'signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome-screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appColorWhite,
      appBar: AppBar(
        backgroundColor: appColorWhite,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.language,
            color: appPrimaryDarkColor,
          ),
          onPressed: () => null,
        ),
        actions: [
          IconButton(
            onPressed: () => null,
            icon: Icon(
              Icons.bug_report,
              color: appPrimaryDarkColor,
            ),
          )
        ],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: appPrimaryDarkColor,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Messaging',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                'easier than ever',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
          Container(
            height: deviceSize.height * 0.3,
            alignment: Alignment.center,
            child: Image.asset(
              typingBannerImage,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Hero(
                tag: 'btn-signin',
                child: MPrimaryButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(SignInScreen.routeName),
                  title: 'Sign in',
                  minimumSize: Size(
                    deviceSize.width * 0.8,
                    Theme.of(context).buttonTheme.height * 1.25,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Hero(
                tag: 'btn-signup',
                child: MSecondaryButton(
                  onPressed: () => Navigator.pushNamed(context, SignUpScreen.routeName),
                  title: 'Create an account',
                  minimumSize: Size(deviceSize.width * 0.8,
                      Theme.of(context).buttonTheme.height * 1.25),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
