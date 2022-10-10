import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http_sample2/apis.dart';
import 'package:http_sample2/number_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: NumberProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  //  HomePage({super.key});

  final _inputController = TextEditingController();

  String resultText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<NumberProvider>(builder: (context, numberProvider, child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _inputController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    hintText: 'Enter a Number', 
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  final number = _inputController.text;
                  final result = await getNumberFact(number: number);
                  resultText = result.text?? 'Number Not found';
                  Provider.of<NumberProvider>(context, listen: false).changeValue(resultText);
                  // print(_result.text);
                },
                child: const Text('Get Result'),
              ),
              const SizedBox(height: 20,),
              Text(numberProvider.name)
            ],
          ),
        );
      }
      ),
    );
  }
}
