import 'package:app_router_example/core/function.dart';
import 'package:app_router_example/core/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
final class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
      ),
      body: Center(
          child: Column(
        children: [
          const Text('Hello, HomeView!'),
          TextField(
            controller: _controller,
          ),
          ElevatedButton(
            onPressed: () {
              // context.router.push(const SettingRoute());
              AppFunction.appRouter.push(SettingRoute(title: _controller.text));
            },
            child: const Text('Button'),
          )
        ],
      )),
    );
  }
}
