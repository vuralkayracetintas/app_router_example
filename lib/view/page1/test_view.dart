import 'package:app_router_example/core/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
final class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView>
    with AutoRouteAwareStateMixin<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestView'),
      ),
      body: Center(
        child: Column(children: [
          Text('Hello, TestView!'),
          ElevatedButton(
              onPressed: () {
                context.router.push(DemoRoute());
              },
              child: Text('Go to DemoView'))
        ]),
      ),
    );
  }
}

@RoutePage()
final class DemoView extends StatelessWidget {
  const DemoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DemoView'),
      ),
      body: Center(
        child: Text('Hello, DemoView!'),
      ),
    );
  }
}
