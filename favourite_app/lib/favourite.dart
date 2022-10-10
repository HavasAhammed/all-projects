import 'package:favourite_app/provider/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavouriteProvider>(context);
    final words = provider.words;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites'),
      ),
      body: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index){
          final word = words[index];
          return ListTile(
            title: Text(word),
            trailing: IconButton(
              onPressed: (){
                provider.toggleFavourite(word);
              }, 
              icon: provider.isExist(word)
              ? const Icon(Icons.favorite, color: Colors.red,)
              : const Icon(Icons.favorite_border),
              ),
          );
      }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          provider.clearFavourite();
          },
        label: const Text('clear')
    )
    );
  }
}