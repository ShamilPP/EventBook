import 'package:event_book/application/providers/event_list_provider.dart';
import 'package:event_book/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'application/providers/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => EventListProvider()),
      ],
      child: Consumer<ThemeProvider>(builder: (ctx, provider, child) {
        return MaterialApp(
          title: "Event book",
          theme: ThemeData(
            brightness: Brightness.light,
            scaffoldBackgroundColor: Colors.grey[100],
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.grey[900],
          ),
          themeMode: provider.themeMode,
          home: const SplashScreen(),
        );
      }),
    );
  }
}
