import 'package:ardisimahasiswa/Models/mahasiswa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailMahasiswa extends StatefulWidget {
  const DetailMahasiswa({required this.mahasiswa});
  final Mahasiswa mahasiswa;

  @override
  State<DetailMahasiswa> createState() => _DetailMahasiswaState();
}

class _DetailMahasiswaState extends State<DetailMahasiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.mahasiswa.nama),
        ),
        body: Container(
          width: double.infinity,
          child: ListView(
            children: [
              Image.asset(widget.mahasiswa.foto),
              Container(
                padding: EdgeInsets.all(5),
                decoration: new BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                )),
                child: Text(
                  widget.mahasiswa.nim,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
