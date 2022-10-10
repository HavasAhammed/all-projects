import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PostData extends StatelessWidget {


  final url = "https://jsonplaceholder.typicode.com/posts";

  void postData () async {

    try{
    final response = await post(Uri.parse(url), body: { //create
    "title": "Anything",
    "body": "Post Body",
    "UserId": "1"
    } 
    
  );

  print(response.body);

  }
  catch(err){

  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Center(
          child: ElevatedButton(
            onPressed: postData,
            child: Text('Send Post'),
          ),
        ),
    );
  }
}