import 'package:flutter/material.dart';
import 'utils/constants/theme.dart';
import 'views/login/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FINDEX',
      theme: CustomTheme.lightTheme,
      home: const LoginView(),
    );
  }
}