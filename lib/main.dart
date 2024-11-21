import 'package:flutter/material.dart';
import 'package:cars_ms/auth/login_or_register.dart';
import 'package:cars_ms/models/insurance_options.dart';
import 'package:cars_ms/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    // multi provider
    MultiProvider(
        providers: [
          // theme provider
          ChangeNotifierProvider(create: (context) => ThemeProvider()),

          // Insurance provider
          ChangeNotifierProvider(create: (context) => InsuranceOptions()),
        ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
