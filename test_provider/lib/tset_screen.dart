import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/test_provider.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text('Test Provider', style: 
        TextStyle(color: Colors.black),),
      ),
      body: Consumer<TestProvider>(builder: (context, testProvider, _) {
        return Container(
          color: Colors.greenAccent,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.search,
                        color: Colors.green,),
                        border: InputBorder.none,
                        hintText: 'Type here'
                      ),
                      onChanged: (value) {
                        Provider.of<TestProvider>(context, listen: false).changeValue(value);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(testProvider.name),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}