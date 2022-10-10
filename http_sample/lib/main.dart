import 'package:flutter/material.dart';
import 'package:http_sample/apis.dart';
import 'package:http_sample/sample_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: SampleProvider(),
        )
      ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenHome(),
    )
    );
  }
}

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  final _numberInputControlleer = TextEditingController();

  String resultText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SampleProvider>(builder: (context, sampleProvider, child) {
        return Stack(
          children: 
            [
              Container(
                alignment: Alignment.center,
                height: double.infinity,
                width: double.infinity,
                decoration:const  BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors:  [
                      Color.fromARGB(90, 243, 9, 9),
                      Color.fromARGB(120, 240, 7, 7),
                      Color.fromARGB(190, 241, 11, 11),
                      Color.fromARGB(223, 241, 6, 6),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
      
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Numerica Factos',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RobotoMono'
                        ),)
                      ],
                    ),
                    const SizedBox(height: 110,),
                    Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: 
                        TextField(
                          controller: _numberInputControlleer,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.drive_file_rename_outline_outlined,
                            color: Colors.red,),
                              border: InputBorder.none, 
                              hintText: 'Enter a Number'),
                        ),
                        ),
                 
      
                    SizedBox(height: 90,),
      
                    MaterialButton(
                      focusColor: Colors.black,
                      focusElevation: 10.0,
                      hoverColor: Color.fromARGB(123, 216, 38, 25),
                        child: const Text('Get Response',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),),
                        color: Colors.white,
                        textColor: Colors.red,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.all(25),
                        elevation: 20,
                        minWidth: 750,
                        height: 20,
                        onPressed: () async {
                          final _number = _numberInputControlleer.text;
        
                           final _result = await getNumberFact(number: _number);
                          //  print(_result.text);

                          resultText = _result.text?? 'No text found';
                          
                          Provider.of<SampleProvider>(context, listen: false).changevalue(resultText);

                          //  setState(() {
                          //   _resultText = _result.text?? 'No text found';
                          //  });
                        }),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(sampleProvider.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'RobotoMono',
                          ),),
                        )
                  ,
              ]  ),
              )
            
        ]
        );
   } ),

      
    );
  }
}
