import 'package:flutter/material.dart';
import 'package:flutter_2/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).themeData(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Material App Bar'),
        ),
        body:  Center(
          child: FilledButton.tonal(
            onPressed: (){},
            child: const Text('Click Me'),
          ),
        ),
      ),
    );
  }
}