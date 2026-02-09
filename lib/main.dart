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
          Expanded(
            // Expanded ব্যবহার করা হয়েছে যাতে GridView অবশিষ্ট জায়গা বুঝে নেয়
            //must need gridDelegate, itemBuilder, itemCount
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Column(children: [Text("Sadd")]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
