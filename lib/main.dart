import 'package:expify/core/theme/light.dart';
import 'package:expify/features/on_boarding/transactins_page.dart';
import 'package:flutter/material.dart';
import 'core/navigation/app_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router(
    //   title: 'Flutter Demo',
    //   theme: lightTheme,
    //   routerConfig: appRouter,
    // );
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: TransactionPage(),
    );
  }
}
