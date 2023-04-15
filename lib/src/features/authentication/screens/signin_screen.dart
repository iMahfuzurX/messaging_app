import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:messaging_app/src/constants/colors.dart';

import '../../../constants/assets.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = '/signin-screen';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appColorWhite,
      appBar: AppBar(
        backgroundColor: appColorWhite,
        elevation: 0,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: appPrimaryDarkColor),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.chevron_left,
            color: appPrimaryDarkColor,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            './ Login',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: appPrimaryDarkColor),
          ),
          // Container(
          //   width: double.maxFinite,
          //   alignment: Alignment.centerRight,
          //   margin: EdgeInsets.only(right: 20),
          //   child: CircleAvatar(
          //     backgroundColor: appPrimaryColor,
          //     child: IconButton(
          //       onPressed: () => null,
          //       icon: Icon(
          //         Icons.chevron_left,
          //         color: appPrimaryDarkColor,
          //       ),
          //     ),
          //   ),
          // ),
          // Stack(
          //   children: [
          //     /*Container(
          //       width: double.maxFinite,
          //       child: Image.asset(
          //         topBarBackgroundImage,
          //         fit: BoxFit.cover,
          //       ),
          //     ),*/
          //     Positioned(
          //       top: 48,
          //       left: 15,
          //       child: Text(
          //         './ Login',
          //         style: Theme.of(context)
          //             .textTheme
          //             .headlineMedium
          //             ?.copyWith(color: appPrimaryDarkColor),
          //       ),
          //     ),
          //     Positioned(
          //       top: deviceSize.height * 0.175,
          //       right: 20,
          //       child: CircleAvatar(
          //         backgroundColor: appPrimaryColor,
          //         child: IconButton(
          //           onPressed: () => null,
          //           icon: Icon(
          //             Icons.chevron_left,
          //             color: appPrimaryDarkColor,
          //           ),
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          Form(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Email or phone',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red))),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              FilledButton(
                onPressed: () => null,
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
              Text('or'),
              SizedBox(
                height: 18,
              ),
              TextButton(
                onPressed: () => null,
                child: Text('Sign up now'),
                style: ButtonStyle(
                    // backgroundColor:
                    //     MaterialStatePropertyAll<Color>(appSecondaryColor),
                    foregroundColor:
                        MaterialStatePropertyAll<Color>(appPrimaryDarkColor),
                    minimumSize: MaterialStatePropertyAll<Size>(Size(
                        deviceSize.width * 0.8,
                        Theme.of(context).buttonTheme.height * 1.25))),
              )
            ],
          )
        ],
      ),
    );
  }
}
