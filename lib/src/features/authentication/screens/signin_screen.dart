import 'package:flutter/material.dart';
import 'package:messaging_app/src/common_widgets/buttons/primary_button.dart';
import 'package:messaging_app/src/common_widgets/textfields/text_form_field.dart';
import 'package:messaging_app/src/constants/colors.dart';

import '../../../common_widgets/overlays/top_bar_overlay.dart';
import 'test_paint.dart';

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
                      painter: TopBarPainter(Colors.black),
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
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: Icon(
                        Icons.chevron_left,
                        size: 28,
                        color: appPrimaryDarkColor,
                      ),
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(CircleBorder()),
                        backgroundColor:
                            MaterialStatePropertyAll(appColorWhite),
                        padding: MaterialStatePropertyAll(EdgeInsets.all(12)),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (states) {
                            if (states.contains(MaterialState.pressed))
                              return appPrimaryColor.withOpacity(0.2);
                          },
                        ),
                      ),
                    ),
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
                      onPressed: () => Navigator.pushNamed(
                          context, TestPaintScreen.routeName),
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
                    child: TextButton(
                      onPressed: () => null,
                      child: Text('Sign up now'),
                      style: ButtonStyle(
                          // backgroundColor:
                          //     MaterialStatePropertyAll<Color>(appSecondaryColor),
                          foregroundColor: MaterialStatePropertyAll<Color>(
                              appPrimaryDarkColor),
                          minimumSize: MaterialStatePropertyAll<Size>(Size(
                              deviceSize.width * 0.8,
                              Theme.of(context).buttonTheme.height * 1.25))),
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
