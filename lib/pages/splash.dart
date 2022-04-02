import 'dart:async';

import 'package:bdtask_ecommerce_apps/pages/skip_page_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    hideStatusBar();
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const SkipPage1()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 152, 112, 228),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Color.fromARGB(255, 238, 206, 213),
                Color.fromARGB(255, 231, 180, 191),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            // image: new DecorationImage(
            //   image: ExactAssetImage('assets/gameleven.png'),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: Center(
            child: Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: 100.0,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: ExactAssetImage('assets/gameleven.png'),
                    fit: BoxFit.fill,
                  ),
                )),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Never called
    print("Disposing first route");
    super.dispose();
  }

  Future hideStatusBar() =>
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}
