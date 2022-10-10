import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:wallpaper_app/fullscreen.dart';
import 'package:wallpaper_app/wllpaper_provider.dart';

class WallpaperScreen extends StatefulWidget {
  const WallpaperScreen({super.key});

  @override
  State<WallpaperScreen> createState() => _WallpaperScreenState();
}

class _WallpaperScreenState extends State<WallpaperScreen> {

  List images = [];
  int page = 1;

  @override
  void initState() {
    super.initState();
    fetchapi();
  }

  Future<void> fetchapi() async {
   await http.get(Uri.parse('https://api.pexels.com/v1/curated?per_page=80',),
    headers: {'Authorization' : '563492ad6f9170000100000194a944f205cc47c7a3dda9e9b699246b'}).then((value) {
      Map result = jsonDecode(value.body);

      Provider.of<WallpaperProvider>(context, listen: false).getImages(result);

      setState(() {
        images = result['photos'];
      });
      print(images);
    });
  }

  loadmore() async { 
    // setState(() {
    //   page = page + 1;
    // });

  // Provider.of<WallpaperProvider>(context, listen: false).loadPage(); 

    String url = 'https://api.pexels.com/v1/curated?per_page=80&page=$page';
    // String url = 'https://api.pexels.com/v1/curated?per_page=80&page=' + page.toString();
    await http.get(Uri.parse(url),
    headers: {
      'Authorization' : 
        '563492ad6f9170000100000194a944f205cc47c7a3dda9e9b699246b'
        }).then((value) {
      Map result = jsonDecode(value.body);

      Provider.of<WallpaperProvider>(context, listen: false).getAllImages(result);

      setState(() {
        images.addAll(result['photos']);
      });    
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<WallpaperProvider>(builder: (context, wallpaperProvider, child) {
        return Column(
          children: [
            Expanded(
              child: Container(
                child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 2,
                    crossAxisCount: 3,
                    childAspectRatio: 2/3,
                    mainAxisSpacing: 2
                  ), 
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FullScreen(
                          imageUrl: images[index]['src']['large2x']
                        )));
                      },
                      child: Container(
                        color: Colors.white,
                        child: Image.network(images[index]['src']['tiny'],
                        fit: BoxFit.cover,)
                      ),
                    );
                  },),
              )
            ),
            InkWell(
              onTap: () {
                loadmore();
              },
              child: Container(
                height: 60,
                width: double.infinity,
                color: Colors.black,
                child:const Center(
                  child:  Text('Load more', 
                  style: TextStyle(
                    fontSize: 20, 
                    color: Colors.white),),
                ),
              ),
            )
          ],
        );
  }),
    );
  }
}