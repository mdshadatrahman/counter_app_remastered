import 'package:counter_remastered/core/theme/app_theme.dart';
import 'package:counter_remastered/presentation/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRouter.counter,
      debugShowCheckedModeBanner: false,
    );
  }
}
