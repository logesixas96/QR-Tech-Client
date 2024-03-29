import 'package:firebase_core/firebase_core.dart';
import 'package:android_qr_system/screens/login.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'QR System Login',
        theme: ThemeData(
            primarySwatch: Colors.red,
            fontFamily: 'Rokkitt',
            textTheme: Theme.of(context)
                .textTheme
                .apply(fontSizeFactor: 1.1, fontSizeDelta: 2.0, fontFamily: 'Rokkitt')),
        home: const LoginScreen());
  }
}
