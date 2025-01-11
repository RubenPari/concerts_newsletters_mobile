import "package:concerts_newsletters_mobile/models/artist.dart";
import "package:flutter/material.dart";

class ArtistManagementScreen extends StatefulWidget {
  const ArtistManagementScreen({super.key});

  @override
  ArtistManagementScreenState createState() => ArtistManagementScreenState();
}

class ArtistManagementScreenState extends State<ArtistManagementScreen> {
  List<Artist> artists = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gestione Artisti')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(artists[index].imageUrl),
              ),
              title: Text(artists[index].name),
              subtitle: Text(artists[index].genre),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () => _editArtist(artists[index]),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => _deleteArtist(artists[index].id),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addArtist,
        child: Icon(Icons.add),
      ),
    );
  }

  void _editArtist(Artist artist) {
    // TODO: Implement the edit artist functionality
  }

  void _deleteArtist(int artistId) {
    // TODO: Implement the delete artist functionality
  }

  void _addArtist() {
    // TODO: Implement the add artist functionality
  }
}
