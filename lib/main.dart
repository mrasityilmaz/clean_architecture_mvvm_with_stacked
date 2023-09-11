import 'package:flutter/material.dart';
import 'package:my_coding_setup/features/home/home_view.dart';
import 'package:my_coding_setup/injection/injection_container.dart';
import 'package:my_coding_setup/shared/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///
  /// Configure Dependencies for the GetIt Service Locator
  ///
  await configureDependencies(defaultEnv: 'real');
  runApp(const AppMain());
}

final class AppMain extends StatelessWidget {
  const AppMain({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().themeData,
      home: const HomeView(),
    );
  }
}
