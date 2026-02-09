import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

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
        title: Text("MeetSoc"),
        leading: Icon(Icons.usb),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.near_me_rounded)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child:
          //লিস্ট ভিউ বিল্ডার এর আগে অবশ্যই এক্সপেন্ড ব্যবহার করতে হবে
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: EdgeInsetsGeometry.all(20),
                  child: Container(
                    color: Colors.cyanAccent,
                    height: 80,
                    width: double.infinity,
                    child: ListTile(
                      title: Text("Adnan Khan"),
                      subtitle: Text("Villain Hacker"),
                      leading: Icon(Icons.twenty_two_mp),
                      trailing: Icon(Icons.call),
                    ),
                  ),
                ),
              );
            },
          ),)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {

          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
