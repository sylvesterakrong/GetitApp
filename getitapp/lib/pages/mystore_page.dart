import 'package:flutter/material.dart';
import 'package:getitapp/components/bottomnavbar.dart';

class MyStorePage extends StatefulWidget {
  const MyStorePage({super.key});

  @override
  State<MyStorePage> createState() => _MyStorePageState();
}

class _MyStorePageState extends State<MyStorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("S T O R E"),
      ),
      body: ListView(
        children: [
          Container(
            height: 350,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 350,
            color: Colors.grey[200],
          ),
        ],
      ),

      //bottom navigator
      bottomNavigationBar: ButtomNavBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/homepage');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/novelspage');
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, '/mylibrarypage');
          } else if (index == 3) {
            //Navigator.pushReplacementNamed(context, '/mystorepage');
          }
        },
      ),
    );
  }
}
