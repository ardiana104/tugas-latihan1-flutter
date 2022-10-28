import 'package:ardisimahasiswa/Models/mahasiswa.dart';
import 'package:ardisimahasiswa/Services/apiStatic.dart';
import 'package:ardisimahasiswa/UI/detilamahasiswa.dart';
import 'package:ardisimahasiswa/UI/homepage.dart';
import 'package:flutter/material.dart';

class MahasiswaPage extends StatefulWidget {
  const MahasiswaPage({super.key});

  @override
  State<MahasiswaPage> createState() => _MahasiswaPageState();
}

class _MahasiswaPageState extends State<MahasiswaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Mahasiswa"),
      ),
      body: FutureBuilder<List<Mahasiswa>>(
          future: ApiStatic.getMahasiswa(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              List<Mahasiswa> listMahasiswa = snapshot.data!;
              return Container(
                padding: EdgeInsets.all(5),
                child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) => Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    new MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            DetailMahasiswa(
                                              mahasiswa: listMahasiswa[index],
                                            )));
                              },
                              child: Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.only(top: 10),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.lightGreenAccent)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      listMahasiswa[index].foto,
                                      width: 50,
                                    ),
                                    Column(
                                      children: [
                                        Text(listMahasiswa[index].nama),
                                        Text(
                                          listMahasiswa[index].namaOrganisasi,
                                          style: TextStyle(fontSize: 8),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
              );
            }
          }),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        backgroundColor: Color.fromARGB(255, 156, 231, 231),
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.group_add_rounded), label: ("Mahasiswa")),
        ],
      ),
    );
  }
}
