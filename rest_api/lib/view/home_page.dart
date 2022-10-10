import 'package:flutter/material.dart';
import 'package:rest_api/models/post.dart';
import 'package:rest_api/services/remote_services.dart';

class HomePage extends StatefulWidget {
   HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Post>?  posts;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async{
    posts = await RemoteServices().getPosts();
    if(posts != null){
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
        centerTitle: true,
      ),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: posts?.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blueGrey
                    ),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(posts![index].title, 
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 24, 
                          fontWeight: FontWeight.bold),
                          ),
                          Text(posts![index].body ?? '', 
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },),
          replacement: const Center(child: CircularProgressIndicator(),
          ),
      ),
    );
  }
}