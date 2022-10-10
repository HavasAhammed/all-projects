import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCreatePage extends StatefulWidget {
  QRCreatePage({Key? key}) : super(key: key);

  @override
  State<QRCreatePage> createState() => _QRCreatePageState();
}

class _QRCreatePageState extends State<QRCreatePage> {

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('QR Code Generator',
        style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        color: Colors.black87,
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QrImage(
                  data: controller.text,
                size: 200,
                backgroundColor: Colors.white,
                ),
                SizedBox(height: 40,),
                buildTextField(context),
              ],
            ),
          ),
        ),
      ),

    );
  }

  Widget buildTextField(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        hintText: 'Enter the data',
        hintStyle: TextStyle(
          color: Colors.grey
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.greenAccent,
          ),
        ),
        suffixIcon: IconButton(
          color: Colors.greenAccent,
          icon: Icon(Icons.done, size: 30,),
          onPressed: ()=> setState(() {}),
        )
      ),
    );
  }
}