import 'package:flutter/material.dart';

import '../../../application/functions/init_data.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double animation = 0;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 100)).then((value) {
      setState(() {
        animation = 200;
      });
    });

    initData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          height: animation,
          width: animation,
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}
