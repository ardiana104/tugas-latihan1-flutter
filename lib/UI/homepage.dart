import 'package:ardisimahasiswa/UI/mahasiswaPage.dart';
import 'package:flutter/material.dart';

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
        title: Text("Home"),
      ),
      body: Center(
        child: Text("Home Page"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 156, 231, 231),
        currentIndex: 0,
        onTap: (i) {
          switch (i) {
            case 0:
              Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (BuildContext contect) => HomePage()));
              break;
            case 1:
              Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (BuildContext contect) => MahasiswaPage()));
              break;
            default:
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: ("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.group_add_rounded), label: ("Mahasiswa")),
        ],
      ),
    );
  }
}
