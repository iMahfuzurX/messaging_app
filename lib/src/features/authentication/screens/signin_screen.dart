import 'package:flutter/material.dart';
import 'package:messaging_app/src/common_widgets/buttons/primary_button.dart';
import 'package:messaging_app/src/common_widgets/textfields/text_form_field.dart';
import 'package:messaging_app/src/constants/colors.dart';
import 'package:messaging_app/src/features/apphome/screens/home_screen.dart';
import 'package:messaging_app/src/features/authentication/screens/signup_screen.dart';

import '../../../common_widgets/buttons/navigation_button.dart';
import '../../../common_widgets/buttons/outlined_button.dart';
import '../../../common_widgets/overlays/top_bar_overlay.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = '/signin-screen';

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appColorWhite,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: deviceSize.height * 0.4,
              child: Stack(
                children: [
                  Container(
                    width: deviceSize.width,
                    height: deviceSize.height * 0.375,
                    // color: Colors.indigo,
                    child: CustomPaint(
                      painter: TopBarPainter(appPrimaryDarkColor),
                    ),
                  ),
                  Positioned(
                    right: deviceSize.width * 0.05,
                    // top: deviceSize.height * 0.125,
                    top: deviceSize.height * 0.275,
                    child: Text(
                      './ Login',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: appPrimaryDarkColor),
                    ),
                  ),
                  Positioned(
                    left: deviceSize.width * 0.05,
                    // top: deviceSize.height * 0.275,
                    top: deviceSize.height * 0.125,
                    child: MNavigationButton(),
                  ),
                ],
              ),
            ),
            Container(
              height: deviceSize.height * 0.3,
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 16.0),
                  child: Column(
                    children: [
                      MTextFormField(
                        hintText: 'Email or phone',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MTextFormField(
                        obscure: true,
                        hintText: 'Password',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: deviceSize.height * 0.3,
              child: Column(
                children: [
                  Hero(
                    tag: 'btn-signin',
                    child: MPrimaryButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, AppHomeScreen.routeName),
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
                  Text('or'),
                  SizedBox(
                    height: 18,
                  ),
                  Hero(
                    tag: 'btn-signup',
                    child: MOutlinedButton(
                      onPressed: () => Navigator.pushReplacementNamed(
                          context, SignUpScreen.routeName),
                      title: 'Sign up now',
                      // overlayColor: appSecondaryColor,
                      minimumSize: Size(deviceSize.width * 0.8,
                          Theme.of(context).buttonTheme.height * 1.25),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
