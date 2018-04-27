

import 'package:flutter/material.dart';

import '../barcode/barcode.dart';
import '../apicall/apicall.dart';
// import '../../helpers/helper1.dart';


class Home extends StatelessWidget {

  CenteredNavigation(context){
    return new Container(
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new RaisedButton(
            child: new Text('Barcode Scanner'),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Barcodetaker()),
              );
            },
          ),
          new Padding(
            padding: const EdgeInsets.all(15.0),
          ),
          new RaisedButton(
            child: new Text('Api Call Nav'),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Apicall()),
              );
            },
          ),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home Screen'),
      ),
      body: new Stack(
        children: [
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  new Container(
                    decoration: new BoxDecoration(color: Colors.blue),
                    padding: const EdgeInsets.all(10.0),
                    margin: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    child: new Text(
                      'Brinks Cash Security',
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ]
          )
          ,new Positioned(
            bottom: 20.0, 
            right: 0.0,
            left: 0.0,
            child: new Center(
              child: CenteredNavigation(context)
            ) 
          )
        ]
      )
    );
  }
}


// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('First Screen'),
//       ),
//       body: new Container(
//         child: new Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             new Container(
//               padding: const EdgeInsets.only(bottom: 8.0),
//               child: new Text(
//                 'Oeschinen Lake Campground',
//                 style: new TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ), 
//           ]
//         )
//       )
//     );
//   }
// }



// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('First Screen'),
//       ),
//       body: new Center(
//         child: new RaisedButton(
//           child: new Text('Launch new screen'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               new MaterialPageRoute(builder: (context) => new Qrtaker()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }