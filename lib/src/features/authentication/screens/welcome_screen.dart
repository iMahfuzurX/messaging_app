import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../src/constants/assets.dart';
import '../../../constants/colors.dart';
import 'signin_screen.dart';

class WelcomeScreen extends StatelessWidget {
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
            Icons.menu,
            color: appPrimaryDarkColor,
          ),
          onPressed: () => null,
        ),
        actions: [
          IconButton(
            onPressed: () => null,
            icon: Icon(
              Icons.settings,
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
              FilledButton(
                onPressed: () => Navigator.of(context).pushNamed(SignInScreen.routeName),
                child: Text('Sign in'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(appPrimaryColor),
                    foregroundColor:
                        MaterialStatePropertyAll<Color>(appPrimaryDarkColor),
                    minimumSize: MaterialStatePropertyAll<Size>(Size(
                        deviceSize.width * 0.8,
                        Theme.of(context).buttonTheme.height * 1.25))),
              ),
              SizedBox(
                height: 18,
              ),
              FilledButton.tonal(
                onPressed: () => null,
                child: Text('Create an account'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(appSecondaryColor),
                    foregroundColor:
                        MaterialStatePropertyAll<Color>(appPrimaryDarkColor),
                    minimumSize: MaterialStatePropertyAll<Size>(Size(
                        deviceSize.width * 0.8,
                        Theme.of(context).buttonTheme.height * 1.25))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
