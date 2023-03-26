import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'helper/helperHomePage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MaterialApp(
      //   title: 'My App',
      //   initialRoute: '/',
      //   routes: {
      //     '/': (context) => StreamBuilder<User?>(
      //         stream: FirebaseAuth.instance.authStateChanges(),
      //         builder: (context, snapshot) {
      //           if (snapshot.hasData) {
      //             return HomePage();
      //           } else {
      //             LoginScreen();
      //           }
      //           return LoginScreen();
      //         }),
      //   },
      // ),

      home: helperHomePage(),
    );
  }
}
