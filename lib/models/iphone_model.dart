class IPhoneModel {
  final int id;
  final String namaProduk;
  final String img;
  final int hargaSewa;
  final String keterangan;
  final String warna;
  final bool casing;
  final bool charger;
  final String status;
  final bool statusSewa;

  IPhoneModel({
    required this.id,
    required this.namaProduk,
    required this.img,
    required this.hargaSewa,
    required this.keterangan,
    required this.warna,
    required this.casing,
    required this.charger,
    required this.status,
    required this.statusSewa,
  });

  factory IPhoneModel.fromJson(Map<String, dynamic> json) {
    return IPhoneModel(
      id: json['id'],
      namaProduk: json['nama_produk'],
      img: json['img'],
      hargaSewa: json['harga_sewa'],
      keterangan: json['keterangan'],
      warna: json['warna'],
      casing: json['casing'] ?? false,
      charger: json['charger'] ?? false,
      status: json['status'] ?? '',
      statusSewa: json['status_sewa'] ?? false,
    );
  }
}
