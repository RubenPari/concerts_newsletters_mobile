import 'package:concerts_newsletters_mobile/models/artist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static const baseUrl = 'YOUR_API_URL';

  Future<List<Artist>> getArtists() async {
    final response = await http.get(Uri.parse('$baseUrl/artists'));
    // TODO: Implementare la logica di parsing
    return [];
  }

  Future<void> addArtist(Artist artist) async {
    await http.post(
      Uri.parse('$baseUrl/artists'),
      body: json.encode(artist.toJson()),
    );
  }

  Future<void> deleteArtist(int id) async {
    await http.delete(Uri.parse('$baseUrl/artists/$id'));
  }
}
