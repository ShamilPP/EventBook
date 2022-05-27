import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../application/providers/theme_provider.dart';

class EventDateField extends StatelessWidget {
  EventDateField({Key? key}) : super(key: key);

  final ValueNotifier<DateTime> date = ValueNotifier(DateTime.now());
  final List<String> days = [
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun",
  ];

  final List<String> mounts = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sept",
    "Oct",
    "Nov",
    "Dec",
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (ctx, provider, child) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Text(
                'Date :',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              decoration: BoxDecoration(
                color: provider.searchBackground,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1.5,
                  color: provider.iconColor!,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ValueListenableBuilder<DateTime>(
                      valueListenable: date,
                      builder: (ctx, newDate, child) {
                        return Text(
                          "${days[newDate.weekday - 1]}, ${mounts[newDate.month - 1]} ${newDate.day}",
                          style: const TextStyle(fontSize: 20),
                        );
                      }),
                  InkWell(
                    child: const Icon(
                      Icons.date_range_outlined,
                      size: 30,
                    ),
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: date.value,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2050),
                      );
                      if (pickedDate != null) {
                        date.value = pickedDate;
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
