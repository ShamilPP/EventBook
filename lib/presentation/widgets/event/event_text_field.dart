import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../application/providers/theme_provider.dart';

class EventTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String labelText;
  final int maxLines;
  final int maxLength;

  const EventTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.labelText,
    required this.maxLines,
    required this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (ctx, provider, child) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(
                '$labelText :',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              controller: textEditingController,
              textAlign: TextAlign.start,
              maxLines: maxLines,
              maxLength: maxLength,
              decoration: InputDecoration(
                filled: true,
                fillColor: provider.searchBackground,
                hintText: hintText,
                labelText: labelText,
                labelStyle: TextStyle(color: provider.iconColor),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.5,
                    color: provider.iconColor!,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.5,
                    color: provider.iconColor!,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
