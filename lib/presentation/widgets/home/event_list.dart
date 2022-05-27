import 'package:event_book/application/models/event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../application/providers/event_list_provider.dart';
import 'event_tile.dart';

class EventList extends StatelessWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<EventListProvider>(builder: (ctx, provider, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: provider.isGridView ? 2 : 1,
              childAspectRatio: provider.isGridView ? 1 : 3.5,
            ),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (ctx, index) {
              return EventTile(
                event: Event(
                  title: "My event title ${index + 1}",
                  desc: "My event description ${index + 1}",
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
