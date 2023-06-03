import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:toolmato/screens/check.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toolmato',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const ChecarPage(),
    );
  }
}
