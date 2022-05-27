import 'package:event_book/application/providers/event_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../application/providers/theme_provider.dart';
import '../../../widgets/theme_section.dart';

class EventSearch extends StatelessWidget {
  const EventSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (ctx, provider, child) {
      return Container(
        margin: const EdgeInsets.all(10),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: provider.searchBackground,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: const [
            SearchIconSection(),
            SearchSection(),
            GridSection(),
            ThemeSection(),
          ],
        ),
      );
    });
  }
}

class SearchIconSection extends StatelessWidget {
  const SearchIconSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Consumer<ThemeProvider>(builder: (ctx, provider, child) {
        return Icon(
          Icons.search,
          color: provider.iconColor,
          size: 25,
        );
      }),
    );
  }
}

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Consumer<ThemeProvider>(builder: (ctx, provider, child) {
        return TextField(
          style: const TextStyle(fontSize: 18),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search your event',
              hintStyle: TextStyle(color: provider.searchTextColor)),
        );
      }),
    );
  }
}

class GridSection extends StatelessWidget {
  const GridSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<EventListProvider>(builder: (ctx, listProvider, child) {
      return Consumer<ThemeProvider>(builder: (ctx, themeProvider, child) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
            child: Icon(
              listProvider.isGridView
                  ? Icons.view_list_outlined
                  : Icons.grid_view_outlined,
              size: 25,
              color: themeProvider.iconColor,
            ),
            onTap: () => listProvider.setGridView(),
          ),
        );
      });
    });
  }
}
