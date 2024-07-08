import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ventspace/auth/auth.dart';
import 'package:ventspace/auth/login_or_register.dart';
import 'package:ventspace/firebase_options.dart';
import 'package:ventspace/pages/home_page.dart';
import 'package:ventspace/pages/profile_page.dart';
import 'package:ventspace/pages/users_page.dart';
import 'package:ventspace/theme/dark_mode.dart';
import 'package:ventspace/theme/light_mode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      theme: lightMode,
      darkTheme: darkMode,
      routes: {
        '/login_register_page':(context) => LoginOrRegister(),
        '/home_page':(context) => const HomePage(),
        '/profile_page':(context) => ProfilePage(),
        '/users_page':(context) => const UsersPage(),
      },
    );
  }
}