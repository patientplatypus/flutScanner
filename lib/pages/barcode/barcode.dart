
// import 'package:flutter/material.dart';


// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:barcode_scan/barcode_scan.dart';


// class Qrtaker extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Second Screen"),
//       ),
//       body: new Center(
//         child: new RaisedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: new Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
import 'dart:async';

import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Barcodetaker extends StatefulWidget {
  @override
  _BarcodetakerState createState() => new _BarcodetakerState();
}

class _BarcodetakerState extends State<Barcodetaker> {
  String barcode = "";

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Barcode Scanner Example'),
          ),
          body: new Center(
            child: new Column(
              children: <Widget>[
                new Container(
                  child: new MaterialButton(
                      onPressed: scan, child: new Text("Scan")),
                  padding: const EdgeInsets.all(8.0),
                ),
                new Text(barcode),
              ],
            ),
          )),
    );
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException{
      setState(() => this.barcode = 'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}