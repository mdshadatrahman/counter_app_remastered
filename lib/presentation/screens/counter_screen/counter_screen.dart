import 'package:counter_remastered/core/constants/strings.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Center(
          child: Text(
            Strings.counterScreenText,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontSize: 20,
                ),
          ),
        ),
      ),
    );
  }
}
