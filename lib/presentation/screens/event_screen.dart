import 'package:event_book/presentation/widgets/theme_section.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../application/models/event.dart';
import '../../../application/providers/theme_provider.dart';
import '../widgets/event/event_date_field.dart';
import '../widgets/event/event_text_field.dart';

class EventScreen extends StatelessWidget {
  final Event event;

  const EventScreen({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (ctx, provider, child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: provider.backgroundColor,
          elevation: 0,
          actions: const [
            ThemeSection(),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              EventTextField(
                textEditingController: TextEditingController(text: event.title),
                labelText: 'Title',
                hintText: 'Your event title',
                maxLines: 1,
                maxLength: 20,
              ),
              EventTextField(
                textEditingController: TextEditingController(text: event.desc),
                labelText: "Description",
                hintText: 'Your event description',
                maxLines: 5,
                maxLength: 180,
              ),
              EventDateField(),
            ],
          ),
        ),
      );
    });
  }
}
