import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

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
      body: 
      // Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // children: [
        //   Container(
        //     padding: EdgeInsets.all(15),
        //     child: Text('Notifications',
        //     style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 20,
        //       fontWeight: FontWeight.bold),),
        //   ),
          ListView.separated(
            itemBuilder: (ctx,index){
              return ListTile(title: Text('PERSON $index'),
              subtitle: Text('Message:Heavy Traffic'),
              trailing: Text('1$index:00 PM'),
              );
            }, 
            separatorBuilder: (ctx,index){
              return Divider();
            }, 
            itemCount: 50,),          
        // ],
      // ),
    );
  }
}