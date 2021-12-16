import 'package:flutter/material.dart';
import 'package:twitter_test_flutter/pages/login_page.dart';
import 'package:twitter_test_flutter/service/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  LogOut();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter',
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => LoginPage(),
      },
    );
  }
}

void LogOut() async {
  FirebaseService service = new FirebaseService();
  try {
    await service.signOutFromGoogle();
  } catch (e) {
    if (e is FirebaseAuthException) {
      print(e.message!);
    }
  }
}
