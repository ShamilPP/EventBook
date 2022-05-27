import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/providers/theme_provider.dart';

class ThemeSection extends StatelessWidget {
  const ThemeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (ctx, provider, child) {
      return Padding(
        padding: const EdgeInsets.only(right: 10),
        child: InkWell(
          child: Icon(
            provider.isDarkTheme
                ? Icons.light_mode_outlined
                : Icons.dark_mode_outlined,
            size: 25,
            color: provider.iconColor,
          ),
          onTap: () => provider.setThemeMode(),
        ),
      );
    });
  }
}
