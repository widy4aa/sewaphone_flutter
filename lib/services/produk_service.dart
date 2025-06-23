import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../constants.dart';

class ProdukService {
  static Future<List<dynamic>> fetchAllProduk() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    if (token == null) {
      throw Exception('Token tidak ditemukan, silakan login ulang.');
    }
    print('[DEBUG] JWT Token dipakai: Bearer $token');
    final response = await http.get(
      Uri.parse('$baseUrl/api/produk'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data is List) {
        return data;
      } else if (data is Map && data['data'] is List) {
        return data['data'];
      } else {
        throw Exception('Format data tidak dikenali');
      }
    } else {
      print('[DEBUG] Status: ${response.statusCode}');
      print('[DEBUG] Response body: ${response.body}');
      throw Exception('Gagal memuat data produk: ${response.body}');
    }
  }
}
