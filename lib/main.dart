import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cmp_developers/views/screens/create_account_child.dart';
import 'package:flutter_cmp_developers/views/screens/forgot_password.dart';
import 'package:flutter_cmp_developers/views/screens/horizontalScrollScreen.dart';
import 'package:flutter_cmp_developers/views/screens/new_password_create.dart';
import 'package:flutter_cmp_developers/views/screens/otp_screen.dart';
import 'package:flutter_cmp_developers/views/screens/send_request.dart';
import 'package:flutter_cmp_developers/views/screens/sessionexpired.dart';
import 'package:flutter_cmp_developers/views/screens/sign_in.dart';

import 'views/screens/create_account.dart';
import 'views/screens/first_screen.dart';
import 'views/screens/home.dart';

import 'package:get/get.dart';

import 'views/screens/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor:
            Colors.transparent // set the status bar color to transparent
        ),
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tap Cash',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xffe26477),
        fontFamily: 'Roboto', // set default font family
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white), // set default text color
        ),
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
            name: "/ExpiredScreen", page: () => const expiredPasswordInput()),
        GetPage(name: "/HomeScreen", page: () => const horizontalScroll()),
        GetPage(name: "/SignUp", page: () => const SignUp()),
        GetPage(
          name: "/SignUpChild",
          page: () => const CreateAccountChild(),
        ),
        GetPage(name: "/SignIn", page: () => SignIn()),
        GetPage(name: "/SplashPage", page: () => const SplashPage()),
        GetPage(name: "/FirstScreen", page: () => const FirstScreen()),
        GetPage(name: "/ForgetPassword", page: () => const ForgotPassword()),
        GetPage(
            name: "/NewPasswordCreate", page: () => const NewPasswordCreate()),
        GetPage(name: "/OneTimePassword", page: () => const OneTimePassword()),
        GetPage(name: "/SebndReceive", page: () => SendReceive()),
        GetPage(
            name: "/horizontalScroll", page: () => const horizontalScroll()),
      ],
      routes: {
        FirstScreen.routeName: (ctx) => const FirstScreen(),
        SignUp.routeName: (ctx) => const SignUp(),
        CreateAccountChild.routeName: (ctx) => const CreateAccountChild(),
        ForgotPassword.routeName: (ctx) => const ForgotPassword(),
        NewPasswordCreate.routeName: (ctx) => const NewPasswordCreate(),
        OneTimePassword.routeName: (ctx) => const OneTimePassword(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        SendReceive.routeName: (ctx) => SendReceive(),
        horizontalScroll.routeName: (ctx) => const horizontalScroll(),
      },
      home: const SplashPage(),
    );
  }
}
