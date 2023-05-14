import 'dart:convert';

class KategoriBarangModel {
  final String nama;
  final String id;
  KategoriBarangModel({
    required this.nama,
    required this.id,
  });

  KategoriBarangModel copyWith({
    String? nama,
    String? id,
  }) {
    return KategoriBarangModel(
      nama: nama ?? this.nama,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      //'nama_kategori_barang' harus sama dengan nama kolom di database
      'nama_kategori_barang': nama,
      'id_kategori_barang': id,
    };
  }

  factory KategoriBarangModel.fromMap(Map<String, dynamic> map) {
    return KategoriBarangModel(
      nama: map['nama'] ?? '',
      id: map['id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory KategoriBarangModel.fromJson(String source) =>
      KategoriBarangModel.fromMap(json.decode(source));

  @override
  String toString() => 'Kategori_Barang_Controller(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is KategoriBarangModel && other.nama == nama;
    return other is KategoriBarangModel && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
