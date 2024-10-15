import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
final class SettingPage extends StatelessWidget {
  const SettingPage({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SettingPage'),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
