import 'package:flutter/material.dart';
import 'package:marvel_app/domain/core/custom_colors.dart';
import 'package:marvel_app/screen/home/home_page.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marvel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.black87,
        ),
      ),
      home: SplashScreenView(
        navigateRoute: const HomePage(),
        duration: 3000,
        imageSize: 130,
        imageSrc: "assets/images/splash_logo.gif",
        backgroundColor: CustomColors.splashLogo,
      ),
    );
  }
}
