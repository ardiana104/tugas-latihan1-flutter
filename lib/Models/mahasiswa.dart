class Mahasiswa {
  Mahasiswa({
    required this.idpeserta,
    required this.nama,
    required this.nim,
    required this.alamat,
    required this.telp,
    required this.foto,
    required this.status,
    required this.idOrganisasiMahasiswa,
    required this.namaOrganisasi,
    required this.createdAt,
    required this.updatedAt,
  });
  int idpeserta;
  String nama;
  String nim;
  String alamat;
  String foto;
  String telp;
  int idOrganisasiMahasiswa;
  String status;
  String namaOrganisasi;
  String updatedAt;
  String createdAt;

  factory Mahasiswa.fromJson(Map<String, dynamic> json) => Mahasiswa(
        idpeserta: json["idpeserta"],
        nama: json["nama"].toString(),
        nim: json["nim"].toString(),
        alamat: json["alamat"].toString(),
        telp: json["telp"].toString(),
        foto: json["foto"].toString(),
        status: json["status"].toString(),
        idOrganisasiMahasiswa: json["idOrganisasiMahasiswa"],
        namaOrganisasi: json["namaOrganisasi"].toString(),
        createdAt: json["createdAt"].toString(),
        updatedAt: json["updatedAt"].toString(),
      );
}
