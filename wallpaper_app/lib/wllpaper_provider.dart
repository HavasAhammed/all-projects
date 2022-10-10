import 'package:flutter/cupertino.dart';
import 'package:wallpaper_app/wallpaper.dart';
// import 'package:wallpaper_app/wallpaper.dart';

class WallpaperProvider extends ChangeNotifier{

  WallpaperScreen wallpaperScreen = WallpaperScreen();

  int page = 1;

  List images = [];
  

   loadPage() async {
    page = page + 1;
    notifyListeners();
  }

   Future<void> getImages(Map results) async {
    // final apiImages = WallpaperScreen.fetchapi();
    // final apiImages = await wallpaperScreen.fetchapi();
    images = results['photos'];
    notifyListeners();
  }

   getAllImages(Map results) async{
    images.addAll(results['photos']);
    notifyListeners();
  }

}