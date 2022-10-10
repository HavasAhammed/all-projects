// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:wallpaper_hub/data/data.dart';
import 'package:wallpaper_hub/model/categories_model.dart';
import 'package:wallpaper_hub/model/wallpaper_model.dart';
// import 'package:wallpaper_hub/theme/style.dart';
import 'package:wallpaper_hub/theme/theme_provider.dart';
import 'package:wallpaper_hub/views/categor.dart';
// import 'package:wallpaper_hub/views/image_view.dart';
import 'package:wallpaper_hub/views/search.dart';
import 'package:wallpaper_hub/widgets/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<CategoriesModel> categories = [];

  List<WallpaperModel> wallpapers = [];

  TextEditingController _searchController = TextEditingController();

  getTrendingWallpapers() async {
    var response = await http.get(
        Uri.parse(
          "https://api.pexels.com/v1/curated?per_page=80&page=1",
        ),
        headers: {'Authorization': apiKey});

    // print(response.body.toString());

    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData['photos'].forEach((element) {
      // print(element);

      WallpaperModel wallpaperModel = new WallpaperModel();
      wallpaperModel = WallpaperModel.fromMap(element);
      wallpapers.add(wallpaperModel);
    });

    setState(() {});

    print(jsonData);
  }

  @override
  void initState() {
    getTrendingWallpapers();
    categories = getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<ThemeProvider>(context);
    return Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
              IconButton(
                onPressed: () {
                  themeChange.darkTheme = !themeChange.darkTheme;
                }, 
              icon: themeChange.darkTheme ? 
              Icon(Icons.nights_stay) : 
              Icon(Icons.wb_sunny))

            // Switch(
            //     value: themeChange.darkTheme,
            //     onChanged: (bool value) {
            //       themeChange.darkTheme = value;
            //     })
          ],
          // backgroundColor: Colors.white,
          title: brandName(context),
          // elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                // SizedBox(
                //   height:,
                // ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color:themeChange.darkTheme? Color.fromARGB(255, 29, 39, 38): Color.fromARGB(255, 208, 214, 224)
                      // ?Color.fromARGB(200, 178, 223, 219)
                      ),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          controller: _searchController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'search wallpaper',
                            // hintStyle: TextStyle(color: Colors.black54)
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Search(
                                        searchQuery: _searchController.text,
                                      )));
                        },
                        child: Container(child: Icon(Icons.search)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 80,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      // wallpapers[index].src.portrait;
                      return CategoriesTile(
                        title: categories[index].categoriesName.toString(),
                        imageUrl: categories[index].imageUrl,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                wallpaperList(wallpapers: wallpapers, context: context)
              ],
            ),
          ),
        )
        // }),
        );
  }
}

class CategoriesTile extends StatelessWidget {
  //  CategoriesTile({super.key});

  final String? imageUrl;
  final String title;
  CategoriesTile({this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Categories(categoriesName: title)));
      },
      child: Container(
        margin: EdgeInsets.only(right: 4),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imageUrl.toString(),
                height: 50,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(8),
              ),
              // color: Colors.black26,
              alignment: Alignment.center,
              height: 50,
              width: 100,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
