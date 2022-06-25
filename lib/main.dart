import 'package:flutter/material.dart';
import 'package:red_todo_app/pages/grid_page.dart';
import 'package:red_todo_app/pages/home_page.dart';
import 'package:red_todo_app/pages/search_page.dart';
import 'package:red_todo_app/pages/splash_page.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyHomeTask());
}

class MyHomeTask extends StatelessWidget {
  const MyHomeTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home UI',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        HomePage.id: (context) => const HomePage(),
        SearchPage.id: (context) => const SearchPage(),
        GridPage.id: (context) => const GridPage(),
      },
    );
  }
}


