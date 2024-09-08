import 'package:fig_to_flutter/pages/details_page.dart';
import 'package:fig_to_flutter/pages/home_page.dart';
import 'package:fig_to_flutter/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: SignUpPage.routeName,
      routes: {
        SignUpPage.routeName: (_) => const SignUpPage(),
        HomePage.routeName: (_) => const HomePage(),
        DetailsPage.routeName: (_) => const DetailsPage(),
      },
      home: const SignUpPage(),
    );
  }
}
