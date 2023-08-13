
import 'package:checkscheme/_app/app.locator.dart';
import 'package:checkscheme/_app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final NavigationService navigationService = locator<NavigationService>();
 @override
  void initState() {
   Future.delayed(Duration(seconds: 5)).then((value) => navigationService.pushNamedAndRemoveUntil(Routes.landingScreen));

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text("Splash Screen", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28),),),
    );
  }
}
