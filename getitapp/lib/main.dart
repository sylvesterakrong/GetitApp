import 'package:flutter/material.dart';
import 'package:getitapp/pages/home_page.dart';
import 'package:getitapp/pages/mylibrary_page.dart';
import 'package:getitapp/pages/mystore_page.dart';
import 'package:getitapp/pages/novels_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,

    initialRoute: '/homepage',

    routes: {
      '/homepage' : (context) => const HomePage(),
      '/novelspage' : (context) => const NovelsPage(),
      '/mylibrarypage' : (context) => const MyLibraryPage(),
      '/mystorepage' : (context) => const MyStorePage(),

    },
      
    );
  }
}
