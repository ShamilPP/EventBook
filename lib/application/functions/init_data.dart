import 'package:flutter/material.dart';

import '../../presentation/screens/home/home_screen.dart';

void initData(BuildContext ctx) async {
  // check permission, if permission denied show dialog
  // get hive data
  // get themes
  await Future.delayed(const Duration(milliseconds: 500));
  Navigator.pushReplacement(
      ctx, MaterialPageRoute(builder: (_) => const HomeScreen()));
}
