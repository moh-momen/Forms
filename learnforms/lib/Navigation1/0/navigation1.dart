import 'package:flutter/material.dart';

import '../../constants.dart';
import 'anonymous_routes.dart';

class NavigationOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(""),
            Container(
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: RaisedButton(
                color: Colors.orange,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AnonymousRoutes();
                  }));
                },
                child:
                    Text(" Anonymous routes", style: TextStyle(fontSize: 25)),
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 100,
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {},
                child: Text("  Anonymous routes", style: kTextStyle),
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 100,
              child: RaisedButton(
                color: Colors.teal,
                onPressed: () {},
                child: Text("Advanced named routes with onGenerateRoute",
                    style: kTextStyle),
              ),
            )
          ],
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Text("This is page1 using "),
    //       Center(
    //         child: FlatButton(
    //           child: Text("Go back "),
    //           onPressed: () {
    //             Navigator.pop(context);
    //           },
    //         ),
    //       ),
    //     ],
    //   )
    // );
  }
}
