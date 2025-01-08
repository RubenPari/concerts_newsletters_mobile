import 'package:concerts_newsletters_mobile/models/concert.dart';

class Artist {
  final int id;
  final String name;
  final String genre;
  final String imageUrl;
  final List<Concert> concerts;

  Artist(
      {required this.id,
      required this.name,
      required this.genre,
      required this.imageUrl,
      this.concerts = const []});

  Object? toJson() {
    return {
      'id': id,
      'name': name,
      'genre': genre,
      'imageUrl': imageUrl,
      'concerts': concerts.map((concert) => concert.toJson()).toList(),
    };
  }
}
