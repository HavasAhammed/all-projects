// import 'dart:convert';
// import 'dart:async';
// import 'package:http/http.dart' as http;

//  fetchAlbum() async {
//   var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/'));

//   var jsonData = jsonDecode(response.body);

//   List<Album> albums = [];

//   for (var a in jsonData){
//     Album album = Album(a['id'], a['title']);
//     albums.add(album);
//   }

//   if(response.statusCode == 200){
//     return Album.fromJson(jsonDecode(response.body));
//   } else {
//     throw Exception('Failed to load Album');
//   }
// }

// class Album{

//   final int id;
//   final String title;

//   Album(a, a, {
//     required this.id,
//     required this.title
//   });

//   factory Album.fromJson(Map<String, dynamic> json){
//     return Album(
//       userId: json['userId'], 
//       id: json['id'], 
//       title: json['title']
//       );
//   }
// }