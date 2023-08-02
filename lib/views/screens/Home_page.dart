import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/controllers/homecontrollers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(builder: (context, pro, _) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Youtube'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(34)),
                labelText: "Search Your video",
                prefixIcon: Icon(Icons.search),
              ),
              onSubmitted: (val) {
                pro.Search(searchQuery: val);
              },
            ),
            SizedBox(height: 16.0),
            if (pro.isLoading)
              CircularProgressIndicator()
            else if (pro.searchResults.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: pro.searchResults.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(pro.searchResults[index].title),
                      subtitle: Text(pro.searchResults[index].author),
                      leading: Image.network(
                          pro.searchResults[index].thumbnails.mediumResUrl),
                      onTap: () {
                        Navigator.of(context).pushNamed('videoplayer',
                            arguments: pro.searchResults[index].id.toString());
                      },
                    );
                  },
                ),
              ),
          ]),
        ),
      );
    });
  }
}
