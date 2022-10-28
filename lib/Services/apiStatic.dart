import 'package:ardisimahasiswa/Models/mahasiswa.dart';

class ApiStatic {
  static Future<List<Mahasiswa>> getMahasiswa() async {
    List<Mahasiswa> mahasiswa = [];
    for (var i = 1; i < 8; i++) {
      mahasiswa.add(Mahasiswa(
        idpeserta: i,
        nama: "Nama Mahasiswa$i",
        nim: "2255015014" + i.toString(),
        alamat: "Alamat",
        foto: "assets/appimages/ardi.jpg",
        telp: "5014",
        idOrganisasiMahasiswa: 1,
        status: "Y",
        namaOrganisasi: "Himpunan Mahasiswa Jurusan",
        updatedAt: "",
        createdAt: "",
      ));
    }
    return mahasiswa;
  }
}
