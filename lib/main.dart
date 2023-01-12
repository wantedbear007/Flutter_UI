import 'package:flutter/material.dart';
import 'package:rich/name.dart';
import 'package:rich/staaa.dart';

void main() {
  runApp(Hello());
}

// Widget MaterialApp extends
class Hello extends StatefulWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  int number = 12;

  int currentPage = 0;

  // List<Widget> listy = [
  //   Container(
  //     child: Row(children: [Text("This is: "), Text()],),
  //   ),
  //   Container(
  //     child: Text("lol"),
  //   ),
  // ];

  void getData() {
    number += 1;
  }

  List<Widget> pages = [const Name(), const Staaa()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(title: Text("Hello world")),
        backgroundColor: Colors.amber,
        // bottomNavigationBar: BottomNavigationBar(
        //   onTap: (index) {
        //     print(index.toString() + "Hello");
        //     setState(() {
        //       currentPage = index;
        //     });
        //
        //   },
        //   // items: const [
        //   //   BottomNavigationBarItem(
        //   //     icon: Icon(Icons.abc_outlined),
        //   //     label: "Home",
        //   //   ),
        //   //   BottomNavigationBarItem(
        //   //     icon: Icon(Icons.kayaking),
        //   //     label: "Explore",
        //   //   )
        //   // ],
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     setState(() => getData());
        //   },
        // ),
        body: Center(
         child: const Staaa(),
        ),
      ),
    );
  }
}
