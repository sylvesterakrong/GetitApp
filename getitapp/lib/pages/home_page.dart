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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 20),
        child: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              IconButton(
                color: Colors.grey,
                onPressed: () {},
                icon: const Icon(Icons.dehaze),
                iconSize: 30,
              ),
              Center(
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(110, 245, 245, 245),
                    borderRadius: BorderRadius.circular(5),
                    //contentPadding: EdgeInsets.all(20),
                  ),
                  child: TextField(
                    //controller: _searchController,
                    onChanged: (context) {},
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 1, 10, 0),
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      hintText: ' Search...',
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      backgroundColor: Colors.black,

      body: ListView(

          // children: [
          //   Container(
          //     height: 350,
          //     color: Colors.grey,
          //   ),
          //   const SizedBox(
          //     height: 5,
          //   ),
          //   Container(
          //     height: 350,
          //     color: Colors.grey[200],
          //   ),
          // ],
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
