import 'package:english_words/english_words.dart';
import 'package:favourite_app/favourite.dart';
import 'package:favourite_app/provider/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final words = nouns.take(50).toList();
    final provider = Provider.of<FavouriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('English Words'),
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
          Navigator.push(context, MaterialPageRoute(builder: ((context) => const FavouritePage())));
        }, 
        label: const Text('Favourites'),
        ),
    );
  }
}