import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class FetchData extends StatefulWidget {
  FetchData({Key? key}) : super(key: key);

  @override
  State<FetchData> createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {

  final url = "https://jsonplaceholder.typicode.com/posts";

  //fetch data

  var _postJson = [];

  void fetchpost() async {
    
    try{
    final response = await get(Uri.parse(url));//read
    final jsonData = jsonDecode(response.body) as List;

    setState(() {
      _postJson = jsonData;
    });


  }
  catch(err){}
  }

  @override
  void initState() {
    super.initState();
    fetchpost();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _postJson.length,
          itemBuilder: (context, i) {
            final post = _postJson[i];
            return Text("Title: ${post["title"]} \n Body: ${post["body"]}\n\n ");
          }),
    );
  }
}