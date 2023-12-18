import 'package:flutter/material.dart';
import 'package:getitapp/components/bottomnavbar.dart';

class NovelsPage extends StatefulWidget {
  const NovelsPage({super.key});

  @override
  State<NovelsPage> createState() => _NovelsPageState();
}

class _NovelsPageState extends State<NovelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("N O V E L"),
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
            //Navigator.pushReplacementNamed(context, '/novelspage');
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
