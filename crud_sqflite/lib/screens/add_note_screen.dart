import 'package:crud_sqflite/database/database.dart';
import 'package:crud_sqflite/models/note_model.dart';
import 'package:crud_sqflite/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

class AddNotescreen extends StatefulWidget {
  final Note? note;
  final Function? updateNoteList;

  AddNotescreen({this.note, this.updateNoteList});

  @override
  State<AddNotescreen> createState() => _AddNotescreenState();
}

class _AddNotescreenState extends State<AddNotescreen> {

  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _priority = 'Low';
  DateTime _date = DateTime.now();
  String btnText = "Add Note";
  String titleText = "Add Note";

  TextEditingController _dateController = TextEditingController();

  final DateFormat _dateFormatter = DateFormat('MMM dd, yyyy');

  final List<String> _priorities = ['Low','Medium','High'];

  @override
  void initState() {
    super.initState();
    
    if(widget.note != null){
      _title = widget.note!.title!;
      _date = widget.note!.date!;
      _priority = widget.note!.priority!;

      setState(() {
        btnText = " Update Note";
        titleText = "Update Note";
      });
    }
    else{
      setState(() {
        btnText = " Add Note";
        titleText = "Add Note";
      });
    }

    _dateController.text = _dateFormatter.format(_date);
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }


  _handleDatePicker() async{
    final DateTime? date = await showDatePicker(
    context: context, 
    initialDate: _date, 
    firstDate: DateTime(2000), 
    lastDate: DateTime(2100)
    );
    if(date != null && date != _date){
      setState(() {
      _date = date;  
      });
      _dateController.text = _dateFormatter.format(date);
    }
  }

  _delete(){
    DatabaseHelper.instance.deleteNote(widget.note!.id!);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
    widget.updateNoteList!();
  }

  _submit(){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      print('$_title, $_date, $_priority');

      Note note = Note(title: _title, date: _date, priority: _priority);

      if(widget.note == null){
        note.status = 0;
        DatabaseHelper.instance.insertNote(note);

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
      }
      else{
        note.id = widget.note!.id;
        note.status = widget.note!.status;
        DatabaseHelper.instance.updateNote(note);

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
      }

      widget.updateNoteList!();
    }
  }

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: (() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()))),
                child: Icon(
                  Icons.arrow_back,
                  size: 30.0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(height: 20.0,),
              Text(
                titleText,
                style: TextStyle(color: Theme.of(context).primaryColor,
                fontSize: 40.0,
                fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0,),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: TextFormField(
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        labelText: 'Title',
                        labelStyle: TextStyle(fontSize: 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          )
                      ),
                      validator: (input) =>
                      input!.trim().isEmpty ? 'Please enter a note title' : null,
                      onSaved: (input) => _title = input!,
                      initialValue: _title,
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: TextFormField(
                      readOnly: true,
                      controller: _dateController,
                      style: TextStyle(fontSize: 18.0),
                      onTap: _handleDatePicker,
                      decoration: InputDecoration(
                        labelText: 'Date',
                        labelStyle: TextStyle(fontSize: 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),)
                      ),
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: DropdownButtonFormField(
                        isDense: true,
                        icon: Icon(Icons.arrow_drop_down_circle),
                        iconSize: 22.0,
                        iconEnabledColor: Theme.of(context).primaryColor,
                        items: _priorities.map((String _priority){
                          return DropdownMenuItem(
                            value: _priority,
                            child: Text(
                              _priority,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),  
                              )
                              );
                        }).toList(),
                        style: TextStyle(fontSize: 18.0),
                        decoration: InputDecoration(
                          labelText: 'Piority',
                          labelStyle: TextStyle(fontSize: 18.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )
                        ),
                        value: _priority, 
                        validator: (input) => _priority == null ? 'Please select a priority level' : null,
                        onChanged: ( value) { 
                          setState(() {
                            _priority = value.toString();
                          });
                         },
                        ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 60.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: ElevatedButton(
                    onPressed: _submit,
                    child: Text(
                      btnText,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                widget.note != null ? Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 60.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: ElevatedButton(
                    child: Text('Delete Note',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                    ),
                    ),
                    onPressed: (){
                      showDialog(context: context,
                      builder: (BuildContext context){
                        return confirm();
                      });
                    },
                  ),
                ): SizedBox.shrink()
                ],
                ))
            ],
          ),),
      ),
    );
  }

  Widget confirm(){
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)
      ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: [Container(
          height: 250,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
            child: Column(
              children: [
                Text('Are ou sure?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                SizedBox(height: 10,),
                Text('Do you really want to delete this record? This process cannot be undone.',style: TextStyle(fontSize: 18),textAlign: TextAlign.center),
                // SizedBox(height: 3,),
                // Text('This process cannot be undone.',style: TextStyle(fontSize: 18),textAlign: TextAlign.center),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancel',style: TextStyle(color: Colors.white),
                    ),
                    ),
                    SizedBox(width: 20,),
                    ElevatedButton(
                      onPressed: _delete,
                    child: Text('Delete',style: TextStyle(color: Colors.white),
                    ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const Positioned(
          child: CircleAvatar(
            backgroundColor: Colors.redAccent,
            radius: 40,
            child: Icon(Icons.delete, size: 30, color: Colors.white,),
          ),
          top: -40,
          )
        ],

      ),


    );
  }
}