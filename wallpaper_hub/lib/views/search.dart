import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_hub/data/data.dart';
import 'package:wallpaper_hub/model/wallpaper_model.dart';
import 'package:wallpaper_hub/theme/theme_provider.dart';
import 'package:wallpaper_hub/widgets/widgets.dart';
import 'package:http/http.dart' as http;

class Search extends StatefulWidget {
  
  final String searchQuery ;
  Search({required this.searchQuery});


  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

    TextEditingController _searchController = TextEditingController();
    List<WallpaperModel> wallpapers = [];

    getSearchWallpapers( String query) async {
    var response = await http.get(
        Uri.parse(
          "https://api.pexels.com/v1/search?query=$query&per_page=80&page=1",
        ),
        headers: {'Authorization': apiKey});

    // print(response.body.toString());

    Map<String, dynamic> jsonData = jsonDecode(response.body);
    wallpapers.clear();
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
    getSearchWallpapers(widget.searchQuery);
    super.initState();
    _searchController.text = widget.searchQuery;
  }

  @override
  Widget build(BuildContext context) {

    final themeChange = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: brandName(context),
        actions: [
          SizedBox(width: 50,)
        ],
        // elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // SizedBox(height: 16,),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      // color: Color(0xfff5f8fd)
                      color: themeChange.darkTheme ? Color.fromARGB(255, 29, 39, 38): Color.fromARGB(255, 208, 214, 224) 
                      ),
                      
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: 
                          TextStyle(color: themeChange.darkTheme ? Colors.white : Colors.black),
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
                          getSearchWallpapers(_searchController.text);
                        },
                        child: Container(child: Icon(Icons.search, color: themeChange.darkTheme ? Colors.white60 : Colors.black54,)),
                      )
                    ],
                  ),
                  
                ),
                SizedBox(height: 16,),
                wallpaperList(wallpapers: wallpapers, context: context)
            ],
          ),
        ),
      ),
    );
  }
}