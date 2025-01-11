import 'package:concerts_newsletters_mobile/models/artist.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ConcertListScreen extends StatelessWidget {
  const ConcertListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Artist> artists = [
      // TODO: Initialize with some sample data or fetch from a data source
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Concerti')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final artist = artists[index];
          final hasNoConcerts = artist.concerts.isEmpty;

          return ExpansionTile(
            title: Text(artist.name),
            subtitle: Text(artist.genre),
            backgroundColor:
                hasNoConcerts ? Colors.red[100] : Colors.green[100],
            children: artist.concerts
                .map((concert) => ListTile(
                      title: Text(concert.city),
                      subtitle:
                          Text(DateFormat('dd/MM/yyyy').format(concert.date)),
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}
