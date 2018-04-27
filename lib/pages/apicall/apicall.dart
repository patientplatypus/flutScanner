
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:http/http.dart' as http;
import 'dart:convert';


class Apicall extends StatelessWidget {

  final String testytest = "";

  callApi(){
    var url = 'http://localhost:3000/apicall';
    http.post(url,  headers: {'Content-type': 'application/json'}, body: JSON.encode({'testytest': testytest})).then((response) {
      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
    }).catchError((onError){
      print("Oh no there was an error: " + onError);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Api Call Screen"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            callApi();
          },
          child: new Text('Call Api'),
        ),
      ),
    );
  }
}

// saveContact() async {

//     print("inside saveContact");

//     var url = 'https://f1utt3rshi.herokuapp.com/saveContact';

//     http.post(url,  headers: {'Content-type': 'application/json'}, body: JSON.encode({'name': _name.text, 'email': _email.text, 'message': _message.text})).then((response) {
//       print("Response status: ${response.statusCode}");
//       print("Response body: ${response.body}");
//     }).catchError((onError){
//       print("Oh no there was an error: " + onError);
//     });

// }

// new FlatButton(
//               onPressed: () {
//                 saveContact();
//                 Navigator.pop(context);

//                 //TODO: Handle save
//               },
//               child: new Text('SAVE',
//                   style: Theme
//                       .of(context)
//                       .textTheme
//                       .subhead
//                       .copyWith(color: Colors.white, fontWeight: FontWeight.bold))),
// ],