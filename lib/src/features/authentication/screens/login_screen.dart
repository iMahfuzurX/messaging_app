import 'package:flutter/material.dart';
import 'package:messaging_app/src/constants/assets.dart';
import 'package:messaging_app/src/constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backGroundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                height: deviceSize.height * 0.3,
                child: Text(
                  'welcome',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              Spacer(),
              Spacer(),
              FilledButton(
                onPressed: () => null,
                child: Text('Sign in'),
                style: ButtonStyle(
                  minimumSize: MaterialStatePropertyAll<Size>(Size(
                      Theme.of(context).buttonTheme.minWidth * 3.5,
                      Theme.of(context).buttonTheme.height * 1.25)),
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(appPrimaryColor),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () => null,
                child: Text('Create an account'),
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  minimumSize: MaterialStatePropertyAll<Size>(Size(
                      Theme.of(context).buttonTheme.minWidth * 3.5,
                      Theme.of(context).buttonTheme.height * 1.25)),
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.white),
                  foregroundColor:
                      MaterialStatePropertyAll<Color>(appPrimaryColor),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
