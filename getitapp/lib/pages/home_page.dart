import 'package:flutter/material.dart';
import 'package:getitapp/components/bottomnavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("H O M E"),
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
            //Navigator.pushReplacementNamed(context, '/homepage');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/novelspage');
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, '/mylibrarypage');
          } else if (index == 3) {
            Navigator.pushReplacementNamed(context, '/mystorepage');
          }
        },
      ),
    );
  }
}
