import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayOutDesign(),
    );
  }
}

class LayOutDesign extends StatefulWidget {
  const LayOutDesign({Key? key}) : super(key: key);

  @override
  State<LayOutDesign> createState() => _LayOutDesign();
}

class _LayOutDesign extends State<LayOutDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.menu),
        title: const Text(
          "Telegram",
          textAlign: TextAlign.center,
        ),
        actions: const [
          Icon(Icons.search_sharp, size: 30),
        ],
      ),
      body: ListView(
        children: [
          _listItem(
              name: 'Amazon shop',
              image:
                  "https://download.logo.wine/logo/Amazon_Prime/Amazon_Prime-Logo.wine.png"),
          _listItem(
              name: 'Family man',
              image:
                  "https://i.gadgets360cdn.com/large/family-man-poster-full_1567494930434.jpg"),
          _listItem(
              name: 'Kgf',
              image:
                  "https://www.cinespot.net/gallery/d/3521033-1/kgf+chapter+2+logo+english.JPG"),
          _listItem(
              name: 'RRR',
              image:
                  "https://static.wikia.nocookie.net/logopedia/images/1/16/RRR_Telugu_logo.png/revision/latest/scale-to-width-down/300?cb=20220312214921"),
          _listItem(
              name: 'Mirzapur',
              image: "https://wallpapercave.com/wp/wp7787787.jpg"),
          _listItem(
              name: 'Gangubai kathiyawadi',
              image:
                  "https://www.pinkvilla.com/imageresize/aliabhattgangubailookkkohleyeschokermanpuccc.png?width=752&format=webp&t=pvorg"),
          _listItem(
              name: 'Heropanti',
              image:
                  "https://upload.wikimedia.org/wikipedia/en/0/0d/Heropanti_Poster.jpg"),
          _listItem(
              name: 'kabhi khushi kabhi gam',
              image: "https://i.ytimg.com/vi/e4ByeSq0oZU/maxresdefault.jpg"),
          _listItem(
              name: 'Aarya',
              image:
                  "https://m.media-amazon.com/images/M/MV5BNzY1NDE2MWQtNzJlOC00MGZiLTkxN2YtMTQ5YWVkMTA2MGU5XkEyXkFqcGdeQXVyMTE0MDk1NjA1._V1_FMjpg_UX1000_.jpg"),
          _listItem(
              name: 'Total dhamal',
              image:
                  "https://m.media-amazon.com/images/M/MV5BZjEwZWQyYmItMTU0OC00ZTRiLWE0MDUtZmU0MGZmMjZhMThhXkEyXkFqcGdeQXVyNTA2OTUxNzY@._V1_.jpg"),
          _listItem(
              name: 'marjaavaan',
              image: "https://wallpapercave.com/wp/wp5567122.jpg"),
          _listItem(
              name: 'Ramaiya vastavaya',
              image:
                  "https://m.media-amazon.com/images/M/MV5BMjI0MTI1ODYyNl5BMl5BanBnXkFtZTcwMTM2NzM4OQ@@._V1_.jpg"),
        ],
      ),
    );
  }

  Widget _listItem({String? name, String? image}) {
    return Card(
      // padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        dense: true,
        onTap: () => ("$name pressed"),
        leading: CircleAvatar(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(300),
            child: Image.network(
              '$image',
              fit: BoxFit.fitHeight,
              height: 500,
            ),
          ),
        ),
        title: Text(
          "$name",
          style: const TextStyle(fontSize: 25),
        ),
        trailing: const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(Icons.archive_rounded),
        ),
      ),
    );
  }
}
