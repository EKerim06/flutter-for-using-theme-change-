import 'package:change_theme_dark_and_light_riverpod/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeState>((ref) {
  return ThemeNotifier();
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('Chance dark theme to light theme with riverpod'),
        ),
        body: Center(
          child: Switch(
            value: ref.read(themeProvider).isSwitch ?? false,
            onChanged: (value) {
              ref.watch(themeProvider.notifier).changeSwicthwithTheme(value);
            },
          ),
        ));
  }
}
