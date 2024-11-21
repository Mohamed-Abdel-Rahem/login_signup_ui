import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test/firebase_options.dart';
import 'package:test/screen/accountInfo.dart';
import 'package:test/screen/homePage.dart';
import 'package:test/screen/login.dart';
import 'package:test/screen/reg.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  String initialRoute = LoginScreen.id;
  try {
    runApp(Test(
      initialRoute: initialRoute,
    ));
  } catch (e) {
    debugPrint('Firebase initialization error: $e');
  }
}

class Test extends StatelessWidget {
  const Test({super.key, required this.initialRoute});
  final String initialRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: initialRoute,
      routes: {
        Homepage.id: (context) => const Homepage(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegScreen.id: (context) => const RegScreen(),
        Accountinfo.id: (context) => const Accountinfo(),
      },
    );
  }
}
