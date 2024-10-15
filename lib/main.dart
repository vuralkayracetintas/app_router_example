import 'package:app_router_example/core/function.dart';
import 'package:app_router_example/core/get_it/get_it.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  setupGetIt();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppFunction.appRouter.config(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
