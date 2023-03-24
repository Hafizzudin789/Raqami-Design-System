import 'package:design_system/example_ui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'design_system/themes/raqami_themes.dart';
import 'design_system/themes/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(),
      builder: (context, theme) {
        return GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Raqami Design system',
            theme: RaqamiThemes().lightTheme,
            darkTheme: RaqamiThemes().darkTheme,
            themeMode: context.watch<ThemeProvider>().themeMode,
            home: const ExampleView(),
          ),
        );
      },
    );
  }
}