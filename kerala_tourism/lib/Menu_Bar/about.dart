import 'package:flutter/material.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('KERALA TOURISM',
        style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
                  ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Text('About',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text('About',
            style: TextStyle(color: Colors.grey),),
          ),
        ],
      ),
    );
  }
}