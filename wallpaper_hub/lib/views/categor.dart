import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wallpaper_hub/data/data.dart';
import 'package:wallpaper_hub/model/wallpaper_model.dart';
import 'package:wallpaper_hub/widgets/widgets.dart';

class Categories extends StatefulWidget {

  final String categoriesName ;
  Categories({required this.categoriesName});  

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> 

{

  List<WallpaperModel> wallpapers = [];

  getSearchWallpapers( String query) async {
    var response = await http.get(
        Uri.parse(
          "https://api.pexels.com/v1/search?query=$query&per_page=80&page=1",
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
    getSearchWallpapers(widget.categoriesName);
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // iconTheme: IconThemeData(color: Colors.black),
        // backgroundColor: Colors.white,
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
                // SizedBox(height: 5,),
                wallpaperList(wallpapers: wallpapers, context: context)
            ],
          ),
        ),
      ),
    );
  }
}