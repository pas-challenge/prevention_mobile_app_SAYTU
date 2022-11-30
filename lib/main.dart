import 'package:flutter/material.dart';
import 'package:flutter_healthcare_app/src/config/route.dart';
import 'package:flutter_healthcare_app/src/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saytu',
      theme: AppTheme.lightTheme,
      routes: Routes.getRoute(),
        onGenerateRoute: (settings) => Routes.onGenerateRoute(settings),
      debugShowCheckedModeBanner: false,
      initialRoute: "HomePage",
    );
  }
}

