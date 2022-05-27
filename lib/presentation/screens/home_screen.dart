import 'package:flutter/material.dart';

import '../widgets/home/event_list.dart';
import '../widgets/home/event_search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            EventSearch(),
            EventList(),
          ],
        ),
      ),
    );
  }
}
