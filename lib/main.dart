import 'package:counter_remastered/core/theme/app_theme.dart';
import 'package:counter_remastered/logic/cubit/theme_cubit.dart';
import 'package:counter_remastered/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: const CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({
    super.key,
  });

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangePlatformBrightness() {
    context.read<ThemeCubit>().updateAppTheme();
    super.didChangePlatformBrightness();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: context.select((ThemeCubit themeCubit) => themeCubit.state.themeMode),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRouter.counter,
      debugShowCheckedModeBanner: false,
    );
  }
}
