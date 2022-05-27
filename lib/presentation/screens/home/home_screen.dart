import 'package:event_book/presentation/screens/home/widgets/event_list.dart';
import 'package:event_book/presentation/screens/home/widgets/event_search.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const EventSearch(),
            EventList(),
          ],
        ),
      ),
    );
  }
}
