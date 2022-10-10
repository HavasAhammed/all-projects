import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}










// import 'dart:convert';
// import 'dart:async';
// // import 'package:fetch_album_api/album_mdel.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp( MyApp());
// }

// class MyApp extends StatelessWidget {
  
//     @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: DataFromApi(),
//     );
//   }
// }

// class DataFromApi extends StatefulWidget {
  

//   @override
//   State<DataFromApi> createState() => _DataFromApiState();
// }

// class _DataFromApiState extends State<DataFromApi> {

//   getUserData() async {
//   // var response = await http.get(Uri.https('jsonplaceholder.typicode.com','users'));
//   var response = await http.get(Uri.https('jsonplaceholder.typicode.com', 'albums'));

//   var jsonData = jsonDecode(response.body);

//   List<User> users = [];

//   for (var u in jsonData){
//     // User user = User(u['name'], u['email'], u['username']);
//     User user = User(u['id'], u['title']);
//     users.add(user);
//   }
//   print(users.length);
//   return users;
// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // title: Text('User Data'),
//         title: Text('Albums'),
//       ),
//       body: Container(
//         child: Card(
//           child: FutureBuilder(
//             future: getUserData(),
//             builder: (context, snapshot){
//               if(snapshot.data == null){
//                 return Container(
//                   child: Center(
//                     child: Text('Loading...'),
//                   ),
//                 );
//               } else {
//                 return ListView.builder( itemCount: snapshot.data.length,
//                 itemBuilder: (context, i){
//                   return ListTile(
//                     // title: Text(snapshot.data[i].name),
//                     title: Text(snapshot.data[i].id.toString(  )),
//                     // subtitle: Text(snapshot.data[i].username),
//                     subtitle: Text(snapshot.data[i].title),
//                     // trailing: Text(snapshot.data[i].email),

//                   );
//                 });
//               }
//             },
//           ),
//         ),
//       )
//       );
//       // body: Container(
//       //   child: Card(
//       //     child: FutureBuilder(
//       //       future: fetchAlbum(),
//       //       builder: (context, snapshot){
//       //         if (snapshot.data == null){
//       //           return Container(
//       //             child: Center(
//       //               child: Text('Loading...'),
//       //             ),
//       //           );
//       //         } else {
//       //           return ListView.builder(
//       //             itemCount: snapshot.data!.length,
//       //             itemBuilder: (context, i){
//       //               return ListTile(
//       //                 title: Text(snapshot.data![i].title),
//       //                 subtitle: Text(snapshot.data![i].id),
//       //               );
//       //             });
//       //         }
//       //       }
//       //     ),
//       //   ),
//       // ),
    
//   }
// }

// class User{

//   // final String name, email, username;
//   final int id;
//   final String title;
//   // User(this.email, this.name, this.username);
//   User(this.id, this.title);

// }

//   // late Future<Album> futureAlbum;

//   //  fetchAlbum() async {
//   // var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/'));

//   // var jsonData = jsonDecode(response.body);

//   // List<Album> albums = [];

//   // for (var a in jsonData){
//   //   Album album = Album(a['id'], a['title']);
//   //   albums.add(album);
//   // }


//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   super.initState();
//   //   futureAlbum = fetchAlbum();
//   // }

// //  Scaffold(
// //         appBar: AppBar(
// //           title: const Text('Fetch Data Example'),
// //         ),
// //         body: 
// //         // ListView.builder(
// //         //   // itemCount: 10,
// //         //   itemBuilder: (context, index) {
// //         //     return 
// //             Center(
// //               child: FutureBuilder<Album>(
// //               future: futureAlbum,
// //               builder: (context, snapshot){
//                 // if(snapshot.hasData){
//                 //   return ListView.builder(
//                 //     itemCount: snapshot.data.length,
//                 //     itemBuilder: (context, index) {
//                 //       return Text(snapshot.data!.title);
//                 //     });
                     
// //                 }else if(snapshot.hasError){
// //                   return Text('${snapshot.error}');
// //                 }
        
// //                 return const CircularProgressIndicator();
// //               },
// //               ),
// //             )
// //     ));
// //           }
        
// //   }

// // }


// //   @override
// //   Widget build(BuildContext context) {
// //     // TODO: implement build
// //     throw UnimplementedError();
// //   }
// // }

// //   @override
// //   Widget build(BuildContext context) {
// //     // TODO: implement build
// //     throw UnimplementedError();
// //   }
